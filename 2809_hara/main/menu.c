//###########################################################################
//
// FILE		: Menu.c
//
// TITLE	: Menu c file.
//
// Author	: Yuk Keun Ho
//
// Company	: Maze & Hz
//
//###########################################################################

#include "DSP280x_Device.h"     // DSP280x Headerfile Include File
#include "DSP280x_Examples.h"   // DSP280x Examples Include File
#include "Main.h"
#include "Menu.h"

//===========================================================================//
//	Static Function of Low Level
//===========================================================================//

static void _CalibrateSensorValue(void)
{
	set_sensor();
	
	VFDPrintf("made yet");
}

#define SEN_NUM	8
static void _SensorValue(void)
{
	int16 sw_cnt = 0;
	const int16 kNum = SEN_NUM - 1;

	g_s_flags.sensor_ir_b = ON;
	StartCpuTimer2();

	while(SW_U)
	{
		if(sw_cnt > kNum)	sw_cnt = 0;
		else if(sw_cnt < 0)	sw_cnt = kNum;

		VFDPrintf("%1d | %4ld", sw_cnt, _IQ17toF(g_s_sen[sw_cnt].position_q17));
		TxPrintf(" %4u | %4u | %4u | %4u | %4u | %4u | %4u | %4u \n",
				g_sp_sen_lbs->value_u16,
					g_sp_sen_lfs->value_u16,
						g_sp_sen_l45->value_u16,
							g_sp_sen_lf->value_u16,
											g_sp_sen_rf->value_u16,
												g_sp_sen_r45->value_u16,
													g_sp_sen_rfs->value_u16,
														g_sp_sen_rbs->value_u16);
	
		if(!SW_R)		{ DELAY_US(SW_DELAY);	sw_cnt++; }
		else if(!SW_L)	{ DELAY_US(SW_DELAY);	sw_cnt--; }
	}

	StopCpuTimer2();
	g_s_flags.sensor_ir_b = OFF;
	
	DELAY_US(SW_DELAY);
}

#define DIST_CRETIREA	_IQ17(90.0)
static void _SensorArray(void)
{
	g_s_flags.sensor_ir_b = ON;
	StartCpuTimer2();

	while(SW_U)
	{
		VFDPrintf("%1u%1u%1u%1u%1u%1u%1u%1u",
				g_sp_sen_lbs->position_q17 > DIST_CRETIREA,
					g_sp_sen_lfs->position_q17 > DIST_CRETIREA,
						g_sp_sen_l45->position_q17 > DIST_CRETIREA,
							g_sp_sen_lf->position_q17 > DIST_CRETIREA,
								g_sp_sen_rf->position_q17 > DIST_CRETIREA,
									g_sp_sen_r45->position_q17 > DIST_CRETIREA,
										g_sp_sen_rfs->position_q17 > DIST_CRETIREA,
											g_sp_sen_rbs->position_q17 > DIST_CRETIREA);
	}

	StopCpuTimer2();
	g_s_flags.sensor_ir_b = OFF;
	
	DELAY_US(SW_DELAY);
}

static void _Utils(void)
{
	Uint32	cycle_cnt = 0, buzz_on_cnt = 0;
	BOOL	cycle_flag = 0, buzz_on_flag = 0;

	VFDPrintf("        ");
	
	while(SW_U)
	{
		//TxPrintf("%lu, %lu, %u, %u\n", cycle_cnt, buzz_on_cnt, cycle_flag, buzz_on_flag);
		// Utils turn on a cycle every 0.5 seconds 
		if(cycle_cnt < 500000)	
		{
			cycle_cnt++;
		}
		else
		{
			cycle_cnt = 0;
			cycle_flag = !cycle_flag;
			buzz_on_flag = 0;
		}

		if(!cycle_flag)
		{
			LED_F_ON;  LED_R_ON;  LED_L_ON;  BUZZ_ON;
			
			if(buzz_on_flag == 0)	buzz_on_flag = 1;
		}
		else
		{
			LED_F_OFF; LED_R_OFF; LED_L_OFF;
		}

		// Buzz turns on for 0.05 seconds
		if(buzz_on_flag == 1 && buzz_on_cnt < 25000)	
		{
			buzz_on_cnt++;
		}
		else if(buzz_on_flag == 1)
		{
			BUZZ_OFF;
			buzz_on_cnt = 0;
			buzz_on_flag = 2;
		}
	}

	LED_F_OFF; LED_R_OFF; LED_L_OFF; BUZZ_OFF;

	DELAY_US(SW_DELAY);
}

#define TS_MEMU_NUM	3
static void _TestSensor(void)
{
	static void (*menu_func_[])() = {
		_SensorValue, _SensorArray, _Utils
	};

	static const char *kMenuChar_[] = {
		"senValue",	"senArray",	"utilsON"
	};

	int16 menu_cnt_i16 = 0;
	const int16 kNum = TS_MEMU_NUM - 1;

	while(SW_U)
	{
		// fail safety
		// menu_cnt is not bigger than the number of function
		// and cannot be any negative number.
		if(menu_cnt_i16 > kNum)		menu_cnt_i16 = 0;
		else if(menu_cnt_i16 < 0)	menu_cnt_i16 = kNum;

		VFDPrintf((char*)kMenuChar_[menu_cnt_i16]);

		// entry the function
		if(!SW_D)	{ DELAY_US(SW_DELAY);	menu_func_[menu_cnt_i16](); }
		// Menu count up or down
		else if(!SW_R)	{ DELAY_US(SW_DELAY);	menu_cnt_i16++; }
		else if(!SW_L)	{ DELAY_US(SW_DELAY);	menu_cnt_i16--; }
	}

	DELAY_US(SW_DELAY);
}

#define VEL_NUM	1
#define VEL_RESOLUTION	50
static void _Velocity(void)
{
	int32 *p_param[] = { &g_ref_vel_i32 };
	const char *kVfdChar[] = { "ref" };
	
	Uint16 sw_cnt = 0;
	const int16 kNum = VEL_NUM - 1;

	while(SW_U)
	{
		VFDPrintf("%c%c%c%+5ld", kVfdChar[sw_cnt][0], kVfdChar[sw_cnt][1], kVfdChar[sw_cnt][2], *p_param[sw_cnt]);

		if (!SW_D)	
		{
			DELAY_US(SW_DELAY);

			if(sw_cnt < kNum)	sw_cnt++;
			else				sw_cnt = 0;
		}
		else if(!SW_R)	{ DELAY_US(SW_DELAY);	*p_param[sw_cnt] += VEL_RESOLUTION; }
		else if(!SW_L)	{ DELAY_US(SW_DELAY);	*p_param[sw_cnt] -= VEL_RESOLUTION; }
	}

	DELAY_US(SW_DELAY);
}

#define ACC_NUM	1
#define ACC_RESOLUTION	500
static void _Accelaration(void)
{
	Uint16 *p_param[] = { &g_accel_u16 };
	const char *kVfdChar[] = { "acc" };

	Uint16 sw_cnt = 0;
	const int16 kNum = ACC_NUM - 1;

	while(SW_U)
	{
		VFDPrintf("%c%c%c%5u", kVfdChar[sw_cnt][0], kVfdChar[sw_cnt][1], kVfdChar[sw_cnt][2], *p_param[sw_cnt]);

		if (!SW_D)	
		{
			DELAY_US(SW_DELAY);

			if(sw_cnt < kNum)	sw_cnt++;
			else				sw_cnt = 0;
		}
		else if(!SW_R)	{ DELAY_US(SW_DELAY);	*p_param[sw_cnt] += ACC_RESOLUTION; }
		else if(!SW_L)	{ DELAY_US(SW_DELAY);	*p_param[sw_cnt] -= ACC_RESOLUTION; }
	}

	DELAY_US(SW_DELAY);
}

#define PID_NUM	3
#define PID_RESOLUTION	1
static void _MotorPID(void)
{
	Uint32 *p_param[] = { &g_motor_kp_u32, &g_motor_ki_u32, &g_motor_kd_u32 };
	const char *kVfdChar[] = { "kp", "ki", "kd" };

	Uint16 sw_cnt = 0;
	const int16 kNum = PID_NUM - 1;

	while(SW_U)
	{
		VFDPrintf("%c%c%6lu", kVfdChar[sw_cnt][0], kVfdChar[sw_cnt][1], *p_param[sw_cnt]);

		if (!SW_D)	
		{
			DELAY_US(SW_DELAY);

			if(sw_cnt < kNum)	sw_cnt++;
			else				sw_cnt = 0;
		}
		else if(!SW_R)	{ DELAY_US(SW_DELAY_HALF);	*p_param[sw_cnt] += PID_RESOLUTION; }
		else if(!SW_L)	{ DELAY_US(SW_DELAY_HALF);	*p_param[sw_cnt] -= PID_RESOLUTION; }
	}

	DELAY_US(SW_DELAY);
}

#define CMP_MENU_NUM	3
static void _CalibrateMotorParam(void)
{
	static void (*menu_func_[])() = {
		_Velocity, _Accelaration, _MotorPID
	};

	static const char *kMenuChar_[] = {
		"velocity",	"accel   ",	"PID     "
	};

	int16 menu_cnt_i16 = 0;
	const int16 kNum = CMP_MENU_NUM - 1;

	while(SW_U)
	{
		// fail safety
		// menu_cnt is not bigger than the number of function
		// and cannot be any negative number.
		if(menu_cnt_i16 > kNum)		menu_cnt_i16 = 0;
		else if(menu_cnt_i16 < 0)	menu_cnt_i16 = kNum;

		VFDPrintf((char*)kMenuChar_[menu_cnt_i16]);

		// entry the function
		if(!SW_D)	{ DELAY_US(SW_DELAY);	menu_func_[menu_cnt_i16](); }
		// Menu count up or down
		else if(!SW_R)	{ DELAY_US(SW_DELAY);	menu_cnt_i16++; }
		else if(!SW_L)	{ DELAY_US(SW_DELAY);	menu_cnt_i16--; }
	}

	DELAY_US(SW_DELAY);
}

#define RESOLUTION_TEST_VEL	500
#define MOTOR_SPEED_CAN_NOT_REACH_TARGET_ERROR_CNT 100000
static void _TestMotor(void)
{
	int32 test_vel_i32 = 0;
	_iq17 target_test_vel_q17 = _IQ17(0.0);
	Uint32 timer_cnt_u32 = 0;

	while(SW_U)
	{
		if(test_vel_i32 > MAX_VELO)			test_vel_i32 = MAX_VELO;
		else if(test_vel_i32 < MIN_VELO)	test_vel_i32 = MIN_VELO;
	
		VFDPrintf("Vel%5ld", test_vel_i32);

		if(!SW_R)		{ DELAY_US(SW_DELAY);	test_vel_i32 += RESOLUTION_TEST_VEL; }
		else if(!SW_L)	{ DELAY_US(SW_DELAY);	test_vel_i32 -= RESOLUTION_TEST_VEL; }
		else if(!SW_D)
		{
			if(timer_cnt_u32 >= MOTOR_SPEED_CAN_NOT_REACH_TARGET_ERROR_CNT)
			{
				VFDPrintf("Cannot..");
				TxPrintf("Cannot test now. Error was detected\n");
			}
			else
			{
				VFDPrintf("Testing.");
				TxPrintf("Testing...\n");

				timer_cnt_u32 = 0;
				target_test_vel_q17 = _IQ17(test_vel_i32);
				
				g_s_right_motor.s_speed.target_vel_q17 = target_test_vel_q17;
				g_s_left_motor.s_speed.target_vel_q17 = target_test_vel_q17;
				
				ACTIVATE_MOTOR;

				while(g_s_left_motor.s_speed.curr_vel_q17 != target_test_vel_q17
					&& g_s_right_motor.s_speed.curr_vel_q17 != target_test_vel_q17)
				{
					TxPrintf("tv: %5ld, cvl: %5.2lf, cvr: %5.2lf, le: %4d re: %4d\n", 
						test_vel_i32,
						_IQ17toF(g_s_left_motor.s_speed.curr_vel_q17),
						_IQ17toF(g_s_right_motor.s_speed.curr_vel_q17),
						g_s_left_motor.s_qep.sample_i16,
						g_s_right_motor.s_qep.sample_i16
					);
				
					timer_cnt_u32++;

					if(timer_cnt_u32 >= MOTOR_SPEED_CAN_NOT_REACH_TARGET_ERROR_CNT)
						break;
				}

				if(timer_cnt_u32 >= MOTOR_SPEED_CAN_NOT_REACH_TARGET_ERROR_CNT)
				{
					VFDPrintf("Error...");
					TxPrintf("Motor speed cannot reach target speed.\n");
				}
				else
				{
					VFDPrintf("Ending..");
					TxPrintf("Ending...\n");
				}

				g_s_right_motor.s_speed.target_vel_q17 = _IQ17(0.0);
				g_s_left_motor.s_speed.target_vel_q17 = _IQ17(0.0);

				while(g_s_left_motor.s_speed.curr_vel_q17 != _IQ17(0.0)
					&& g_s_right_motor.s_speed.curr_vel_q17 != _IQ17(0.0))
				{			
					TxPrintf("tv: %5ld, cvl: %5.2lf, cvr: %5.2lf, le: %4d re: %4d\n", 
						test_vel_i32,
						_IQ17toF(g_s_left_motor.s_speed.curr_vel_q17),
						_IQ17toF(g_s_right_motor.s_speed.curr_vel_q17),
						g_s_left_motor.s_qep.sample_i16,
						g_s_right_motor.s_qep.sample_i16
					);
				}

				DEACTIVATE_MOTOR;

				VFDPrintf("TestOver");
				TxPrintf("Test is over.\n");
			}
		}
	}
	
	DELAY_US(SW_DELAY);
}

static void _CalibrateRunningParam(void)
{
	VFDPrintf("made yet");
	DELAY_US(SW_DELAY);
}

static void _Move2Stop(void)
{
	ACTIVATE_MOTOR;

	VFDPrintf("m2sREADY");
	while(SW_D);
	DELAY_US(SW_DELAY);
	
	move_to_stop(_IQ17(BLOCK_WIDTH),_IQ15(3000.0), _IQ15(650.0));
	
	while(SW_U)
	{
	}

	DEACTIVATE_MOTOR;

	DELAY_US(SW_DELAY);
}

#define TR_MENU_NUM	1
static void _TestRunning(void)
{
	static void (*menu_func_[])() = {
		_Move2Stop
	};

	static const char *kMenuChar_[] = {
		"mov2stop"
	};

	int16 menu_cnt_i16 = 0;
	const int16 kNum = TR_MENU_NUM - 1;

	while(SW_U)
	{
		// fail safety
		// menu_cnt is not bigger than the number of function
		// and cannot be any negative number.
		if(menu_cnt_i16 > kNum)		menu_cnt_i16 = 0;
		else if(menu_cnt_i16 < 0)	menu_cnt_i16 = kNum;

		VFDPrintf((char*)kMenuChar_[menu_cnt_i16]);

		// entry the function
		if(!SW_D)	{ DELAY_US(SW_DELAY);	menu_func_[menu_cnt_i16](); }
		// Menu count up or down
		else if(!SW_R)	{ DELAY_US(SW_DELAY);	menu_cnt_i16++; }
		else if(!SW_L)	{ DELAY_US(SW_DELAY);	menu_cnt_i16--; }
	}

	DELAY_US(SW_DELAY);
}

static void _TestAlgorithm(void)
{
	VFDPrintf("made yet");
	DELAY_US(250000);
}

static void _SearchRun(void)
{	
	VFDPrintf("made yet");
	DELAY_US(250000);
}

static void _FastRun(void)
{	
	VFDPrintf("made yet");
	DELAY_US(250000);
}

//===========================================================================//
//	Static Function of High Level : Group of Consistant Functions
//===========================================================================//

#define RUNFUNC_MENU_NUM	2
static void _RunFunc(void)
{
	static void (*menu_func_[])() = {
		_SearchRun, _FastRun
	};

	static const char *kMenuChar_[] = {
		"  SEARCH", "    FAST"
	};

	int16 menu_cnt_i16 = 0;
	const int16 kNum = RUNFUNC_MENU_NUM - 1;

	while(SW_U)
	{
		// fail safety
		// menu_cnt is not bigger than the number of function
		// and cannot be any negative number.
		if(menu_cnt_i16 > kNum)		menu_cnt_i16 = 0;
		else if(menu_cnt_i16 < 0)	menu_cnt_i16 = kNum;

		VFDPrintf((char*)kMenuChar_[menu_cnt_i16]);

		// entry the function
		if(!SW_D)	{ DELAY_US(SW_DELAY);	menu_func_[menu_cnt_i16](); }
		// Menu count up or down
		else if(!SW_R)	{ DELAY_US(SW_DELAY);	menu_cnt_i16++; }
		else if(!SW_L)	{ DELAY_US(SW_DELAY);	menu_cnt_i16--; }
	}

	DELAY_US(SW_DELAY);
}

#define CALFUNC_MENU_NUM	3
static void _CalibrateParamFunc(void)
{
	static void (*menu_func_[])() = {
		_CalibrateSensorValue, _CalibrateMotorParam, _CalibrateRunningParam
	};

	static const char *kMenuChar_[] = {
		"C SENSOR", "C  MOTOR", "C    RUN"
	};

	int16 menu_cnt_i16 = 0;
	const int16 kNum = CALFUNC_MENU_NUM - 1;

	while(SW_U)
	{
		// fail safety
		// menu_cnt is not bigger than the number of function
		// and cannot be any negative number.
		if(menu_cnt_i16 > kNum)		menu_cnt_i16 = 0;
		else if(menu_cnt_i16 < 0)	menu_cnt_i16 = kNum;

		VFDPrintf((char*)kMenuChar_[menu_cnt_i16]);

		// entry the function
		if(!SW_D)	{ DELAY_US(SW_DELAY);	menu_func_[menu_cnt_i16](); }
		// Menu count up or down
		else if(!SW_R)	{ DELAY_US(SW_DELAY);	menu_cnt_i16++; }
		else if(!SW_L)	{ DELAY_US(SW_DELAY);	menu_cnt_i16--; }
	}

	DELAY_US(SW_DELAY);
}

#define TESTFUNC_MENU_NUM	4
static void _TestFunc(void)
{
	static void (*menu_func_[])() = {
		_TestSensor, _TestMotor, _TestRunning, _TestAlgorithm
	};

	static const char *kMenuChar_[] = {
		"T SENSOR", "T  MOTOR", "T    RUN", "T   ALGO"
	};
	
	int16 menu_cnt_i16 = 0;
	const int16 kNum = TESTFUNC_MENU_NUM - 1;

	while(SW_U)
	{
		// fail safety
		// menu_cnt is not bigger than the number of function
		// and cannot be any negative number.
		if(menu_cnt_i16 > kNum)		menu_cnt_i16 = 0;
		else if(menu_cnt_i16 < 0)	menu_cnt_i16 = kNum;

		VFDPrintf((char*)kMenuChar_[menu_cnt_i16]);

		// entry the function
		if(!SW_D)	{ DELAY_US(SW_DELAY);	menu_func_[menu_cnt_i16](); }
		// Menu count up or down
		else if(!SW_R)	{ DELAY_US(SW_DELAY);	menu_cnt_i16++; }
		else if(!SW_L)	{ DELAY_US(SW_DELAY);	menu_cnt_i16--; }
	}

	DELAY_US(SW_DELAY);
}

//===========================================================================//
//	Extern
//===========================================================================//


#define MENU_NUM	3
void Menu(void)
{
	static void (*menu_func_[])() = {
		_RunFunc, _CalibrateParamFunc, _TestFunc
	};

	const char *kMenuChar_[] = {
		"RUN     ", "CAL     ", "TEST    "
	};

	static int16 menu_cnt_i16_ = 0;
	const int16 kNum = MENU_NUM - 1;

	VFDPrintf("BE READY");
	while(SW_R);
	DELAY_US(SW_DELAY);

	while(TRUE)
	{
		// fail safety
		// menu_cnt is not bigger than the number of function
		// and cannot be any negative number.
		if(menu_cnt_i16_ > kNum)	menu_cnt_i16_ = 0;
		else if(menu_cnt_i16_ < 0)	menu_cnt_i16_ = kNum;

		VFDPrintf((char*)kMenuChar_[menu_cnt_i16_]);

		// entry the function
		if(!SW_D)	{ DELAY_US(SW_DELAY);	menu_func_[menu_cnt_i16_](); }
		// Menu count up or down
		else if(!SW_R)	{ DELAY_US(SW_DELAY);	menu_cnt_i16_++; }
		else if(!SW_L)	{ DELAY_US(SW_DELAY);	menu_cnt_i16_--; }
	}
}
