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
#define ENCODER_RESOLUTION_x2	2049

#define MAX_I_TERM		_IQ17(5.0)
#define MIN_I_TERM		-MAX_I_TERM //_IQ17(-5.0)

#define MAX_PID_OUT		_IQ17(9000)//9000
#define MIN_PID_OUT		-MAX_PID_OUT //_IQ17(-9000)//9000

#define PWM_CONVERT		_IQ30(0.22222222)// pwm 2kHz == pid_output_maxmin * pwm_convert

#define WHEEL_DIAMETER	24.10
#define WHEEL_RADIUS	12.05	//_IQ17(37.699111843)

#define PULSE_TO_DIST	_IQ30(0.00924223424701098840905147772669)
// 바퀴지름 *PHI[75.712382951514017046949705537036]/(512*4)/기어비(4.)
#define PULSE_TO_VEL	_IQ26(18.484468494021976818102955453378)	
// 바퀴지름 *PHI[75.712382951514017046949705537036]/(512*4)/기어비(4.)/0.0005

#define WHEEL_EFECTIVE_RADIUS		_IQ17(9.87)
#define WHEEL_EFECTIVE_RADIUS_DIV2	_IQ17(4.935)

/*
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
*/

static QEPVariable *_sp_r_qep = &g_s_right_motor.s_qep;
static QEPVariable *_sp_l_qep = &g_s_left_motor.s_qep;

static DistanceVariable *_sp_r_dist = &g_s_right_motor.s_dist;
static DistanceVariable *_sp_l_dist = &g_s_left_motor.s_dist;

static SpeedVariable *_sp_r_speed = &g_s_right_motor.s_speed;
static SpeedVariable *_sp_l_speed = &g_s_left_motor.s_speed;

static AdjustPositionVariable *_sp_r_msc = &g_s_right_motor.s_adj;
static AdjustPositionVariable *_sp_l_msc = &g_s_left_motor.s_adj;

static void _InitMotorSturcture(MotorVariable *sp_motor)
{
	memset((void *)sp_motor, 0x00, sizeof(MotorVariable));

	sp_motor->kp_q17 = _IQ17div(g_motor_kp_u32 << 17, _IQ17(100.0));		// 4.50
	sp_motor->ki_q17 = _IQ17div(_IQ17div(g_motor_ki_u32 << 17, _IQ17(100.0)), _IQ17(1000.0));	// 0.00020
	sp_motor->kd_q17 = _IQ17div(g_motor_kd_u32 << 17, _IQ17(100.0));		// 4.50

	sp_motor->s_speed.accel_q15 = _IQ15(1000.0);
	sp_motor->s_speed.target_vel_q17 = _IQ17(0.0);
	sp_motor->s_adj.adj_ratio_q17 = _IQ17(1.0);
}

void InitMotor(void)
{
	_InitMotorSturcture(&g_s_right_motor);
	_InitMotorSturcture(&g_s_left_motor);

	//memset((void *)&g_s_cmd_vel, 0x00, sizeof(CommandVelocityVariable));

	init_position();
}

#pragma CODE_SECTION(IsrTimer2ForMotor, "ramfuncs2");
#pragma CODE_SECTION(_CalcDist, "ramfuncs2");
#pragma CODE_SECTION(_CalcDistNVel, "ramfuncs2");
#pragma CODE_SECTION(MoveToStop, "ramfuncs2");
#pragma CODE_SECTION(MoveToMove, "ramfuncs2");
#pragma CODE_SECTION(InPlaceTurn, "ramfuncs2");
interrupt void IsrTimer2ForMotor(void)
{
	g_timer_500u_u32++;
#if 0
	g_u16motortic++;
	gDiffAdjCnt++;
	g_s_right_motor.U16Tick++;	
	g_s_left_motor.U16Tick++;
	gUserTimeCnt++;
	utimetick++;
#endif

	// QEP값을 받는다
	// save qep sampling value
	_sp_r_qep->sample_u16 = (Uint16)(RightQepRegs.QPOSCNT);
	_sp_l_qep->sample_u16 = (Uint16)(LeftQepRegs.QPOSCNT);

	// initialize qep register to save sampling value
	RightQepRegs.QEPCTL.bit.SWI = 1;
	LeftQepRegs.QEPCTL.bit.SWI = 1;

	// 받은 값을 int16으로 변환한다.
	// transform the sample type to int16
	if(_sp_r_qep->sample_u16 > ENCODER_RESOLUTION)
		_sp_r_qep->sample_i16 = ENCODER_RESOLUTION_x2 - ((int16)_sp_r_qep->sample_u16);
	else 
		_sp_r_qep->sample_i16 = -((int16)_sp_r_qep->sample_u16);

	if(_sp_l_qep->sample_u16 > ENCODER_RESOLUTION)
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

	// 사용자가 정해준 거리에 합친 거리를 제거해 남은 거리를 구한다.
	// calculate remainging distance(from current to end). minus gone distance by target distance
	_sp_r_dist->remaining_q17 = _IQ17abs(_sp_r_dist->target_q17 - _sp_r_dist->gone_q17);
	_sp_l_dist->remaining_q17 = _IQ17abs(_sp_l_dist->target_q17 - _sp_l_dist->gone_q17);

	// 펄스당 속도와 QEP를 곱해 현재의 속도를 구한다.
	// calculate current velocity. multiply the sample by velocity per a pulse
#if 1
	// To use as average of velocity
	_sp_r_speed->curr_vel_q17[3] = _sp_r_speed->curr_vel_q17[2];
	_sp_r_speed->curr_vel_q17[2] = _sp_r_speed->curr_vel_q17[1];
	_sp_r_speed->curr_vel_q17[1] = _sp_r_speed->curr_vel_q17[0];
	_sp_r_speed->curr_vel_q17[0] = _IQ17mpyIQX(_sp_r_qep->sample_q21, 21, PULSE_TO_VEL, 26);
	_sp_r_speed->curr_vel_avg_q17 = (_sp_r_speed->curr_vel_q17[0] + _sp_r_speed->curr_vel_q17[1] + _sp_r_speed->curr_vel_q17[2] + _sp_r_speed->curr_vel_q17[3]) >> 2;

	_sp_l_speed->curr_vel_q17[3] = _sp_l_speed->curr_vel_q17[2];
	_sp_l_speed->curr_vel_q17[2] = _sp_l_speed->curr_vel_q17[1];
	_sp_l_speed->curr_vel_q17[1] = _sp_l_speed->curr_vel_q17[0];
	_sp_l_speed->curr_vel_q17[0] = _IQ17mpyIQX(_sp_l_qep->sample_q21, 21, PULSE_TO_VEL, 26);
	_sp_l_speed->curr_vel_avg_q17 = (_sp_l_speed->curr_vel_q17[0] + _sp_l_speed->curr_vel_q17[1] + _sp_l_speed->curr_vel_q17[2] + _sp_l_speed->curr_vel_q17[3]) >> 2;
#else
	// To use as velocity directly
	_sp_r_speed->curr_vel_avg_q17 = _IQ17mpyIQX(_sp_r_qep->sample_q21, 21, PULSE_TO_VEL, 26);
	_sp_l_speed->curr_vel_avg_q17 = _IQ17mpyIQX(_sp_l_qep->sample_q21, 21, PULSE_TO_VEL, 26);
#endif

	// 남은 거리 확인 후 목표 감속 속도 설정
	// if remainging distance over the stop point set then set target velocity to deceleration target velocity
	if(g_s_flags.motor_dec_sync_b)
	{
		if((_sp_r_speed->decel_b == ON || _sp_l_speed->decel_b == ON)
		&& (_sp_r_dist->remaining_q17 <= _sp_r_dist->decel_point_q17 || _sp_l_dist->remaining_q17 <= _sp_l_dist->decel_point_q17))
		{
			_sp_r_speed->target_vel_q17 = _sp_r_speed->decel_vel_q17;
			_sp_l_speed->target_vel_q17 = _sp_l_speed->decel_vel_q17;
			_sp_l_speed->decel_b = _sp_r_speed->decel_b == OFF;
		}
	}
	else
	{
		if(_sp_r_speed->decel_b == ON && _sp_r_dist->remaining_q17 <= _sp_r_dist->decel_point_q17)
		{
			_sp_r_speed->target_vel_q17 = _sp_r_speed->decel_vel_q17;
			_sp_r_speed->decel_b == OFF;
		}
		if(_sp_l_speed->decel_b == ON && _sp_l_dist->remaining_q17 <= _sp_l_dist->decel_point_q17)
		{	
			_sp_l_speed->target_vel_q17 = _sp_l_speed->decel_vel_q17;
			_sp_l_speed->decel_b == OFF;
		}
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
		estimate_position_used_input(&g_s_epi);
		//estimate_position_used_sensor();
		adjust_position();
	}

	// 모터 PID
	// motor PID
	g_s_right_motor.err_vel_sum_q17 -= g_s_right_motor.err_vel_q17[3];
	g_s_right_motor.err_vel_q17[3] = g_s_right_motor.err_vel_q17[2];
	g_s_right_motor.err_vel_q17[2] = g_s_right_motor.err_vel_q17[1];
	g_s_right_motor.err_vel_q17[1] = g_s_right_motor.err_vel_q17[0];
	//g_s_right_motor.err_vel_q17[0] = _IQ17mpyIQX(_sp_r_speed->next_vel_q17 + _sp_r_msc->adj_add_v_q17, 17, _sp_r_msc->adj_ratio_q17, 17) - _sp_r_speed->curr_vel_avg_q17;
	g_s_right_motor.err_vel_q17[0] = _IQ17mpyIQX(_sp_r_speed->next_vel_q17, 17, _sp_r_msc->adj_ratio_q17, 17) - _sp_r_speed->curr_vel_avg_q17;
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
	//g_s_left_motor.err_vel_q17[0] = _IQ17mpyIQX(_sp_l_speed->next_vel_q17 + _sp_l_msc->adj_add_v_q17, 17, _sp_l_msc->adj_ratio_q17, 17) - _sp_l_speed->curr_vel_avg_q17;
	g_s_left_motor.err_vel_q17[0] = _IQ17mpyIQX(_sp_l_speed->next_vel_q17, 17, _sp_l_msc->adj_ratio_q17, 17) - _sp_l_speed->curr_vel_avg_q17;
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
		if(g_s_right_motor.pid_output_q17 > _IQ17(0.0))
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

			EPwm1Regs.AQCTLA.bit.ZRO = AQ_SET;
			EPwm1Regs.AQCTLB.bit.ZRO = AQ_CLEAR;
			EPwm1Regs.CMPA.half.CMPA = (Uint16)(_IQ17mpyIQX(-g_s_right_motor.pid_output_q17, 17, PWM_CONVERT, 30) >> 17);
		}
		
		if( g_s_left_motor.pid_output_q17 > _IQ17(0.0) )
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
			
			EPwm2Regs.AQCTLA.bit.ZRO = AQ_CLEAR;
			EPwm2Regs.AQCTLB.bit.ZRO = AQ_SET;
			EPwm2Regs.CMPB = (Uint16)(_IQ17mpyIQX(-g_s_left_motor.pid_output_q17, 17, PWM_CONVERT, 30) >> 17);
		}
	}
	else
	{
		EPwm1Regs.AQCTLA.bit.ZRO = AQ_CLEAR;
		EPwm1Regs.AQCTLB.bit.ZRO = AQ_SET;

		EPwm2Regs.AQCTLA.bit.ZRO = AQ_CLEAR;
		EPwm2Regs.AQCTLB.bit.ZRO = AQ_SET;
		
		EPwm1Regs.CMPB = EPwm2Regs.CMPB = 0;  	
	}

	// initialize motor interrupt flag
	//CpuTimer2Regs.TCR.bit.TRB = 1;

	// sensor interrupt start -- sensor shoot
	StartCpuTimer0();
}

#define STD_TEMP_22	22.0		// Standard Ambient Temperature, 22 Celsisus
#define SUP_VOLT 	7.4			// Nominal Voltage [V]
#define R_STD_TEMP	4.31		// Terminal Resistance [Ohm], Ambient Temp: 22 Celsius
#define L 			0.0000656	// Rotor Inductance [H]
#define RECIP_L		15243.90243	// Reciprocal of Rotor Inductance [1/H]
#define k_M			0.00396		// Torque Constanct [Nm/A]
#define k_E			k_M			// Back EMF Constant [V/(rad/s)], This is same as k_M.
#define J			0.000000058	// Rotor Inertia [kg*m^2]
#define M_R			0.00018		// Friction Torque [Nm]
#define T_amb		STD_TEMP_22	// Ambient Temperature [Celsius]
#define alpha_cu	0.00393		// Temperature Coefficient of Resistance [Celsius]
#define R_th1		13.0		// Winding to Housing Termal Resistance [Ohm]
#define R_th2		2.6			// Housing to Ambient (Metal) [Ohm]
#define tau_w		6.4			// Winding Thermal Time Constant [s]
#define tau_th		20.0		// Housing Thermal time constan [s]
#define C_th1		0.492307692	// Winding Heat Capacity [J/K], tau_w / R_th1
#define C_th2		7.692307692	// Housing Heat Capacity [J/K], tau_th / R_th2

#define MAX_TEMP	125.0
#define MIN_TEMP	-30.0

typedef volatile struct {
	_iq27	winding_resistance_q27,
			back_emf_volt_q27,
			control_volt_q27,
			steady_state_current_q27,
			current_q27;

	_iq27	motor_torque_q27,
			driving_torque_q27,
			friction_torque_q27,
			net_torque_q27;

	_iq27	step_omega_q27;
	_iq17	omega_q17;

	_iq17	power_loss_q17,
			heat_flow_winding_to_housing_q17,
			step_winding_temp_q17,
			winding_temp_q17,
			
			heat_flow_housing_to_ambient_q17,
			step_housing_temp_q17,
			housing_temp_q17;
} DCMotorModelVariable;

DCMotorModelVariable	g_s_left_dc_motor_model;
DCMotorModelVariable	g_s_right_dc_motor_model;

static void _CalcDCMotorStep(DCMotorModelVariable *sp_motor_model, MotorVariable *sp_motor)
{
	_iq30 winding_temp_const, pwm_duty_ratio, omega_sign;
	_iq27 avg_current;
	
	// Calculate Elctrical Parameters
	winding_temp_const = _IQ30(1.0) + _IQ30mpyIQX(_IQ30(alpha_cu), 30, sp_motor_model->winding_temp_q17 - _IQ17(STD_TEMP_22), 27);
	sp_motor_model->winding_resistance_q27 = _IQ27mpyIQX(_IQ28(R_STD_TEMP), 28, winding_temp_const, 30);

	// Calculate Advanced Current with Analytic Solution
	sp_motor_model->back_emf_volt_q27 = _IQ27mpyIQX(_IQ30(k_E), 30, sp_motor_model->omega_q17, 17);
	
	// Calculate Average Current for 1 cycle
	pwm_duty_ratio = _IQ30mpyIQX(sp_motor->pid_output_q17, 17, _IQ30(0.000111111), 30);
	sp_motor_model->control_volt_q27 = _IQ27mpyIQX(_IQ27(SUP_VOLT), 27, pwm_duty_ratio, 30);
	sp_motor_model->steady_state_current_q27 = _IQ27div(sp_motor_model->control_volt_q27 - sp_motor_model->back_emf_volt_q27, sp_motor_model->winding_resistance_q27);

	avg_current = (sp_motor_model->current_q27 + sp_motor_model->steady_state_current_q27) >> 1;
	sp_motor_model->current_q27 = sp_motor_model->steady_state_current_q27;

	// Update Mechanical State
	sp_motor_model->motor_torque_q27 = _IQ27mpy(_IQ27(k_M), avg_current);
	sp_motor_model->driving_torque_q27 = sp_motor_model->motor_torque_q27; // - load torque;

	if(sp_motor_model->omege_q17 > _IQ17(0.0))			omega_sign = _IQ30(1.0);
	else if(sp_motor_model->omege_q17 < _IQ17(0.0))		omega_sign = _IQ30(-1.0);
	else												omega_sign = _IQ30(0.0);

	if(sp_motor_model->control_volt_q27 == _IQ27(0.0)) // Motor is stopped
	{
		if(_IQ27abs(sp_motor_model->driving_torque_q27) > _IQ27(M_R))
			sp_motor_model->friction_torque_q27 = _IQ27mpyIQX(_IQ30(M_R), 30, omega_sign, 30);
		else
			sp_motor_model->friction_torque_q27 = sp_motor_model->driving_torque_q27;
	}
	else	// Motor is working
		sp_motor_model->friction_torque_q27 = _IQ27mpyIQX(_IQ30(M_R), 30, omega_sign, 30);

	sp_motor_model->net_torque_q27 = sp_motor_model->driving_torque_q27 - sp_motor_model->friction_torque_q27;

	sp_motor_model->step_omega_q27 = _IQ27div(sp_motor_model->net_torque_q27, _IQ27(J));
	sp_motor_model->omega_q17 = _IQ17mpyIQX(sp_motor_model->step_omega_q27, 27, TIME_TICK, 30);

	// Update Thermal Equilibrium State

	
}

#define DIV_COEF		1000
#define DIV_COEF_REV	_IQ30(0.001)
static _iq17 _CalcDist(_iq17 tar_vel, _iq17 curr_vel, int32 tar_acc)
{
	volatile _iq21 temp0, temp1, dist;

	temp0 = _IQ21mpyIQX(tar_vel, 17, DIV_COEF_REV, 30);
	temp1 = _IQ21mpyIQX(curr_vel, 17, DIV_COEF_REV, 30);

	temp0 = _IQ21mpy(temp0, temp0);
	temp1 = _IQ21mpy(temp1, temp1);
	dist = _IQ17div(_IQ17mpyIQX(_IQ21abs(temp0 - temp1), 21, DIV_COEF, 0), _IQ17mpyIQX(tar_acc << 1, 0, DIV_COEF_REV, 30));

	return dist;
}

static void _CalcDistNVel(_iq17 enter_vel, _iq17 *tar_vel, _iq17 exit_vel, _iq17 tar_dist, _iq17 *dec_dist, int32 tar_acc)
{
	volatile _iq21 temp0, temp1, temp2;
	volatile _iq17 acc_dist, tar_dist_abs;

	acc_dist = _CalcDist(*tar_vel, enter_vel, tar_acc);
	*dec_dist = _CalcDist(exit_vel, *tar_vel, tar_acc);

	tar_dist_abs = _IQ17abs(tar_dist);
	//TxPrintf("%lf | %lf\n", _IQ17toF(acc_dist), _IQ17toF(*dec_dist));

	if(tar_dist_abs < (acc_dist + *dec_dist))
	{
		/*
		v_in^2 +2as_1 = v_peak^2
		v_peak^2 = v_out^2 + 2as_2

		v_in^2 + 2as_1 + v_out^2 + 2as_2 = 2v_peak^2
		
		v_peak^2 = as + (v_in^2 + v_out^2)/2
		*/
		temp0 = _IQ21mpyIQX(enter_vel, 17, DIV_COEF_REV, 30);
		temp1 = _IQ21mpyIQX(exit_vel, 17, DIV_COEF_REV, 30);
		
		temp0 = _IQ21mpy(temp0, temp0) >> 1;
		temp1 = _IQ21mpy(temp1, temp1) >> 1;
		temp2 = _IQ21mpy(_IQ21mpyIQX(tar_acc, 0, DIV_COEF_REV, 30), _IQ21mpyIQX(tar_dist_abs, 17, DIV_COEF_REV, 30)) + temp0 + temp1;
		//TxPrintf("%lf | %lf | %lf\n", _IQ21toF(temp0), _IQ21toF(temp1), _IQ21toF(temp2));

		if(*tar_vel < _IQ17(0.0))
		{
			*tar_vel = -_IQ17mpyIQX(_IQ21sqrt(temp2), 21, DIV_COEF, 0);

			if(*tar_vel < _IQ17(MIN_VELO))
				*tar_vel = _IQ17(MIN_VELO);
		}
		else
		{
			*tar_vel = _IQ17mpyIQX(_IQ21sqrt(temp2), 21, DIV_COEF, 0);

			if(*tar_vel > _IQ17(MAX_VELO))
				*tar_vel = _IQ17(MAX_VELO);
		}
		
		*dec_dist = _CalcDist(exit_vel, *tar_vel, tar_acc);

		//TxPrintf("%lf | %lf\n", _IQ17toF(*tar_vel), _IQ17toF(*dec_dist));
	}
}

// 동작 후 정차
void MoveToStop(_iq17 tar_dist, int32 tar_acc, _iq17 tar_vel)
{
	_iq17 curr_vel, dec_dist;

	StopCpuTimer2();

	// Set flag
	g_s_flags.motor_dec_sync_b = ON;

	_sp_l_dist->gone_q17 = _sp_r_dist->gone_q17 = _IQ17(0.0);

	tar_dist = _IQ17abs(tar_dist);

	// Unify signs of tar_vel and tar_dist
	if(tar_vel < _IQ17(0.0))
		_sp_l_dist->target_q17 = _sp_r_dist->target_q17 = -tar_dist;
	else if(tar_vel > _IQ17(0.0))
		_sp_l_dist->target_q17 = _sp_r_dist->target_q17 = tar_dist;

	curr_vel = (_sp_l_speed->curr_vel_avg_q17 + _sp_r_speed->curr_vel_avg_q17) >> 1;
	_CalcDistNVel(curr_vel, &tar_vel, _IQ17(0.0), tar_dist, &dec_dist, tar_acc);
	
	_sp_l_dist->decel_point_q17 = _sp_r_dist->decel_point_q17 = dec_dist;

	_sp_l_speed->accel_q15 = _sp_r_speed->accel_q15 = tar_acc << 15;	
	_sp_l_speed->target_vel_q17 = _sp_r_speed->target_vel_q17 = tar_vel;
	_sp_l_speed->decel_vel_q17 = _sp_r_speed->decel_vel_q17 = _IQ17(0.0);
	_sp_l_speed->decel_b = _sp_r_speed->decel_b = ON;

	_sp_r_dist->remaining_q17 = _IQ17abs(_sp_r_dist->target_q17 - _sp_r_dist->gone_q17);
	_sp_l_dist->remaining_q17 = _IQ17abs(_sp_l_dist->target_q17 - _sp_l_dist->gone_q17);
	
	StartCpuTimer2();
}

// 동작 후 이어서 동작
void MoveToMove(_iq17 tar_dist, int32 tar_acc, _iq17 tar_vel, _iq17 dec_vel)
{
	_iq17 curr_vel, dec_dist;
	
	StopCpuTimer2();

	// Set flag
	g_s_flags.motor_dec_sync_b = ON;

	_sp_l_dist->gone_q17 = _sp_r_dist->gone_q17 = _IQ17(0.0);

	tar_dist = _IQ17abs(tar_dist);

	// Unify signs of tar_vel and tar_dist
	if(tar_vel < _IQ17(0.0))
		_sp_l_dist->target_q17 = _sp_r_dist->target_q17 = -tar_dist;
	else if(tar_vel > _IQ17(0.0))
		_sp_l_dist->target_q17 = _sp_r_dist->target_q17 = tar_dist;

	curr_vel = (_sp_l_speed->curr_vel_avg_q17 + _sp_r_speed->curr_vel_avg_q17) >> 1;
	_CalcDistNVel(curr_vel, &tar_vel, dec_vel, tar_dist, &dec_dist, tar_acc);
	
	_sp_l_dist->decel_point_q17 = _sp_r_dist->decel_point_q17 = dec_dist;

	_sp_l_speed->accel_q15 = _sp_r_speed->accel_q15 = tar_acc << 15;	
	_sp_l_speed->target_vel_q17 = _sp_r_speed->target_vel_q17 = tar_vel;
	_sp_l_speed->decel_vel_q17 = _sp_r_speed->decel_vel_q17 = dec_vel;
	_sp_l_speed->decel_b = _sp_r_speed->decel_b = ON;

	_sp_r_dist->remaining_q17 = _IQ17abs(_sp_r_dist->target_q17 - _sp_r_dist->gone_q17);
	_sp_l_dist->remaining_q17 = _IQ17abs(_sp_l_dist->target_q17 - _sp_l_dist->gone_q17);
	
	StartCpuTimer2();
}

// 회전 동작 후 정지
void InPlaceTurn(_iq17 tar_th, int32 tar_acc, _iq17 tar_vel)
{
	_iq17 tar_dist, curr_vel, dec_dist;

	StopCpuTimer2();

	// Set flag
	g_s_flags.motor_dec_sync_b = ON;

	g_s_epi.target_th_q17 = tar_th;
	g_s_ref_pos.target_th_q17 = tar_th;

	_sp_l_dist->gone_q17 = _sp_r_dist->gone_q17 = _IQ17(0.0);

	tar_vel = _IQ17abs(tar_vel);

	tar_dist = _IQ17abs(_IQ17mpy(tar_th, ROBOT_WIDTH_DIV2 - WHEEL_EFECTIVE_RADIUS_DIV2));
	//tar_dist = _IQ17abs(_IQ17mpy(tar_th, ROBOT_WIDTH_DIV2));

	curr_vel = (_sp_l_speed->curr_vel_avg_q17 + _sp_r_speed->curr_vel_avg_q17) >> 1;
	_CalcDistNVel(curr_vel, &tar_vel, _IQ17(0.0), tar_dist, &dec_dist, tar_acc);
	//_CalcDistNVel(_IQ17(0.0), &tar_vel, _IQ17(0.0), tar_dist, &dec_dist, tar_acc);

	_sp_l_dist->decel_point_q17 = _sp_r_dist->decel_point_q17 = dec_dist;

	// Unify signs of tar_vel and tar_dist depends on tar_th
	if(tar_th > _IQ17(0.0))
	{		
		_sp_l_dist->target_q17 = -tar_dist;
		_sp_r_dist->target_q17 = tar_dist;

		_sp_l_speed->accel_q15 = _sp_r_speed->accel_q15 = tar_acc << 15;
		_sp_l_speed->target_vel_q17 = -tar_vel;
		_sp_r_speed->target_vel_q17 = tar_vel;
	}
	else if(tar_th < _IQ17(0.0))
	{		
		_sp_l_dist->target_q17 = tar_dist;
		_sp_r_dist->target_q17 = -tar_dist;

		_sp_l_speed->accel_q15 = _sp_r_speed->accel_q15 = tar_acc << 15;
		_sp_l_speed->target_vel_q17 = tar_vel;
		_sp_r_speed->target_vel_q17 = -tar_vel;
	}
	else
	{
		_sp_l_dist->target_q17 = _sp_r_dist->target_q17 = _IQ17(0.0);

		_sp_l_speed->accel_q15 = _sp_r_speed->accel_q15 = tar_acc << 15;
		_sp_l_speed->target_vel_q17 = _sp_r_speed->target_vel_q17 = _IQ17(0.0);
	}
	_sp_l_speed->decel_vel_q17 = _sp_r_speed->decel_vel_q17 = _IQ17(0.0);
	_sp_l_speed->decel_b = _sp_r_speed->decel_b = ON;

	_sp_r_dist->remaining_q17 = _IQ17abs(_sp_r_dist->target_q17 - _sp_r_dist->gone_q17);
	_sp_l_dist->remaining_q17 = _IQ17abs(_sp_l_dist->target_q17 - _sp_l_dist->gone_q17);

	StartCpuTimer2();
}

/*
// Turn simulation made by python
// https://colab.research.google.com/drive/1nX95cfM9avqoyKDrgAPEYbWbE7YZhOJ7#scrollTo=FaAzIS9wwqic&line=13&uniqifier=1
void CalculateTurnVelocityAndDecelPointForTurn(_iq17 tar_th, _iq17 tar_rad, _iq17 tar_vel, _iq15 tar_acc, _iq17 curr_vel, _iq17 *decel_point)
{
	_iq15 inverse_acc;
	_iq17 adj_timing_point, adj_th;	// accel end timing
	_iq17 temp, beta, adj_rad, adj_left_vel, adj_right_vel;

	inverse_acc = _IQ15div(_IQ15(1.0), tar_acc);
	adj_timing_point = _IQ17mpy(tar_vel - curr_vel, 17, inverse_acc, 15);

	temp = _IQ17mpy(adj_timing_point, adj_timing_point);
	adj_th = _IQ17div(_IQ17mpyIQX(tar_acc, 15, temp, 17), ROBOT_WIDTH);

	if(tar_th < _IQ17(0.0))	adj_th = -adj_th
	
	// calculate adjusted radius
	beta = (_IQ17(M_PI) - tar_th) >> 1;		// alpha is curr_th
	temp = _IQ17div(_IQ17sin(beta), _IQ17cos(beta));	// tan(beta)
	adj_rad = _IQ17mpy(tar_th, _IQ17cos(adj_th) - _IQ17mpy(_IQ17sin(adj_th), temp);

	if(tar_th > _IQ17(0.0))
	{
		adj_right_vel = tar_vel + _IQ17mpy(_IQ17div(tar_vel, adj_rad), WHEEL_RADIUS);
		adj_left_vel = tar_vel - _IQ17mpy(_IQ17div(tar_vel, adj_rad), WHEEL_RADIUS);
	}
	else if(tar_th < _IQ17(0.0))
	{
		adj_right_vel = tar_vel - _IQ17mpy(_IQ17div(tar_vel, adj_rad), WHEEL_RADIUS);
		adj_left_vel = tar_vel + _IQ17mpy(_IQ17div(tar_vel, adj_rad), WHEEL_RADIUS);
	}
	
	*decel_point = (tar_th - adj_th)

}
*/
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

	abs_diff_vr = tar_vr - _sp_r_speed->curr_vel_avg_q17;
	abs_diff_vl = tar_vl - _sp_l_speed->curr_vel_avg_q17;

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
		_sp_l_dist->target_q17 = _IQ17mpy(tar_rad - ROBOT_WIDTH_DIV2, tar_th) + temp;
	}
	else
	{
		_sp_r_speed->target_vel_q17 = tar_vr;
		_sp_l_speed->target_vel_q17 = tar_vl;

		r_dist = _IQ17mpy(rdt, abs_diff_vr) >> 2;
		l_dist = _IQ17mpy(ldt, abs_diff_vr) >> 2;
		
		temp = l_dist + r_dist + (r_dist << 1);

		_sp_r_dist->target_q17 = _IQ17mpy(tar_rad - ROBOT_WIDTH_DIV2, tar_th) + temp;
		_sp_l_dist->target_q17 = _IQ17mpy(tar_rad + ROBOT_WIDTH_DIV2, tar_th) + temp;
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

void MoveToStop(Uint16 run_type)
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

void MoveToMove(_iq17 tar_vel, Uint16 run_type, Uint16 restore)
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
