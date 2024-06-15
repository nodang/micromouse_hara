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
//	Static
//===========================================================================//

static void _CalibrateSensorValue(void)
{
	//set_sensor();
	
	VFDPrintf("made yet");
	DELAY_US(SW_DELAY);
}

static void _TestSensor(void)
{
	VFDPrintf("made yet");
	DELAY_US(SW_DELAY);
}

#define VEL_NUM	1
#define VEL_RESOLUTION	50
static void _Velocity(void)
{
	Uint16 sw_cnt = 0;
	int32 *p_param[] = { &g_ref_vel_i32 };
	const char *kVfdChar[] = { "ref" };

	while(SW_U)
	{
		VFDPrintf("%c%c%c%+4ld", kVfdChar[sw_cnt][0], kVfdChar[sw_cnt][1], kVfdChar[sw_cnt][2], *p_param[sw_cnt]);

		if (!SW_D)	
		{
			DELAY_US(SW_DELAY);

			if(sw_cnt < VEL_NUM)	sw_cnt++;
			else					sw_cnt = 0;
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
	Uint16 sw_cnt = 0;
	Uint16 *p_param[] = { &g_accel_u16 };
	const char *kVfdChar[] = { "acc" };

	while(SW_U)
	{
		VFDPrintf("%c%c%c%5u", kVfdChar[sw_cnt][0], kVfdChar[sw_cnt][1], kVfdChar[sw_cnt][2], *p_param[sw_cnt]);

		if (!SW_D)	
		{
			DELAY_US(SW_DELAY);

			if(sw_cnt < ACC_NUM)	sw_cnt++;
			else					sw_cnt = 0;
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
	Uint16 sw_cnt = 0;
	Uint32 *p_param[] = { &g_motor_kp_u32, &g_motor_ki_u32, &g_motor_kd_u32 };
	const char *kVfdChar[] = { "kp", "ki", "kd" };

	while(SW_U)
	{
		VFDPrintf("%c%c%6ld", kVfdChar[sw_cnt][0], kVfdChar[sw_cnt][1], kVfdChar[sw_cnt][2], *p_param[sw_cnt]);

		if (!SW_D)	
		{
			DELAY_US(SW_DELAY);

			if(sw_cnt < PID_NUM)	sw_cnt++;
			else					sw_cnt = 0;
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
		"calM vel",	"calM acc",	"calM pid"
	};

	static int16 menu_cnt_i16_;
	
	menu_cnt_i16_ = 0;
	while(SW_U)
	{
		// fail safety
		// menu_cnt is not bigger than the number of function
		// and cannot be any negative number.
		if(menu_cnt_i16_ >= CMP_MENU_NUM)	menu_cnt_i16_ = 0;
		else if(menu_cnt_i16_ < 0)			menu_cnt_i16_ = CMP_MENU_NUM - 1;

		VFDPrintf((char*)kMenuChar_[menu_cnt_i16_]);

		// entry the function
		if(!SW_D)
		{
			DELAY_US(SW_DELAY);

			menu_func_[menu_cnt_i16_]();
		}
		// Menu count up or down
		else if(!SW_R)	{ DELAY_US(SW_DELAY);	menu_cnt_i16_++; }
		else if(!SW_L)	{ DELAY_US(SW_DELAY);	menu_cnt_i16_--; }
	}
}

#define RESOLUTION_TEST_VEL	500
static void _TestMotor(void)
{
	int32 test_vel_i32 = 0;

	ACTIVATE_MOTOR;

	while(SW_U)
	{
		VFDPrintf("Vel%+4ld", test_vel_i32);

		if(!SW_R)		{ DELAY_US(SW_DELAY);	test_vel_i32 += RESOLUTION_TEST_VEL; }
		else if(!SW_L)	{ DELAY_US(SW_DELAY);	test_vel_i32 -= RESOLUTION_TEST_VEL; }

		g_s_right_motor.s_speed.target_vel_q17 = test_vel_i32;
		g_s_left_motor.s_speed.target_vel_q17 = test_vel_i32;
	}

	DEACTIVATE_MOTOR;
	
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
		"testRm2s"
	};

	static int16 menu_cnt_i16_;
	
	menu_cnt_i16_ = 0;
	while(SW_U)
	{
		// fail safety
		// menu_cnt is not bigger than the number of function
		// and cannot be any negative number.
		if(menu_cnt_i16_ >= TR_MENU_NUM)	menu_cnt_i16_ = 0;
		else if(menu_cnt_i16_ < 0)			menu_cnt_i16_ = TR_MENU_NUM - 1;

		VFDPrintf((char*)kMenuChar_[menu_cnt_i16_]);

		// entry the function
		if(!SW_D)
		{
			DELAY_US(SW_DELAY);

			menu_func_[menu_cnt_i16_]();
		}
		// Menu count up or down
		else if(!SW_R)	{ DELAY_US(SW_DELAY);	menu_cnt_i16_++; }
		else if(!SW_L)	{ DELAY_US(SW_DELAY);	menu_cnt_i16_--; }
	}

	DELAY_US(SW_DELAY);
}

static void _TestAlgorithm(void)
{
	VFDPrintf("made yet");
	DELAY_US(SW_DELAY);
}

static void _Run(void)
{	
	VFDPrintf("made yet");
	DELAY_US(SW_DELAY);
}

//===========================================================================//
//	Extern
//===========================================================================//

#define MENU_NUM	8
void Menu(void)
{
	static void (*menu_func_[])() = {
		_CalibrateSensorValue,	_TestSensor,
		_CalibrateMotorParam,	_TestMotor,
		_CalibrateRunningParam,	_TestRunning,
		_TestAlgorithm,			_Run
	};

	static const char *kMenuChar_[] = {
		"cal  SEN",		"test SEN",
		"cal  MOT",		"test MOT",
		"cal  RUN",		"test RUN",
		"testALGO",		"     RUN"
	};

	static int16 menu_cnt_i16_;

	VFDPrintf("BE READY");
	while(SW_U);
	DELAY_US(SW_DELAY);

	menu_cnt_i16_ = 0;
	while(TRUE)
	{
		// fail safety
		// menu_cnt is not bigger than the number of function
		// and cannot be any negative number.
		if(menu_cnt_i16_ >= MENU_NUM)	menu_cnt_i16_ = 0;
		else if(menu_cnt_i16_ < 0)		menu_cnt_i16_ = MENU_NUM - 1;

		VFDPrintf((char*)kMenuChar_[menu_cnt_i16_]);

		// entry the function
		if(!SW_D)
		{
			DELAY_US(SW_DELAY);

			init_motor();
			menu_func_[menu_cnt_i16_]();
		}
		// Menu count up or down
		else if(!SW_R)	{ DELAY_US(SW_DELAY);	menu_cnt_i16_++; }
		else if(!SW_L)	{ DELAY_US(SW_DELAY);	menu_cnt_i16_--; }
	}
}
