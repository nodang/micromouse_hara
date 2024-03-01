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
// �������� *PHI[75.398223686155037723103441198708]/(512*4)/����(4.)
#define PULSE_TO_VEL	_IQ26(18.407769454627695)	
// �������� *PHI[75.398223686155037723103441198708]/(512*4)/����(4.)/0.0005

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

	p_motor->q17_kp = _IQ17(4.5);		// 4.5
	p_motor->q17_ki = _IQ17(0.00002);	// 0.0002
	p_motor->q17_kd = _IQ17(4.5);		// 4.5

	p_motor->i32_accel = (int32)6500;
	p_motor->q17_user_velocity = _IQ17(0.0);
}

void init_motor(void)
{
	_init_motor_structure(&s_right_motor);
	_init_motor_structure(&s_left_motor);

	memset((void *)&s_cmd_vel, 0x00, sizeof(CommandVelocity));
}

interrupt void motor_timer2_ISR(void)
{	
	//static int test_cnt = 0;
			
	//QEP���� �޴´�
	s_right_motor.u16_qep_sample = (Uint16)(RightQepRegs.QPOSCNT);
	s_left_motor.u16_qep_sample = (Uint16)(LeftQepRegs.QPOSCNT);

	RightQepRegs.QEPCTL.bit.SWI = 1;//initialize position counter
	LeftQepRegs.QEPCTL.bit.SWI = 1;//initialize position counter
#if 1
	//���� ���� int16���� ��ȯ�Ѵ�.
	if(s_right_motor.u16_qep_sample > 1023)
		s_right_motor.i16_qep_val = (int16)s_right_motor.u16_qep_sample - 2048;
	else 
		s_right_motor.i16_qep_val = (int16)s_right_motor.u16_qep_sample;

	if(s_left_motor.u16_qep_sample > 1023)
		s_left_motor.i16_qep_val = (int16)s_left_motor.u16_qep_sample - 2048;
	else
		s_left_motor.i16_qep_val = (int16)s_left_motor.u16_qep_sample;

	//�� ƽ�� �Ÿ��� ���Ѵ�.
	s_right_motor.q27_tick_distance = _IQ27mpyIQX(((int32)(s_right_motor.i16_qep_val) << 21), 21, PULSE_TO_DIS, 30);
	s_left_motor.q27_tick_distance = _IQ27mpyIQX(((int32)(s_left_motor.i16_qep_val) << 21), 21, PULSE_TO_DIS, 30);

	//ƽ�� �Ÿ��� ���� ������ �Ÿ��� ���Ѵ�.
	s_right_motor.q17_distance_sum += (s_right_motor.q27_tick_distance >> 10);
	s_left_motor.q17_distance_sum += (s_left_motor.q27_tick_distance >> 10);
#endif
#if 1
	//����ڰ� ������ �Ÿ��� ��ģ �Ÿ��� ������ ���� �Ÿ��� ���Ѵ�.
	s_right_motor.q17_remaining_distance = s_right_motor.q17_user_distance - s_right_motor.q17_distance_sum;
	s_left_motor.q17_remaining_distance = s_left_motor.q17_user_distance - s_left_motor.q17_distance_sum;

	//�޽��� �ӵ��� QEP�� ���� ������ �ӵ��� ���Ѵ�.
	s_right_motor.q17_current_velocity = _IQ17mpyIQX(((int32)(s_right_motor.i16_qep_val) << 21), 21, PULSE_TO_VEL, 26);
	s_left_motor.q17_current_velocity = _IQ17mpyIQX(((int32)(s_left_motor.i16_qep_val) << 21), 21, PULSE_TO_VEL, 26);
	
#if 0
	//���� �Ÿ� Ȯ��
	if((_IQ17abs(s_right_motor.q17_remaining_distance) <= s_right_motor.q17_stop_distance) && !(s_right_motor.stop_flag))
	{
		s_right_motor.q17_user_velocity = s_right_motor.q17_decel_velocity;

		if(s_right_motor.q17_decel_velocity == 0)
			s_right_motor.stop_flag = 1;
		else
			s_right_motor.stop_flag = 2;
	}

	if((_IQ17abs(s_left_motor.q17_remaining_distance) <= s_left_motor.q17_stop_distance) && !(s_left_motor.stop_flag))
	{
		s_left_motor.q17_user_velocity = s_left_motor.q17_decel_velocity;

		if(s_left_motor.q17_decel_velocity == 0)
			s_left_motor.stop_flag = 1;
		else
			s_left_motor.stop_flag = 2;
	}
#endif

	//����
	if(s_right_motor.q17_user_velocity > s_right_motor.q17_next_velocity)
	{
		s_right_motor.q17_next_velocity += _IQ17mpyIQX(TIME_TICK, 30, (s_right_motor.i32_accel << 15), 15);
		if(s_right_motor.q17_user_velocity < s_right_motor.q17_next_velocity)
			s_right_motor.q17_next_velocity = s_right_motor.q17_user_velocity;
	}
	else if(s_right_motor.q17_user_velocity < s_right_motor.q17_next_velocity)
	{
		s_right_motor.q17_next_velocity -= _IQ17mpyIQX(TIME_TICK, 30, (s_right_motor.i32_accel << 15), 15);
		if(s_right_motor.q17_user_velocity > s_right_motor.q17_next_velocity)
			s_right_motor.q17_next_velocity = s_right_motor.q17_user_velocity;
	}

	if(s_left_motor.q17_user_velocity > s_left_motor.q17_next_velocity)
	{
		s_left_motor.q17_next_velocity += _IQ17mpyIQX(TIME_TICK, 30, (s_left_motor.i32_accel << 15), 15);
		if(s_left_motor.q17_user_velocity < s_left_motor.q17_next_velocity)
			s_left_motor.q17_next_velocity = s_left_motor.q17_user_velocity;
	}
	else if(s_left_motor.q17_user_velocity < s_left_motor.q17_next_velocity)
	{
		s_left_motor.q17_next_velocity -= _IQ17mpyIQX(TIME_TICK, 30, (s_left_motor.i32_accel << 15), 15);
		if(s_left_motor.q17_user_velocity > s_left_motor.q17_next_velocity)
			s_left_motor.q17_next_velocity = s_left_motor.q17_user_velocity;
	}
	
#if 0
	//���� ���� �������� Ȯ��.
	if( ( s_right_motor.stop_flag == 1 ) && ( s_left_motor.stop_flag == 1 ) && ( s_right_motor.q17_current_velocity == _IQ17(0.0) ) && ( s_left_motor.q17_current_velocity == _IQ17(0.0) ) )
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

	//������ PID

	//Position_PID();

	//���� PID
	s_right_motor.q17_err_velocity_sum -= s_right_motor.q17_err_velocity[3];
	s_right_motor.q17_err_velocity[3] = s_right_motor.q17_err_velocity[2];
	s_right_motor.q17_err_velocity[2] = s_right_motor.q17_err_velocity[1];
	s_right_motor.q17_err_velocity[1] = s_right_motor.q17_err_velocity[0];
	s_right_motor.q17_err_velocity[0] = _IQ17mpyIQX(s_right_motor.q17_next_velocity, 17, s_right_motor.q26_pos_adjrate, 26) - s_right_motor.q17_current_velocity;
	s_right_motor.q17_err_velocity_sum += s_right_motor.q17_err_velocity[0];

	s_right_motor.q17_proportional_term = _IQ17mpy(s_right_motor.q17_kp, s_right_motor.q17_err_velocity[0]);
	s_right_motor.q17_derivative_term = _IQ17mpy(s_right_motor.q17_kd, ((s_right_motor.q17_err_velocity[0] - s_right_motor.q17_err_velocity[3]) + ((s_right_motor.q17_err_velocity[1] - s_right_motor.q17_err_velocity[2]) << 1)));
	s_right_motor.q17_integral_term = _IQ17mpy(s_right_motor.q17_ki, s_right_motor.q17_err_velocity_sum);

	if(s_right_motor.q17_integral_term > MAX_I_TERM)
		s_right_motor.q17_integral_term = MAX_I_TERM;
	else if(s_right_motor.q17_integral_term < MIN_I_TERM)
		s_right_motor.q17_integral_term = MIN_I_TERM;

	s_right_motor.q17_pid_out_term += s_right_motor.q17_proportional_term + s_right_motor.q17_derivative_term + s_right_motor.q17_integral_term;


	s_left_motor.q17_err_velocity_sum -= s_left_motor.q17_err_velocity[3];
	s_left_motor.q17_err_velocity[3] = s_left_motor.q17_err_velocity[2];
	s_left_motor.q17_err_velocity[2] = s_left_motor.q17_err_velocity[1];
	s_left_motor.q17_err_velocity[1] = s_left_motor.q17_err_velocity[0];
	s_left_motor.q17_err_velocity[0] = _IQ17mpyIQX(s_left_motor.q17_next_velocity, 17, s_left_motor.q26_pos_adjrate, 26) - s_left_motor.q17_current_velocity;
	s_left_motor.q17_err_velocity_sum += s_left_motor.q17_err_velocity[0];

	s_left_motor.q17_proportional_term = _IQ17mpy(s_left_motor.q17_kp,  s_left_motor.q17_err_velocity[0]);
	s_left_motor.q17_derivative_term = _IQ17mpy(s_left_motor.q17_kd, ((s_left_motor.q17_err_velocity[0] - s_left_motor.q17_err_velocity[3]) + ((s_left_motor.q17_err_velocity[1] - s_left_motor.q17_err_velocity[2]) << 1)));
	s_left_motor.q17_integral_term = _IQ17mpy(s_left_motor.q17_ki, s_left_motor.q17_err_velocity_sum );

	if(s_left_motor.q17_integral_term > MAX_I_TERM)
		s_left_motor.q17_integral_term = MAX_I_TERM;
	else if( s_left_motor.q17_integral_term < MIN_I_TERM)
		s_left_motor.q17_integral_term = MIN_I_TERM;

	s_left_motor.q17_pid_out_term += s_left_motor.q17_proportional_term + s_left_motor.q17_derivative_term + s_left_motor.q17_integral_term;


	if(s_flags.u16_motor_pwm_flag)
	{
		if(s_right_motor.q17_pid_out_term >= _IQ17(0.0))
		{
			if( s_right_motor.q17_pid_out_term > MAX_PID_OUT )
				s_right_motor.q17_pid_out_term = MAX_PID_OUT;
		
			EPwm1Regs.AQCTLA.bit.ZRO = AQ_CLEAR;
			EPwm1Regs.AQCTLB.bit.ZRO = AQ_SET;
			EPwm1Regs.CMPB = (Uint16)((_IQ17mpyIQX(s_right_motor.q17_pid_out_term, 17, PWM_CONVERT, 30)) >> 17);
		}
		else
		{
			if(s_right_motor.q17_pid_out_term < MIN_PID_OUT)
				s_right_motor.q17_pid_out_term = MIN_PID_OUT;

			EPwm1Regs.AQCTLA.bit.ZRO = AQ_SET;
			EPwm1Regs.AQCTLB.bit.ZRO = AQ_CLEAR;
			EPwm1Regs.CMPA.half.CMPA = (Uint16)((int16)((_IQ17mpyIQX(s_right_motor.q17_pid_out_term, 17, PWM_CONVERT, 30)) >> 17)  * (-1));
		}
		
		if( s_left_motor.q17_pid_out_term >= _IQ17(0.0) )
		{
			if( s_left_motor.q17_pid_out_term > MAX_PID_OUT )
				s_left_motor.q17_pid_out_term = MAX_PID_OUT;
			
			EPwm2Regs.AQCTLA.bit.ZRO = AQ_SET;
			EPwm2Regs.AQCTLB.bit.ZRO = AQ_CLEAR;
			EPwm2Regs.CMPA.half.CMPA = (Uint16)((_IQ17mpyIQX(s_left_motor.q17_pid_out_term, 17, PWM_CONVERT, 30)) >> 17);
		}
		else
		{
			if(s_left_motor.q17_pid_out_term < MIN_PID_OUT )
				s_left_motor.q17_pid_out_term = MIN_PID_OUT;
			
			EPwm2Regs.AQCTLA.bit.ZRO = AQ_CLEAR;
			EPwm2Regs.AQCTLB.bit.ZRO = AQ_SET;
			EPwm2Regs.CMPB = (Uint16)((int16)((_IQ17mpyIQX(s_left_motor.q17_pid_out_term, 17, PWM_CONVERT, 30)) >> 17) * (-1));
		}
	}
#endif
#if 0
	g_u16motortic++;
	gDiffAdjCnt++;
	s_right_motor.U16Tick++;	
	s_left_motor.U16Tick++;
	gUserTimeCnt++;
	utimetick++;
#endif
	CpuTimer2Regs.TCR.bit.TRB = 1;
	StartCpuTimer0();// sensor int start -- sensor shoot
}

// motor_vel = cmd_vel.linear_vel - cmd_vel.angular_vel * robot_width/2 
static inline void _inline_move_to_func(CommandVelocity *p_cmd_vel, _iq17 *p_q17_temp, Uint16 run_type)
{
	// run type : 0(tr45), 1(tr90), 2(tr135), 3(tr180), 4(tl45), 5(tl90), 6(tl135), 7(tl180), 8(str)
	if(run_type == STR)
	{
		p_cmd_vel->q17_angular = (*p_q17_temp) = _IQ17(0.0);

		s_left_motor.q17_user_distance = s_right_motor.q17_user_distance = BLOCK_WIDTH;
	}
	else
	{
		// if run type is left, angular velocity is nagative number.
		if(run_type < TL45)	// right turn
		{
			p_cmd_vel->q17_angular = _IQ17div(p_cmd_vel->q17_linear, HALF_BLOCK_WIDTH);
			(*p_q17_temp) = _IQ17mpy(p_cmd_vel->q17_angular, ROBOT_WIDTH_DIV2);

			// th * block_width_half = user_dist_about_robot_mid
			// user_dist_about_robot_mid / 
			if(run_type < TR135)
			{
				if(run_type == TR45)
				{
					s_left_motor.q17_user_distance;
					s_right_motor.q17_user_distance;
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
			p_cmd_vel->q17_angular = -_IQ17div(p_cmd_vel->q17_linear, HALF_BLOCK_WIDTH);
			(*p_q17_temp) = _IQ17mpy(p_cmd_vel->q17_angular, ROBOT_WIDTH_DIV2);
		}
	}

	s_left_motor.q17_distance_sum = s_right_motor.q17_distance_sum = _IQ17(0.0);
}

void move_to_stop(Uint16 run_type)
{
	CommandVelocity cmd_vel;
	_iq17 q17_temp;

	StopCpuTimer2();
	
	cmd_vel.q17_linear	= _IQ17(0.0);

	_inline_move_to_func(&cmd_vel, &q17_temp, run_type);

	s_right_motor.q17_decel_velocity	= s_right_motor.q17_user_velocity	= cmd_vel.q17_linear + q17_temp;
	s_left_motor.q17_decel_velocity		= s_left_motor.q17_user_velocity	= cmd_vel.q17_linear - q17_temp;

	StartCpuTimer2();

}

void move_to_move(_iq17 tar_vel, Uint16 run_type, Uint16 restore)
{
	CommandVelocity cmd_vel;
	_iq17 q17_temp;

	StopCpuTimer2();
	
	cmd_vel.q17_linear	= tar_vel;

	_inline_move_to_func(&cmd_vel, &q17_temp, run_type);

	if(restore)
	{
		s_right_motor.q17_decel_velocity	= s_right_motor.q17_user_velocity;
		s_left_motor.q17_decel_velocity		= s_left_motor.q17_user_velocity;

		s_right_motor.q17_user_velocity		= cmd_vel.q17_linear + q17_temp;
		s_left_motor.q17_user_velocity		= cmd_vel.q17_linear - q17_temp;
	}
	else
	{
		s_right_motor.q17_decel_velocity	= s_right_motor.q17_user_velocity	= cmd_vel.q17_linear + q17_temp;
		s_left_motor.q17_decel_velocity		= s_left_motor.q17_user_velocity	= cmd_vel.q17_linear - q17_temp;
	}

	StartCpuTimer2();
}
