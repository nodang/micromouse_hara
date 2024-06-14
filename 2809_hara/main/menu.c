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

static void _CalibrateSensorValue()
{
	//set_sensor();
}

static void _TestSensor()
{}

static void _CalibrateMotorParam()
{}

static void _TestMotor()
{}

static void _CalibrateRunningParam()
{}

static void _TestRunning()
{}

static void _TestAlgorithm()
{}

static void _Run()
{}

//===========================================================================//
//	Extern
//===========================================================================//

void menu()
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

	static int16	menu_cnt_i16_ = 0,
					cnt_limit_i16_ = 0;

	VFDPrintf("BE READY");
	while(SW_U);
	DELAY_US(SW_DELAY);

	// fail safety for pointer address error.
	if(sizeof(menu_func_) != sizeof(kMenuChar_))
	{

#if FS_TX_PRINT_FLAG
		TxPrintf("The size of array is different",
				 " between Function array and Character array\n");
#endif

	}
	else
	{
		cnt_limit_i16_ = _IQdiv(sizeof(menu_func_), sizeof(menu_func_[0])) - 1;
	}
	
	while(cnt_limit_i16_)
	{
		// fail safety
		// menu_cnt is not bigger than the number of function
		// and cannot be any negative number.
		if(menu_cnt_i16_ > cnt_limit_i16_)	menu_cnt_i16_ = 0;
		else if(menu_cnt_i16_ < 0)			menu_cnt_i16_ = cnt_limit_i16_;

		VFDPrintf((char*)kMenuChar_[menu_cnt_i16_]);

		// entry the function
		if(!SW_D)
		{
			DELAY_US(SW_DELAY);

			menu_func_[menu_cnt_i16_]();
		}
		// menu count up or down
		else
		{
			if(!SW_R)		menu_cnt_i16_++;
			else if(!SW_L)	menu_cnt_i16_--;

			DELAY_US(SW_DELAY);
		}
	}
}
