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

#define   _MOTOR_

#include "DSP280x_Device.h"
#include "DSP280x_Examples.h"   // DSP280x Examples Include File
#include "Main.h"
#include "Motor.h"

#define MAX_I_TERM		_IQ17(5.0)
#define MIN_I_TERM		-MAX_I_TERM //_IQ17(-5.0)

#define PWM_CONVERT		_IQ30(0.22222222)// pwm 50kHz

#define MAX_PID_OUT		_IQ17(9000)//9000
#define MIN_PID_OUT		-MAX_PID_OUT //_IQ17(-9000)//9000

#define TIME_TICK 		_IQ30(0.0005)

#define PULSE_TO_DIS	_IQ30(0.0092038847273138)
// 바퀴지름 *PHI[75.398223686155037723103441198708]/(512*4)/기어비(4.)
#define PULSE_TO_VEL	_IQ26(18.407769454627695)	
// 바퀴지름 *PHI[75.398223686155037723103441198708]/(512*4)/기어비(4.)/0.0005

#define BLOCK_WIDTH			_IQ17(180.0)
#define HALF_BLOCK_WIDTH	_IQ17(90.0)

#define ROBOT_WIDTH_DIV2	_IQ17(100.0)

#define CALC_DIST(V,W,R)	_IQ17mpy(_IQ17mpy(V, R), W)

enum RunType {
	TR45 = 0,
	TR90,
	TR135,
	TR180,

	TL45,
	TL90,
	TL135,
	TL180,

	STR
};

static void _init_motor_structure(MotorVariable *p_motor)
{
	memset((void *)p_motor, 0x00, sizeof(MotorVariable));

	p_motor->kp_q17 = _IQ17(4.5);		// 4.5
	p_motor->ki_q17 = _IQ17(0.00002);	// 0.0002
	p_motor->kd_q17 = _IQ17(4.5);		// 4.5

	p_motor->accel_u32 = (int32)6500;
	p_motor->user_velocity_q17 = _IQ17(0.0);
}

void init_motor(void)
{
	_init_motor_structure(&g_s_right_motor);
	_init_motor_structure(&g_s_left_motor);

	memset((void *)&g_s_cmd_vel, 0x00, sizeof(CommandVelocity));
}

interrupt void motor_timer2_ISR(void)
{	
	//static int test_cnt = 0;
			
	//QEP값을 받는다
	g_s_right_motor.qep_sample_u16 = (Uint16)(RightQepRegs.QPOSCNT);
	g_s_left_motor.qep_sample_u16 = (Uint16)(LeftQepRegs.QPOSCNT);

	RightQepRegs.QEPCTL.bit.SWI = 1;//initialize position counter
	LeftQepRegs.QEPCTL.bit.SWI = 1;//initialize position counter
#if 1
	//받은 값을 int16으로 변환한다.
	if(g_s_right_motor.qep_sample_u16 > 1023)
		g_s_right_motor.qep_val_i16 = (int16)g_s_right_motor.qep_sample_u16 - 2048;
	else 
		g_s_right_motor.qep_val_i16 = (int16)g_s_right_motor.qep_sample_u16;

	if(g_s_left_motor.qep_sample_u16 > 1023)
		g_s_left_motor.qep_val_i16 = (int16)g_s_left_motor.qep_sample_u16 - 2048;
	else
		g_s_left_motor.qep_val_i16 = (int16)g_s_left_motor.qep_sample_u16;

	//한 틱당 거리를 구한다.
	g_s_right_motor.tick_distance_q27 = _IQ27mpyIQX(((int32)(g_s_right_motor.qep_val_i16) << 21), 21, PULSE_TO_DIS, 30);
	g_s_left_motor.tick_distance_q27 = _IQ27mpyIQX(((int32)(g_s_left_motor.qep_val_i16) << 21), 21, PULSE_TO_DIS, 30);

	//틱당 거리를 합쳐 현재의 거리를 구한다.
	g_s_right_motor.distance_sum_q17 += (g_s_right_motor.tick_distance_q27 >> 10);
	g_s_left_motor.distance_sum_q17 += (g_s_left_motor.tick_distance_q27 >> 10);
#endif
#if 1
	//사용자가 정해준 거리에 합친 거리를 제거해 남은 거리를 구한다.
	g_s_right_motor.remaining_distance_q17 = g_s_right_motor.user_distance_q17 - g_s_right_motor.distance_sum_q17;
	g_s_left_motor.remaining_distance_q17 = g_s_left_motor.user_distance_q17 - g_s_left_motor.distance_sum_q17;

	//펄스당 속도와 QEP를 곱해 현재의 속도를 구한다.
	g_s_right_motor.current_velocity_q17 = _IQ17mpyIQX(((int32)(g_s_right_motor.qep_val_i16) << 21), 21, PULSE_TO_VEL, 26);
	g_s_left_motor.current_velocity_q17 = _IQ17mpyIQX(((int32)(g_s_left_motor.qep_val_i16) << 21), 21, PULSE_TO_VEL, 26);
	
#if 0
	//남은 거리 확인
	if((_IQ17abs(g_s_right_motor.remaining_distance_q17) <= g_s_right_motor.stop_distance_q17) && !(g_s_right_motor.stop_flag_i16))
	{
		g_s_right_motor.user_velocity_q17 = g_s_right_motor.decel_velocity_q17;

		if(g_s_right_motor.decel_velocity_q17 == 0)
			g_s_right_motor.stop_flag_i16 = 1;
		else
			g_s_right_motor.stop_flag_i16 = 2;
	}

	if((_IQ17abs(g_s_left_motor.remaining_distance_q17) <= g_s_left_motor.stop_distance_q17) && !(g_s_left_motor.stop_flag_i16))
	{
		g_s_left_motor.user_velocity_q17 = g_s_left_motor.decel_velocity_q17;

		if(g_s_left_motor.decel_velocity_q17 == 0)
			g_s_left_motor.stop_flag_i16 = 1;
		else
			g_s_left_motor.stop_flag_i16 = 2;
	}
#endif

	//가속
	if(g_s_right_motor.user_velocity_q17 > g_s_right_motor.next_velocity_q17)
	{
		g_s_right_motor.next_velocity_q17 += _IQ17mpyIQX(TIME_TICK, 30, (g_s_right_motor.accel_u32 << 15), 15);
		if(g_s_right_motor.user_velocity_q17 < g_s_right_motor.next_velocity_q17)
			g_s_right_motor.next_velocity_q17 = g_s_right_motor.user_velocity_q17;
	}
	else if(g_s_right_motor.user_velocity_q17 < g_s_right_motor.next_velocity_q17)
	{
		g_s_right_motor.next_velocity_q17 -= _IQ17mpyIQX(TIME_TICK, 30, (g_s_right_motor.accel_u32 << 15), 15);
		if(g_s_right_motor.user_velocity_q17 > g_s_right_motor.next_velocity_q17)
			g_s_right_motor.next_velocity_q17 = g_s_right_motor.user_velocity_q17;
	}

	if(g_s_left_motor.user_velocity_q17 > g_s_left_motor.next_velocity_q17)
	{
		g_s_left_motor.next_velocity_q17 += _IQ17mpyIQX(TIME_TICK, 30, (g_s_left_motor.accel_u32 << 15), 15);
		if(g_s_left_motor.user_velocity_q17 < g_s_left_motor.next_velocity_q17)
			g_s_left_motor.next_velocity_q17 = g_s_left_motor.user_velocity_q17;
	}
	else if(g_s_left_motor.user_velocity_q17 < g_s_left_motor.next_velocity_q17)
	{
		g_s_left_motor.next_velocity_q17 -= _IQ17mpyIQX(TIME_TICK, 30, (g_s_left_motor.accel_u32 << 15), 15);
		if(g_s_left_motor.user_velocity_q17 > g_s_left_motor.next_velocity_q17)
			g_s_left_motor.next_velocity_q17 = g_s_left_motor.user_velocity_q17;
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

	//포지션 PID

	//Position_PID();

	//모터 PID
	g_s_right_motor.err_velocity_sum_q17 -= g_s_right_motor.err_velocity_q17[3];
	g_s_right_motor.err_velocity_q17[3] = g_s_right_motor.err_velocity_q17[2];
	g_s_right_motor.err_velocity_q17[2] = g_s_right_motor.err_velocity_q17[1];
	g_s_right_motor.err_velocity_q17[1] = g_s_right_motor.err_velocity_q17[0];
	g_s_right_motor.err_velocity_q17[0] = _IQ17mpyIQX(g_s_right_motor.next_velocity_q17, 17, g_s_right_motor.pos_adjrate_q26, 26) - g_s_right_motor.current_velocity_q17;
	g_s_right_motor.err_velocity_sum_q17 += g_s_right_motor.err_velocity_q17[0];

	g_s_right_motor.proportional_term_q17 = _IQ17mpy(g_s_right_motor.kp_q17, g_s_right_motor.err_velocity_q17[0]);
	g_s_right_motor.derivative_term_q17 = _IQ17mpy(g_s_right_motor.kd_q17, ((g_s_right_motor.err_velocity_q17[0] - g_s_right_motor.err_velocity_q17[3]) + ((g_s_right_motor.err_velocity_q17[1] - g_s_right_motor.err_velocity_q17[2]) << 1)));
	g_s_right_motor.integral_term_q17 = _IQ17mpy(g_s_right_motor.ki_q17, g_s_right_motor.err_velocity_sum_q17);

	if(g_s_right_motor.integral_term_q17 > MAX_I_TERM)
		g_s_right_motor.integral_term_q17 = MAX_I_TERM;
	else if(g_s_right_motor.integral_term_q17 < MIN_I_TERM)
		g_s_right_motor.integral_term_q17 = MIN_I_TERM;

	g_s_right_motor.pid_out_term_q17 += g_s_right_motor.proportional_term_q17 + g_s_right_motor.derivative_term_q17 + g_s_right_motor.integral_term_q17;


	g_s_left_motor.err_velocity_sum_q17 -= g_s_left_motor.err_velocity_q17[3];
	g_s_left_motor.err_velocity_q17[3] = g_s_left_motor.err_velocity_q17[2];
	g_s_left_motor.err_velocity_q17[2] = g_s_left_motor.err_velocity_q17[1];
	g_s_left_motor.err_velocity_q17[1] = g_s_left_motor.err_velocity_q17[0];
	g_s_left_motor.err_velocity_q17[0] = _IQ17mpyIQX(g_s_left_motor.next_velocity_q17, 17, g_s_left_motor.pos_adjrate_q26, 26) - g_s_left_motor.current_velocity_q17;
	g_s_left_motor.err_velocity_sum_q17 += g_s_left_motor.err_velocity_q17[0];

	g_s_left_motor.proportional_term_q17 = _IQ17mpy(g_s_left_motor.kp_q17,  g_s_left_motor.err_velocity_q17[0]);
	g_s_left_motor.derivative_term_q17 = _IQ17mpy(g_s_left_motor.kd_q17, ((g_s_left_motor.err_velocity_q17[0] - g_s_left_motor.err_velocity_q17[3]) + ((g_s_left_motor.err_velocity_q17[1] - g_s_left_motor.err_velocity_q17[2]) << 1)));
	g_s_left_motor.integral_term_q17 = _IQ17mpy(g_s_left_motor.ki_q17, g_s_left_motor.err_velocity_sum_q17 );

	if(g_s_left_motor.integral_term_q17 > MAX_I_TERM)
		g_s_left_motor.integral_term_q17 = MAX_I_TERM;
	else if( g_s_left_motor.integral_term_q17 < MIN_I_TERM)
		g_s_left_motor.integral_term_q17 = MIN_I_TERM;

	g_s_left_motor.pid_out_term_q17 += g_s_left_motor.proportional_term_q17 + g_s_left_motor.derivative_term_q17 + g_s_left_motor.integral_term_q17;


	if(g_s_flags.motor_pwm_flag_u16)
	{
		if(g_s_right_motor.pid_out_term_q17 >= _IQ17(0.0))
		{
			if( g_s_right_motor.pid_out_term_q17 > MAX_PID_OUT )
				g_s_right_motor.pid_out_term_q17 = MAX_PID_OUT;
		
			EPwm1Regs.AQCTLA.bit.ZRO = AQ_CLEAR;
			EPwm1Regs.AQCTLB.bit.ZRO = AQ_SET;
			EPwm1Regs.CMPB = (Uint16)((_IQ17mpyIQX(g_s_right_motor.pid_out_term_q17, 17, PWM_CONVERT, 30)) >> 17);
		}
		else
		{
			if(g_s_right_motor.pid_out_term_q17 < MIN_PID_OUT)
				g_s_right_motor.pid_out_term_q17 = MIN_PID_OUT;

			EPwm1Regs.AQCTLA.bit.ZRO = AQ_SET;
			EPwm1Regs.AQCTLB.bit.ZRO = AQ_CLEAR;
			EPwm1Regs.CMPA.half.CMPA = (Uint16)((int16)((_IQ17mpyIQX(g_s_right_motor.pid_out_term_q17, 17, PWM_CONVERT, 30)) >> 17)  * (-1));
		}
		
		if( g_s_left_motor.pid_out_term_q17 >= _IQ17(0.0) )
		{
			if( g_s_left_motor.pid_out_term_q17 > MAX_PID_OUT )
				g_s_left_motor.pid_out_term_q17 = MAX_PID_OUT;
			
			EPwm2Regs.AQCTLA.bit.ZRO = AQ_SET;
			EPwm2Regs.AQCTLB.bit.ZRO = AQ_CLEAR;
			EPwm2Regs.CMPA.half.CMPA = (Uint16)((_IQ17mpyIQX(g_s_left_motor.pid_out_term_q17, 17, PWM_CONVERT, 30)) >> 17);
		}
		else
		{
			if(g_s_left_motor.pid_out_term_q17 < MIN_PID_OUT )
				g_s_left_motor.pid_out_term_q17 = MIN_PID_OUT;
			
			EPwm2Regs.AQCTLA.bit.ZRO = AQ_CLEAR;
			EPwm2Regs.AQCTLB.bit.ZRO = AQ_SET;
			EPwm2Regs.CMPB = (Uint16)((int16)((_IQ17mpyIQX(g_s_left_motor.pid_out_term_q17, 17, PWM_CONVERT, 30)) >> 17) * (-1));
		}
	}
#endif
#if 0
	g_u16motortic++;
	gDiffAdjCnt++;
	g_s_right_motor.U16Tick++;	
	g_s_left_motor.U16Tick++;
	gUserTimeCnt++;
	utimetick++;
#endif
	CpuTimer2Regs.TCR.bit.TRB = 1;
	StartCpuTimer0();// sensor int start -- sensor shoot
}

// motor_vel = cmd_vel.linear_vel - cmd_vel.angular_vel * robot_width/2 
static inline void _inline_move_to_func(CommandVelocity *p_cmd_vel, _iq17 *p_temp_q17, Uint16 run_type)
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
	CommandVelocity cmd_vel;
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
	CommandVelocity cmd_vel;
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

