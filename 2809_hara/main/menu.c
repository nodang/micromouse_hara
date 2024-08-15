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

static void _SensorValue(void)
{
	int16 sw_cnt = 0;
	const int16 kNum = SEN_NUM - 1;

	ACTIVATE_SENSOR;

	while(SW_U)
	{
		if(sw_cnt > kNum)	sw_cnt = 0;
		else if(sw_cnt < 0)	sw_cnt = kNum;

		if(g_timer_500u_u32 > 0)
		{
		VFDPrintf("%1d | %4ld", sw_cnt, g_s_sen[sw_cnt].s_dist.value_q17 >> 17);
		TxPrintf(" %4u | %4u | %4u | %4u | %4u | %4u | %4u | %4u \n",
				LBS.value_u16,
					LFS.value_u16,
						L45.value_u16,
							LF.value_u16,
									RF.value_u16,
										R45.value_u16,
											RFS.value_u16,
												RBS.value_u16);
		}
		g_timer_500u_u32 = 0;
	
		if(!SW_R)		{ DELAY_US(SW_DELAY);	sw_cnt++; }
		else if(!SW_L)	{ DELAY_US(SW_DELAY);	sw_cnt--; }
	}


	DEACTIVATE_SENSOR;
	
	DELAY_US(SW_DELAY);
}

#define CHECK_FLAG_ARRAY_NUM 9
static void _FlagArray(void)
{
/*
	Uint16 pass_criteria[] = { FALSE };
	const char *kVfdChar[] = { "EstD" };
	
	int16 sw_cnt = 0;
	const int16 kNum = sizeof(pass_criteria) - 1;

	pass_criteria[0] = g_s_flags.est_dist_b == ON ? TRUE : FALSE;

	while(SW_U)
	{
		if(sw_cnt > kNum)	sw_cnt = 0;
		else if(sw_cnt < 0)	sw_cnt = kNum;

		if(SW_D)
		{
			VFDPrintf("%1d:%1d %c%c%c%c", kNum, sw_cnt,
				kVfdChar[sw_cnt][0], 
					kVfdChar[sw_cnt][1],
						kVfdChar[sw_cnt][2],
							kVfdChar[sw_cnt][3]);
		}
		else
		{
			VFDPrintf("%1d:%1d %s", kNum, sw_cnt,
				pass_criteria[sw_cnt] == TRUE ? "PASS" : "FAIL");
		}		

		if(!SW_R)		{ DELAY_US(SW_DELAY);	sw_cnt++; }
		else if(!SW_L)	{ DELAY_US(SW_DELAY);	sw_cnt--; }
	}
*/
	VFDPrintf("made yet");
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
		_SensorValue, _FlagArray, _Utils
	};

	static const char *kMenuChar_[] = {
		"senValue",	"flag Arr",	"utils  "
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
	const int32 kParamMax[] = { MAX_VELO };
	const int32 kParamMin[] = { MIN_VELO };
	
	Uint16 sw_cnt = 0;
	const int16 kNum = VEL_NUM - 1;

	while(SW_U)
	{
		if(*p_param[sw_cnt] > kParamMax[sw_cnt])		*p_param[sw_cnt] = kParamMax[sw_cnt];
		else if(*p_param[sw_cnt] < kParamMin[sw_cnt])	*p_param[sw_cnt] = kParamMin[sw_cnt];
	
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
	const Uint16 kParamMax[] = { MAX_ACC };
	const Uint16 kParamMin[] = { MIN_ACC };

	Uint16 sw_cnt = 0;
	const int16 kNum = ACC_NUM - 1;

	while(SW_U)
	{
		if(*p_param[sw_cnt] > kParamMax[sw_cnt])		*p_param[sw_cnt] = kParamMax[sw_cnt];
		else if(*p_param[sw_cnt] < kParamMin[sw_cnt])	*p_param[sw_cnt] = kParamMin[sw_cnt];
	
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
#define PID_MAX 1000
#define PID_MIM 0
static void _MotorPID(void)
{
	Uint32 *p_param[] = { &g_motor_kp_u32, &g_motor_ki_u32, &g_motor_kd_u32 };
	const char *kVfdChar[] = { "kp", "ki", "kd" };
	const Uint32 kParamMax[] = { PID_MAX, PID_MAX, PID_MAX };
	const Uint32 kParamMin[] = { PID_MIM, PID_MIM, PID_MIM };

	Uint16 sw_cnt = 0;
	const int16 kNum = PID_NUM - 1;

	while(SW_U)
	{
		if(*p_param[sw_cnt] > kParamMax[sw_cnt])		*p_param[sw_cnt] = kParamMax[sw_cnt];
		else if(*p_param[sw_cnt] < kParamMin[sw_cnt])	*p_param[sw_cnt] = kParamMin[sw_cnt];
	
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

	WriteMotorData();

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
#define RESOLUTION_TEST_ACC	1000
static void _TestMotor(void)
{
	int32 test_vel_i32 = 0, test_acc_i32 = 0;
	_iq17 target_test_vel_q17 = _IQ17(0.0);
	_iq15 target_test_acc_q15 = _IQ15(0.0);

	while(SW_U)
	{
		// set test velocity 
		while(SW_U && SW_D)
		{
			if(test_vel_i32 > MAX_VELO)			test_vel_i32 = MAX_VELO;
			else if(test_vel_i32 < MIN_VELO)	test_vel_i32 = MIN_VELO;
		
			VFDPrintf("Vel%5ld", test_vel_i32);

			if(!SW_R)		{ DELAY_US(SW_DELAY);	test_vel_i32 += RESOLUTION_TEST_VEL; }
			else if(!SW_L)	{ DELAY_US(SW_DELAY);	test_vel_i32 -= RESOLUTION_TEST_VEL; }
		}
		while(!SW_D);
		if(!SW_U) continue;		// escape the test function
		DELAY_US(SW_DELAY);
		
		// set test acceleration 
		while(SW_U && SW_D)
		{
			if(test_acc_i32 > MAX_ACC) 		test_acc_i32 = MAX_ACC;
			else if(test_acc_i32 < MIN_ACC)	test_acc_i32 = MIN_ACC;
		
			VFDPrintf("Acc%5ld", test_acc_i32);

			if(!SW_R)		{ DELAY_US(SW_DELAY);	test_acc_i32 += RESOLUTION_TEST_ACC; }
			else if(!SW_L)	{ DELAY_US(SW_DELAY);	test_acc_i32 -= RESOLUTION_TEST_ACC; }
		}
		while(!SW_D);
		if(!SW_U) continue;		// escape the test function
		DELAY_US(SW_DELAY);

		// motor test logic
		InitMotor();
	
		VFDPrintf("Testing.");
		TxPrintf("Testing...\n");

		target_test_vel_q17 = test_vel_i32 << 17;
		
		g_s_right_motor.s_speed.target_vel_q17 = target_test_vel_q17;
		g_s_left_motor.s_speed.target_vel_q17 = target_test_vel_q17;

		target_test_acc_q15 = test_acc_i32 << 15;
		
		g_s_right_motor.s_speed.accel_q15 = target_test_acc_q15;
		g_s_left_motor.s_speed.accel_q15 = target_test_acc_q15;
		
		ACTIVATE_MOTOR;			

		// accelerate motor speed
		while(SW_U)
		{
			TxPrintf("tv: %5ld, cvl: %8.2lf, cvr: %8.2lf, Rle: %4u, Rre: %4u, le: %4d, re: %4d\n", 
				test_vel_i32,
				_IQ17toF(g_s_left_motor.s_speed.curr_vel_avg_q17),
				_IQ17toF(g_s_right_motor.s_speed.curr_vel_avg_q17),
				g_s_left_motor.s_qep.sample_u16,
				g_s_right_motor.s_qep.sample_u16,
				g_s_left_motor.s_qep.sample_i16,
				g_s_right_motor.s_qep.sample_i16
			);
		}

		g_s_right_motor.s_speed.target_vel_q17 = _IQ17(0.0);
		g_s_left_motor.s_speed.target_vel_q17 = _IQ17(0.0);

		// decelerate motor speed
		while(g_s_left_motor.s_speed.curr_vel_avg_q17 > _IQ17(0.0)
		|| g_s_left_motor.s_speed.curr_vel_avg_q17 > _IQ17(0.0))
		{			
			TxPrintf("tv: %5ld, cvl: %8.2lf, cvr: %8.2lf, Rle: %4u, Rre: %4u, le: %4d, re: %4d\n", 
				test_vel_i32,
				_IQ17toF(g_s_left_motor.s_speed.curr_vel_avg_q17),
				_IQ17toF(g_s_right_motor.s_speed.curr_vel_avg_q17),
				g_s_left_motor.s_qep.sample_u16,
				g_s_right_motor.s_qep.sample_u16,
				g_s_left_motor.s_qep.sample_i16,
				g_s_right_motor.s_qep.sample_i16
			);
		}

		DEACTIVATE_MOTOR;

		VFDPrintf("TestOver");
		TxPrintf("Test is over.\n");

		while(!SW_U);
	}
	
	DELAY_US(SW_DELAY);
}

static void _CalibrateRunningParam(void)
{
	VFDPrintf("made yet");
	DELAY_US(SW_DELAY);
}

#define TEST_TARGET_DIST	_IQ17(1000.0)
static void _TestMove2Stop(void)
{
	int32	test_vel_i32 = 0,
			test_acc_i32 = 0;
	_iq17	target_dist_q17 = _IQ17(0.0);

	while(SW_U)
	{
		// set test velocity 
		while(SW_U && SW_D)
		{
			if(test_vel_i32 > MAX_VELO)			test_vel_i32 = MAX_VELO;
			else if(test_vel_i32 < MIN_VELO)	test_vel_i32 = MIN_VELO;
		
			VFDPrintf("Vel%5ld", test_vel_i32);

			if(!SW_R)		{ DELAY_US(SW_DELAY);	test_vel_i32 += RESOLUTION_TEST_VEL; }
			else if(!SW_L)	{ DELAY_US(SW_DELAY);	test_vel_i32 -= RESOLUTION_TEST_VEL; }
		}
		while(!SW_D);
		if(!SW_U) continue;		// escape the test function
		DELAY_US(SW_DELAY);
		
		// set test acceleration 
		while(SW_U && SW_D)
		{
			if(test_acc_i32 > MAX_ACC) 		test_acc_i32 = MAX_ACC;
			else if(test_acc_i32 < MIN_ACC)	test_acc_i32 = MIN_ACC;
		
			VFDPrintf("Acc%5ld", test_acc_i32);

			if(!SW_R)		{ DELAY_US(SW_DELAY);	test_acc_i32 += RESOLUTION_TEST_ACC; }
			else if(!SW_L)	{ DELAY_US(SW_DELAY);	test_acc_i32 -= RESOLUTION_TEST_ACC; }
		}
		while(!SW_D);
		if(!SW_U) continue;		// escape the test function
		DELAY_US(SW_DELAY);

		// motor test logic
		InitMotor();
	
		VFDPrintf("Testing.");
		TxPrintf("Testing...\n");

		if(test_vel_i32 < 0)
			target_dist_q17 = -TEST_TARGET_DIST;
		else if(test_vel_i32 > 0)
			target_dist_q17 = TEST_TARGET_DIST;
		else
			target_dist_q17 = _IQ17(0.0);
		
		ACTIVATE_MOTOR;
		MoveToStop(target_dist_q17, test_acc_i32, test_vel_i32 << 17);

		while(SW_U)
		{
			if(test_vel_i32 < 0)
				if(g_s_left_motor.s_speed.curr_vel_avg_q17 >= _IQ17(0.0) && g_s_left_motor.s_speed.curr_vel_avg_q17 >= _IQ17(0.0)
				&& !g_s_left_motor.s_speed.decel_b && !g_s_right_motor.s_speed.decel_b)
					break;							
			else if(test_vel_i32 > 0)
				if(g_s_left_motor.s_speed.curr_vel_avg_q17 <= _IQ17(0.0) && g_s_left_motor.s_speed.curr_vel_avg_q17 <= _IQ17(0.0)
				&& !g_s_left_motor.s_speed.decel_b && !g_s_right_motor.s_speed.decel_b)
					break;
			
			TxPrintf("tvl: %8.2lf, tvr: %8.2lf, cvl: %8.2lf, cvr: %8.2lf, ltd: %8.2lf, rtd: %8.2lf, lg: %8.2lf, rg: %8.2lf\n", 
				_IQ17toF(g_s_left_motor.s_speed.next_vel_q17),
				_IQ17toF(g_s_right_motor.s_speed.next_vel_q17),
				_IQ17toF(g_s_left_motor.s_speed.curr_vel_avg_q17),
				_IQ17toF(g_s_right_motor.s_speed.curr_vel_avg_q17),
				_IQ17toF(g_s_left_motor.s_dist.target_q17),
				_IQ17toF(g_s_right_motor.s_dist.target_q17),
				_IQ17toF(g_s_left_motor.s_dist.gone_q17),
				_IQ17toF(g_s_right_motor.s_dist.gone_q17)
			);
		}

		DEACTIVATE_MOTOR;

		VFDPrintf("TestOver");
		TxPrintf("Test is over.\n");

		while(!SW_U);
	}
}

#define TEST_TH_ARRAY_NUM	9
static void _TestInPlaceTurn(void)
{
	int32	test_vel_i32 = 0,
			test_acc_i32 = 0,
			test_th_i32[] = { -180, -135, -90, -45, 0, 45, 90, 135, 180 },
			test_th_ind = 4;
	_iq17 	target_th_q17;

	while(SW_U)
	{
		// set test velocity 
		while(SW_U && SW_D)
		{
			if(test_vel_i32 > MAX_VELO)			test_vel_i32 = MAX_VELO;
			else if(test_vel_i32 < MIN_VELO)	test_vel_i32 = MIN_VELO;
		
			VFDPrintf("Vel%5ld", test_vel_i32);

			if(!SW_R)		{ DELAY_US(SW_DELAY);	test_vel_i32 += RESOLUTION_TEST_VEL; }
			else if(!SW_L)	{ DELAY_US(SW_DELAY);	test_vel_i32 -= RESOLUTION_TEST_VEL; }
		}
		while(!SW_D);
		if(!SW_U) continue;		// escape the test function
		DELAY_US(SW_DELAY);
		
		// set test acceleration 
		while(SW_U && SW_D)
		{
			if(test_acc_i32 > MAX_ACC) 		test_acc_i32 = MAX_ACC;
			else if(test_acc_i32 < MIN_ACC)	test_acc_i32 = MIN_ACC;
		
			VFDPrintf("Acc%5ld", test_acc_i32);

			if(!SW_R)		{ DELAY_US(SW_DELAY);	test_acc_i32 += RESOLUTION_TEST_ACC; }
			else if(!SW_L)	{ DELAY_US(SW_DELAY);	test_acc_i32 -= RESOLUTION_TEST_ACC; }
		}
		while(!SW_D);
		if(!SW_U) continue;		// escape the test function
		DELAY_US(SW_DELAY);

		// set test theta
		while(SW_U && SW_D)
		{
			if(test_th_ind >= TEST_TH_ARRAY_NUM) 	test_th_ind = TEST_TH_ARRAY_NUM;
			else if(test_th_ind < 0)				test_th_ind = 0;
		
			VFDPrintf("Th %+5ld", test_th_i32[test_th_ind]);

			if(!SW_R)		{ DELAY_US(SW_DELAY);	test_th_ind++; }
			else if(!SW_L)	{ DELAY_US(SW_DELAY);	test_th_ind--; }
		}
		while(!SW_D);
		if(!SW_U) continue;		// escape the test function
		DELAY_US(SW_DELAY);

		// motor test logic
		InitMotor();
	
		VFDPrintf("Testing.");
		TxPrintf("Testing...\n");

		target_th_q17 = _IQ17mpyIQX(test_th_i32[test_th_ind], 0, _IQ30(0.017453292), 30);
		
		ACTIVATE_MOTOR;
		InPlaceTurn(target_th_q17, test_acc_i32, test_vel_i32 << 17);

		while(SW_U)
		{
			TxPrintf("tvl: %8.2lf, tvr: %8.2lf, cvl: %8.2lf, cvr: %8.2lf, ltd: %8.2lf, rtd: %8.2lf, lg: %8.2lf, rg: %8.2lf\n", 
				_IQ17toF(g_s_left_motor.s_speed.next_vel_q17),
				_IQ17toF(g_s_right_motor.s_speed.next_vel_q17),
				_IQ17toF(g_s_left_motor.s_speed.curr_vel_avg_q17),
				_IQ17toF(g_s_right_motor.s_speed.curr_vel_avg_q17),
				_IQ17toF(g_s_left_motor.s_dist.target_q17),
				_IQ17toF(g_s_right_motor.s_dist.target_q17),
				_IQ17toF(g_s_left_motor.s_dist.gone_q17),
				_IQ17toF(g_s_right_motor.s_dist.gone_q17)
			);
		}

		DEACTIVATE_MOTOR;

		VFDPrintf("Th:%5.2lf", _IQ17toF(_IQ17mpy(g_s_epi.th_q17, _IQ17(57.295779513082320876798154814105))));
		TxPrintf("Test is over. Result: %lf\n", _IQ17toF(_IQ17mpy(g_s_epi.th_q17, _IQ17(57.295779513082320876798154814105))));

		while(!SW_U);
	}
}


#define TR_MENU_NUM	2
static void _TestRunning(void)
{
	static void (*menu_func_[])() = {
		_TestMove2Stop, _TestInPlaceTurn
	};

	static const char *kMenuChar_[] = {
		"mov2stop", "InPl Trn"
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
	init_map();
	search_race();
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
		CalibrateSensorValue, _CalibrateMotorParam, _CalibrateRunningParam
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
