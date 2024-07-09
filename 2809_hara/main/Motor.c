//###########################################################################
//
// FILE		: Motor.c
//
// TITLE	: Motor c file.
//
// Author	: Yuk Keun Ho
//
// Company	: Maze & Hz
//
//###########################################################################
// $Release Date: 2011.10.16 $
//###########################################################################

#include "DSP280x_Device.h"
#include "DSP280x_Examples.h"   // DSP280x Examples Include File
#include "Main.h"
#include "Motor.h"

#define ENCODER_RESOLUTION		1024
#define ENCODER_RESOLUTION_x2	2048

#define MAX_I_TERM		_IQ17(5.0)
#define MIN_I_TERM		-MAX_I_TERM //_IQ17(-5.0)

#define MAX_PID_OUT		_IQ17(9000)//9000
#define MIN_PID_OUT		-MAX_PID_OUT //_IQ17(-9000)//9000

#define PWM_CONVERT		_IQ30(0.22222222)// pwm 2kHz == pid_output_maxmin * pwm_convert

#define TIME_TICK 		_IQ30(0.0005)

#define PULSE_TO_DIST	_IQ30(0.0092038847273138)
// 바퀴지름 *PHI[75.398223686155037723103441198708]/(512*4)/기어비(4.)
#define PULSE_TO_VEL	_IQ26(18.407769454627695)	
// 바퀴지름 *PHI[75.398223686155037723103441198708]/(512*4)/기어비(4.)/0.0005

enum RunType {
	STR = 0x00,

	TR45 = 0x01,
	TR90 = 0x02,
	TR135 = 0x04,
	TR180 = 0x08,

	TL45 = 0x10,
	TL90 = 0x20,
	TL135 = 0x40,
	TL180 = 0x80
};

static QEPVariable *_sp_r_qep = &g_s_right_motor.s_qep;
static QEPVariable *_sp_l_qep = &g_s_left_motor.s_qep;

static DistanceVariable *_sp_r_dist = &g_s_right_motor.s_dist;
static DistanceVariable *_sp_l_dist = &g_s_left_motor.s_dist;

static SpeedVariable *_sp_r_speed = &g_s_right_motor.s_speed;
static SpeedVariable *_sp_l_speed = &g_s_left_motor.s_speed;

static AdjustPositionVariable *_sp_r_msc = &g_s_right_motor.s_adj;
static AdjustPositionVariable *_sp_l_msc = &g_s_left_motor.s_adj;

static void _init_motor_structure(MotorVariable *sp_motor)
{
	memset((void *)sp_motor, 0x00, sizeof(MotorVariable));

	sp_motor->kp_q17 = _IQ17(4.5);		// 4.5
	sp_motor->ki_q17 = _IQ17(0.00002);	// 0.0002
	sp_motor->kd_q17 = _IQ17(4.5);		// 4.5

	sp_motor->s_speed.accel_q15 = _IQ15(6500.0);
	sp_motor->s_speed.target_vel_q17 = _IQ17(0.0);
	sp_motor->s_adj.adj_ratio_q17 = _IQ17(1.0);
}

void init_motor(void)
{
	_init_motor_structure(&g_s_right_motor);
	_init_motor_structure(&g_s_left_motor);

	memset((void *)&g_s_cmd_vel, 0x00, sizeof(CommandVelocityVariable));
}

interrupt void motor_timer2_ISR(void)
{
	// QEP값을 받는다
	// save qep sampling value
	_sp_r_qep->sample_u16 = (Uint16)(RightQepRegs.QPOSCNT);
	_sp_l_qep->sample_u16 = (Uint16)(LeftQepRegs.QPOSCNT);

	// initialize qep register to save sampling value
	RightQepRegs.QEPCTL.bit.SWI = 1;
	LeftQepRegs.QEPCTL.bit.SWI = 1;

	// 받은 값을 int16으로 변환한다.
	// transform the sample type to int16
	if(_sp_r_qep->sample_u16 >= ENCODER_RESOLUTION)
		_sp_r_qep->sample_i16 = (int16)_sp_r_qep->sample_u16 - ENCODER_RESOLUTION_x2;
	else 
		_sp_r_qep->sample_i16 = (int16)_sp_r_qep->sample_u16;
	_sp_r_qep->sample_i16 = -_sp_r_qep->sample_i16;

	if(_sp_l_qep->sample_u16 >= ENCODER_RESOLUTION)
		_sp_l_qep->sample_i16 = (int16)_sp_l_qep->sample_u16 - ENCODER_RESOLUTION_x2;
	else
		_sp_l_qep->sample_i16 = (int16)_sp_l_qep->sample_u16;

	// 받은 값을 IQ21으로 변환한다. -> -1024 <= IQ21 < 1024
	// transfrom the sample type to IQ21
	_sp_r_qep->sample_q21 = ((int32)_sp_r_qep->sample_i16) << 21;
	_sp_l_qep->sample_q21 = ((int32)_sp_l_qep->sample_i16) << 21;

	// 한 틱당 거리를 구한다.
	// calculate a tick distance. multiply the sample by distance per a pulse
	_sp_r_dist->tick_q27 = _IQ27mpyIQX(_sp_r_qep->sample_q21, 21, PULSE_TO_DIST, 30);
	_sp_l_dist->tick_q27 = _IQ27mpyIQX(_sp_l_qep->sample_q21, 21, PULSE_TO_DIST, 30);

	// 틱당 거리를 합쳐 현재의 거리를 구한다.
	// calculate moved distance(from start to current). sum all tick
	_sp_r_dist->gone_q17 += (_sp_r_dist->tick_q27 >> 10);
	_sp_l_dist->gone_q17 += (_sp_l_dist->tick_q27 >> 10);

#if 1
	// 사용자가 정해준 거리에 합친 거리를 제거해 남은 거리를 구한다.
	// calculate remainging distance(from current to end). minus gone distance by target distance
	_sp_r_dist->remaining_q17 = _IQ17abs(_sp_r_dist->target_q17 - _sp_r_dist->gone_q17);
	_sp_l_dist->remaining_q17 = _IQ17abs(_sp_l_dist->target_q17 - _sp_l_dist->gone_q17);

	// 펄스당 속도와 QEP를 곱해 현재의 속도를 구한다.
	// calculate current velocity. multiply the sample by velocity per a pulse
	_sp_r_speed->curr_vel_q17 = _IQ17mpyIQX(_sp_r_qep->sample_q21, 21, PULSE_TO_VEL, 26);
	_sp_l_speed->curr_vel_q17 = _IQ17mpyIQX(_sp_l_qep->sample_q21, 21, PULSE_TO_VEL, 26);
	
	// 남은 거리 확인 후 목표 감속 속도 설정
	// if remainging distance over the stop point set then set target velocity to deceleration target velocity
	if(_sp_r_dist->remaining_q17 <= _sp_r_dist->decel_point_q17 && _sp_r_speed->decel_b == ON)
	{
		_sp_r_speed->target_vel_q17 = _sp_r_speed->decel_vel_q17;
	}
	if(_sp_l_dist->remaining_q17 <= _sp_l_dist->decel_point_q17	&& _sp_l_speed->decel_b == ON)
	{
		_sp_l_speed->target_vel_q17 = _sp_l_speed->decel_vel_q17;
	}

	// 가감속
	// calculate next target velocity. accelation or decelaration
	if(_sp_r_speed->target_vel_q17 > _sp_r_speed->next_vel_q17)
	{
		_sp_r_speed->next_vel_q17 += _IQ17mpyIQX(TIME_TICK, 30, _sp_r_speed->accel_q15, 15);
		
		if(_sp_r_speed->target_vel_q17 < _sp_r_speed->next_vel_q17)
			_sp_r_speed->next_vel_q17 = _sp_r_speed->target_vel_q17;
	}
	else if(_sp_r_speed->target_vel_q17 < _sp_r_speed->next_vel_q17)
	{
		_sp_r_speed->next_vel_q17 -= _IQ17mpyIQX(TIME_TICK, 30, _sp_r_speed->accel_q15, 15);
		
		if(_sp_r_speed->target_vel_q17 > _sp_r_speed->next_vel_q17)
			_sp_r_speed->next_vel_q17 = _sp_r_speed->target_vel_q17;
	}
	if(_sp_l_speed->target_vel_q17 > _sp_l_speed->next_vel_q17)
	{
		_sp_l_speed->next_vel_q17 += _IQ17mpyIQX(TIME_TICK, 30, _sp_l_speed->accel_q15, 15);
		
		if(_sp_l_speed->target_vel_q17 < _sp_l_speed->next_vel_q17)
			_sp_l_speed->next_vel_q17 = _sp_l_speed->target_vel_q17;
	}
	else if(_sp_l_speed->target_vel_q17 < _sp_l_speed->next_vel_q17)
	{
		_sp_l_speed->next_vel_q17 -= _IQ17mpyIQX(TIME_TICK, 30, _sp_l_speed->accel_q15, 15);
		
		if(_sp_l_speed->target_vel_q17 > _sp_l_speed->next_vel_q17)
			_sp_l_speed->next_vel_q17 = _sp_l_speed->target_vel_q17;
	}
	
#if 0
	//현재 정지 중인지를 확인.
	if( ( g_s_right_motor.stop_flag_i16 == 1 ) && ( g_s_left_motor.stop_flag_i16 == 1 ) && ( g_s_right_motor.current_velocity_q17 == _IQ17(0.0) ) && ( g_s_left_motor.current_velocity_q17 == _IQ17(0.0) ) )
	{
		gStopcount++;
		if( gStopcount > 3 )
		{
			gMovestate = ON;
			gStopcount = 0;
		}
	}
	else
	{
		gStopcount = 0;
		gMovestate = OFF;
	}
#endif

	// 자세 보정
	if(g_s_flags.adj_pos_b)
	{
		estimate_position_used_input();
		estimate_position_used_sensor();
		adjust_position();
	}

	// 모터 PID
	// motor PID
	g_s_right_motor.err_vel_sum_q17 -= g_s_right_motor.err_vel_q17[3];
	g_s_right_motor.err_vel_q17[3] = g_s_right_motor.err_vel_q17[2];
	g_s_right_motor.err_vel_q17[2] = g_s_right_motor.err_vel_q17[1];
	g_s_right_motor.err_vel_q17[1] = g_s_right_motor.err_vel_q17[0];
	g_s_right_motor.err_vel_q17[0] = _IQ17mpyIQX(_sp_r_speed->next_vel_q17, 17, _sp_r_msc->adj_ratio_q17, 17) - _sp_r_speed->curr_vel_q17;
	g_s_right_motor.err_vel_sum_q17 += g_s_right_motor.err_vel_q17[0];

	g_s_right_motor.proportional_term_q17 = _IQ17mpy(g_s_right_motor.kp_q17, g_s_right_motor.err_vel_q17[0]);
	g_s_right_motor.derivative_term_q17 = _IQ17mpy(g_s_right_motor.kd_q17, ((g_s_right_motor.err_vel_q17[0] - g_s_right_motor.err_vel_q17[3]) + ((g_s_right_motor.err_vel_q17[1] - g_s_right_motor.err_vel_q17[2]) << 1)));
	g_s_right_motor.integral_term_q17 = _IQ17mpy(g_s_right_motor.ki_q17, g_s_right_motor.err_vel_sum_q17);

	if(g_s_right_motor.integral_term_q17 > MAX_I_TERM)			g_s_right_motor.integral_term_q17 = MAX_I_TERM;
	else if(g_s_right_motor.integral_term_q17 < MIN_I_TERM)		g_s_right_motor.integral_term_q17 = MIN_I_TERM;

	g_s_right_motor.pid_output_q17 += g_s_right_motor.proportional_term_q17 + g_s_right_motor.derivative_term_q17 + g_s_right_motor.integral_term_q17;


	g_s_left_motor.err_vel_sum_q17 -= g_s_left_motor.err_vel_q17[3];
	g_s_left_motor.err_vel_q17[3] = g_s_left_motor.err_vel_q17[2];
	g_s_left_motor.err_vel_q17[2] = g_s_left_motor.err_vel_q17[1];
	g_s_left_motor.err_vel_q17[1] = g_s_left_motor.err_vel_q17[0];
	g_s_left_motor.err_vel_q17[0] = _IQ17mpyIQX(_sp_l_speed->next_vel_q17, 17, _sp_l_msc->adj_ratio_q17, 17) - _sp_l_speed->curr_vel_q17;
	g_s_left_motor.err_vel_sum_q17 += g_s_left_motor.err_vel_q17[0];

	g_s_left_motor.proportional_term_q17 = _IQ17mpy(g_s_left_motor.kp_q17,  g_s_left_motor.err_vel_q17[0]);
	g_s_left_motor.derivative_term_q17 = _IQ17mpy(g_s_left_motor.kd_q17, ((g_s_left_motor.err_vel_q17[0] - g_s_left_motor.err_vel_q17[3]) + ((g_s_left_motor.err_vel_q17[1] - g_s_left_motor.err_vel_q17[2]) << 1)));
	g_s_left_motor.integral_term_q17 = _IQ17mpy(g_s_left_motor.ki_q17, g_s_left_motor.err_vel_sum_q17);

	if(g_s_left_motor.integral_term_q17 > MAX_I_TERM)			g_s_left_motor.integral_term_q17 = MAX_I_TERM;
	else if( g_s_left_motor.integral_term_q17 < MIN_I_TERM)		g_s_left_motor.integral_term_q17 = MIN_I_TERM;

	g_s_left_motor.pid_output_q17 += g_s_left_motor.proportional_term_q17 + g_s_left_motor.derivative_term_q17 + g_s_left_motor.integral_term_q17;


	// 
	if(g_s_flags.motor_pwm_b)
	{
		if(g_s_right_motor.pid_output_q17 >= _IQ17(0.0))
		{
			if( g_s_right_motor.pid_output_q17 > MAX_PID_OUT )
				g_s_right_motor.pid_output_q17 = MAX_PID_OUT;
		
			EPwm1Regs.AQCTLA.bit.ZRO = AQ_CLEAR;
			EPwm1Regs.AQCTLB.bit.ZRO = AQ_SET;
			EPwm1Regs.CMPB = (Uint16)(_IQ17mpyIQX(g_s_right_motor.pid_output_q17, 17, PWM_CONVERT, 30) >> 17);
		}
		else
		{
			if(g_s_right_motor.pid_output_q17 < MIN_PID_OUT)
				g_s_right_motor.pid_output_q17 = MIN_PID_OUT;
			g_s_right_motor.pid_output_q17 = -g_s_right_motor.pid_output_q17;

			EPwm1Regs.AQCTLA.bit.ZRO = AQ_SET;
			EPwm1Regs.AQCTLB.bit.ZRO = AQ_CLEAR;
			EPwm1Regs.CMPA.half.CMPA = (Uint16)(_IQ17mpyIQX(g_s_right_motor.pid_output_q17, 17, PWM_CONVERT, 30) >> 17);
		}
		
		if( g_s_left_motor.pid_output_q17 >= _IQ17(0.0) )
		{
			if( g_s_left_motor.pid_output_q17 > MAX_PID_OUT )
				g_s_left_motor.pid_output_q17 = MAX_PID_OUT;
			
			EPwm2Regs.AQCTLA.bit.ZRO = AQ_SET;
			EPwm2Regs.AQCTLB.bit.ZRO = AQ_CLEAR;
			EPwm2Regs.CMPA.half.CMPA = (Uint16)(_IQ17mpyIQX(g_s_left_motor.pid_output_q17, 17, PWM_CONVERT, 30) >> 17);
		}
		else
		{
			if(g_s_left_motor.pid_output_q17 < MIN_PID_OUT )
				g_s_left_motor.pid_output_q17 = MIN_PID_OUT;
			g_s_left_motor.pid_output_q17 = -g_s_left_motor.pid_output_q17;
			
			EPwm2Regs.AQCTLA.bit.ZRO = AQ_CLEAR;
			EPwm2Regs.AQCTLB.bit.ZRO = AQ_SET;
			EPwm2Regs.CMPB = (Uint16)(_IQ17mpyIQX(g_s_left_motor.pid_output_q17, 17, PWM_CONVERT, 30) >> 17);
		}
	}
#endif
	g_timer_500u_u32++;
#if 0
	g_u16motortic++;
	gDiffAdjCnt++;
	g_s_right_motor.U16Tick++;	
	g_s_left_motor.U16Tick++;
	gUserTimeCnt++;
	utimetick++;
#endif
	// initialize motor interrupt flag
	CpuTimer2Regs.TCR.bit.TRB = 1;

	// sensor interrupt start -- sensor shoot
	StartCpuTimer0();
}

// 동작 후 정차
void move_to_stop(_iq17 tar_dist, _iq15 tar_acc, _iq17 tar_vel)
{
	_iq17 curr_vel, dec_dist;

	StopCpuTimer2();

	_sp_l_dist->gone_q17 = _sp_r_dist->gone_q17 = _IQ17(0.0);
	_sp_l_dist->target_q17 = _sp_r_dist->target_q17 = tar_dist;

	curr_vel = (_sp_l_speed->curr_vel_q17 + _sp_r_speed->curr_vel_q17) >> 1;
	_InlineCalcDistNVel(curr_vel, &tar_vel, _IQ17(0.0), tar_dist, &dec_dist, tar_acc);
	
	_sp_l_dist->decel_point_q17 = _sp_r_dist->decel_point_q17 = dec_dist;

	_sp_l_speed->accel_q15 = _sp_r_speed->accel_q15 = tar_acc;	
	_sp_l_speed->target_vel_q17 = _sp_r_speed->target_vel_q17 = tar_vel;
	_sp_l_speed->decel_vel_q17 = _sp_r_speed->decel_vel_q17 = _IQ17(0.0);
	_sp_l_speed->decel_b = _sp_r_speed->decel_b = ON;
	
	StartCpuTimer2();
}

// 동작 후 이어서 동작
void move_to_move(_iq17 tar_dist, _iq15 tar_acc, _iq17 tar_vel, _iq17 dec_vel)
{
	_iq17 curr_vel, dec_dist;
	
	StopCpuTimer2();

	_sp_l_dist->gone_q17 = _sp_r_dist->gone_q17 = _IQ17(0.0);
	_sp_l_dist->target_q17 = _sp_r_dist->target_q17 = tar_dist;

	curr_vel = (_sp_l_speed->curr_vel_q17 + _sp_r_speed->curr_vel_q17) >> 1;
	_InlineCalcDistNVel(curr_vel, &tar_vel, dec_vel, tar_dist, &dec_dist, tar_acc);
	
	_sp_l_dist->decel_point_q17 = _sp_r_dist->decel_point_q17 = dec_dist;

	_sp_l_speed->accel_q15 = _sp_r_speed->accel_q15 = tar_acc;	
	_sp_l_speed->target_vel_q17 = _sp_r_speed->target_vel_q17 = tar_vel;
	_sp_l_speed->decel_vel_q17 = _sp_r_speed->decel_vel_q17 = dec_vel;
	_sp_l_speed->decel_b = _sp_r_speed->decel_b = ON;
	
	StartCpuTimer2();
}

// Turn simulation made by python
// https://colab.research.google.com/drive/1nX95cfM9avqoyKDrgAPEYbWbE7YZhOJ7#scrollTo=FaAzIS9wwqic&line=13&uniqifier=1
void calc_target_velocity_for_turn(_iq17 tar_th, _iq17 tar_rad, _iq15 tar_acc, _iq17 tar_v)
{
	_iq17 tar_vr, tar_vl, abs_diff_vr, abs_diff_vl, rdt, ldt, r_dist, l_dist, temp;

	if(tar_rad < _IQ17(10.0) && tar_rad > _IQ17(-10.0))
	{
		TxPrintf("Target R set is very small, so to be adjust default.\n");
		tar_rad = _IQ17(90.0);
	}

	temp = _IQ17mpy(_IQ17div(tar_v, tar_rad), ROBOT_WIDTH_DIV2);

	// th - left: +, right: -
	if(tar_th >= _IQ17(0.0))
	{
		tar_vr = tar_v + temp;
		tar_vl = tar_v - temp;
	}
	else
	{
		tar_vr = tar_v - temp;
		tar_vl = tar_v + temp;
	}

	abs_diff_vr = tar_vr - _sp_r_speed->curr_vel_q17;
	abs_diff_vl = tar_vl - _sp_l_speed->curr_vel_q17;

	if(abs_diff_vr < _IQ17(0.0)) abs_diff_vr = -abs_diff_vr;
	if(abs_diff_vl < _IQ17(0.0)) abs_diff_vl = -abs_diff_vl;

	temp = _IQ15div(_IQ15(1.0), tar_acc);

	rdt = _IQ17mpyIQX(abs_diff_vr, 17, temp, 15);
	ldt = _IQ17mpyIQX(abs_diff_vl, 17, temp, 15);

	// th - left: +, right: -
	if(tar_th >= _IQ17(0.0))
	{
		_sp_r_speed->target_vel_q17 = tar_vr;
		_sp_l_speed->target_vel_q17 = tar_vl;

		r_dist = _IQ17mpy(rdt, abs_diff_vl) >> 2;
		l_dist = _IQ17mpy(ldt, abs_diff_vl) >> 2;
		
		temp = r_dist + l_dist + (l_dist << 1);

		_sp_r_dist->target_q17 = _IQ17mpy(tar_rad + ROBOT_WIDTH_DIV2, tar_th) + temp;
		_sp_r_dist->target_q17 = _IQ17mpy(tar_rad - ROBOT_WIDTH_DIV2, tar_th) + temp;
	}
	else
	{
		_sp_r_speed->target_vel_q17 = tar_vr;
		_sp_l_speed->target_vel_q17 = tar_vl;

		r_dist = _IQ17mpy(rdt, abs_diff_vr) >> 2;
		l_dist = _IQ17mpy(ldt, abs_diff_vr) >> 2;
		
		temp = l_dist + r_dist + (r_dist << 1);

		_sp_r_dist->target_q17 = _IQ17mpy(tar_rad - ROBOT_WIDTH_DIV2, tar_th) + temp;
		_sp_r_dist->target_q17 = _IQ17mpy(tar_rad + ROBOT_WIDTH_DIV2, tar_th) + temp;
	}
}

// 회전 동작 후 이어서 동작
void turn_and_move(_iq17 tar_th, _iq17 tar_rad, _iq15 tar_acc, _iq17 tar_vel, _iq17 dec_vel)
{
	CommandVelocityVariable cmd_vel;

	StopCpuTimer2();
	

	StartCpuTimer2();
}

/*
// motor_vel = cmd_vel.linear_vel - cmd_vel.angular_vel * robot_width/2 
static inline void _inline_move_to_func(CommandVelocityVariable *p_cmd_vel, _iq17 *p_temp_q17, Uint16 run_type)
{
	// run type : 0(tr45), 1(tr90), 2(tr135), 3(tr180), 4(tl45), 5(tl90), 6(tl135), 7(tl180), 8(str)
	if(run_type == STR)
	{
		p_cmd_vel->angular_q17 = (*p_temp_q17) = _IQ17(0.0);

		g_s_left_motor.user_distance_q17 = g_s_right_motor.user_distance_q17 = BLOCK_WIDTH;
	}
	else
	{
		// if run type is left, angular velocity is nagative number.
		if(run_type < TL45)	// right turn
		{
			p_cmd_vel->angular_q17 = _IQ17div(p_cmd_vel->linear_q17, HALF_BLOCK_WIDTH);
			(*p_temp_q17) = _IQ17mpy(p_cmd_vel->angular_q17, ROBOT_WIDTH_DIV2);

			// th * block_width_half = user_dist_about_robot_mid
			// user_dist_about_robot_mid / 
			if(run_type < TR135)
			{
				if(run_type == TR45)
				{
					g_s_left_motor.user_distance_q17;
					g_s_right_motor.user_distance_q17;
				}
				else	// run type == tr90
				{
				}
			}
			else
			{
				if(run_type == TR135)
				{
				}
				else	// run type == ty 180
				{
				}
			}
		}
		else	// left turn
		{
			p_cmd_vel->angular_q17 = -_IQ17div(p_cmd_vel->linear_q17, HALF_BLOCK_WIDTH);
			(*p_temp_q17) = _IQ17mpy(p_cmd_vel->angular_q17, ROBOT_WIDTH_DIV2);
		}
	}

	g_s_left_motor.distance_sum_q17 = g_s_right_motor.distance_sum_q17 = _IQ17(0.0);
}

void move_to_stop(Uint16 run_type)
{
	CommandVelocityVariable cmd_vel;
	_iq17 q17_temp;

	StopCpuTimer2();
	
	cmd_vel.linear_q17	= _IQ17(0.0);

	_inline_move_to_func(&cmd_vel, &q17_temp, run_type);

	g_s_right_motor.decel_velocity_q17	= g_s_right_motor.user_velocity_q17	= cmd_vel.linear_q17 + q17_temp;
	g_s_left_motor.decel_velocity_q17		= g_s_left_motor.user_velocity_q17	= cmd_vel.linear_q17 - q17_temp;

	StartCpuTimer2();

}

void move_to_move(_iq17 tar_vel, Uint16 run_type, Uint16 restore)
{
	CommandVelocityVariable cmd_vel;
	_iq17 q17_temp;

	StopCpuTimer2();
	
	cmd_vel.linear_q17	= tar_vel;

	_inline_move_to_func(&cmd_vel, &q17_temp, run_type);

	if(restore)
	{
		g_s_right_motor.decel_velocity_q17	= g_s_right_motor.user_velocity_q17;
		g_s_left_motor.decel_velocity_q17		= g_s_left_motor.user_velocity_q17;

		g_s_right_motor.user_velocity_q17		= cmd_vel.linear_q17 + q17_temp;
		g_s_left_motor.user_velocity_q17		= cmd_vel.linear_q17 - q17_temp;
	}
	else
	{
		g_s_right_motor.decel_velocity_q17	= g_s_right_motor.user_velocity_q17	= cmd_vel.linear_q17 + q17_temp;
		g_s_left_motor.decel_velocity_q17		= g_s_left_motor.user_velocity_q17	= cmd_vel.linear_q17 - q17_temp;
	}

	StartCpuTimer2();
}
*/
