//###########################################################################
//
// FILE		: Sensor.c
//
// TITLE	: Senser c file.
//
// Author	:  Yuk Keun Ho
//
// Company	: Maze & Hz
//
//###########################################################################
// $Release Date: 2011.12.10 $
//###########################################################################

#include "DSP280x_Device.h"
#include "DSP280x_Examples.h"   // DSP280x Examples Include File
#include "DSP280x_SWPrioritizedIsrLevels.h"
#include "Main.h"
#include "Sensor.h"


//LOW PASS FILTER 필터 상수 및 계산 값...
#define SENSOR_F_CUT			20//(20Hz)
#define	SENSOR_F_SAMPLE			2000//(2KHz)
#define	SENSOR_W_CUT			tan(M_PI*SENSOR_F_CUT/SENSOR_F_SAMPLE)

#define	SENSOR_Ka	    		_IQ30(-0.9390625058)//(W_CUT -1) / (W_CUT + 1)
#define	SENSOR_Kb				_IQ30(0.0304687471)// W_CUT / (W_CUT + 1)

#define SENSOR_F_CUT_DIFF	 	50//(50Hz)
#define	SENSOR_F_SAMPLE_DIFF 	2000//(2KHz)
#define	SENSOR_W_CUT_DIFF	 	tan(M_PI*SENSOR_F_CUT_DIFF/SENSOR_F_SAMPLE_DIFF)

#define	SENSOR_Ka_DIFF	    	_IQ30(-0.8540806855)//(W_CUT -1) / (W_CUT + 1)
#define	SENSOR_Kb_DIFF			_IQ30(0.0729596573)// W_CUT / (W_CUT + 1)

#define SEN_NUM_S0		7	// numbering start at 0
#define SEN_NUM_HALF	4
#define SEN_NUM_HALF_S0	3	// numbering start at 0

#define SEN_NUM_R		g_sensor_num_u16
#define SEN_NUM_L		(SEN_NUM_S0 - g_sensor_num_u16) // numbering reverse

enum SensorEnum {
	RBS_SEN0 = 0x00000010,	/*GPIO4	 0000 0000 0000 0000  0000 0000 0001 0000*/
	RFS_SEN1 = 0x00000020,	/*GPIO5	 0000 0000 0000 0000  0000 0000 0010 0000*/
	R45_SEN2 = 0x00000040,	/*GPIO6	 0000 0000 0000 0000  0000 0000 0100 0000*/
	RF_SEN3 = 0x00000080,	/*GPIO7	 0000 0000 0000 0000  0000 0000 1000 0000*/
	LF_SEN4 = 0x00000100,	/*GPIO8	 0000 0000 0000 0000  0000 0001 0000 0000*/
	L45_SEN5 = 0x00000200,	/*GPIO9	 0000 0000 0000 0000  0000 0010 0000 0000*/
	LFS_SEN6 = 0x00000400,	/*GPIO10 0000 0000 0000 0000  0000 0100 0000 0000*/
	LBS_SEN7 = 0x00000800,	/*GPIO11 0000 0000 0000 0000  0000 1000 0000 0000*/
	SEN_ALL = 0x00000ff0,	/*		 0000 0000 0000 0000  0000 1111 1111 0000*/

	RBS_SEN_ADC_SEQ = 0x0000,
	RFS_SEN_ADC_SEQ = 0x1111,
	R45_SEN_ADC_SEQ = 0x2222,
	RF_SEN_ADC_SEQ = 0x3333,
	LF_SEN_ADC_SEQ = 0x4444,
	L45_SEN_ADC_SEQ = 0x5555,
	LFS_SEN_ADC_SEQ = 0x6666,
	LBS_SEN_ADC_SEQ = 0x7777
};

/* sensor places : 0000 0000 0000 0000  0000 1111 1111 0000 */
static volatile Uint16 sensor_shoot_[SEN_NUM] = {
	RBS_SEN0,	RFS_SEN1,	R45_SEN2,	RF_SEN3,
	LF_SEN4,	L45_SEN5,	LFS_SEN6,	LBS_SEN7
};

static volatile Uint16 sensor_seq_[SEN_NUM] = {
	RBS_SEN_ADC_SEQ,	RFS_SEN_ADC_SEQ,	R45_SEN_ADC_SEQ,	RF_SEN_ADC_SEQ,
	LF_SEN_ADC_SEQ,		L45_SEN_ADC_SEQ,	LFS_SEN_ADC_SEQ,	LBS_SEN_ADC_SEQ
};

#define	SIDE_Y0	_IQ17(0.0)	// close to wall	- dist = 0
#define	SIDE_Y1	_IQ17(43.5)	// middle			- dist = (wall_inside_width - robot_width)/2
#define	SIDE_Y2	_IQ17(87.0)	// far from wall	- dist = wall_inside_width - robot_width 
static void _InitSideSensorFormulaVariable(void)
{
	Uint16 i, ind[] = {
		0,	// RFS
		1,	// RBS
		6,	// LBS
		7	// LFS
	};
	NewtonInterpolationVariable *sp_formula;

	for(i = 0; i < 4; i++)
	{
		sp_formula = &g_s_sen[ind[i]].s_dist.s_formula;
		
		sp_formula->y0 = SIDE_Y0;
		sp_formula->y1 = SIDE_Y1;
		sp_formula->y2 = SIDE_Y2;

		// Protect div(num, 0)
		if(sp_formula->x0 == sp_formula->x1
		|| sp_formula->x1 == sp_formula->x2
		|| sp_formula->x2 == sp_formula->x0);
		else
			_InlineNewtonInterpolationFormula(sp_formula);
	}
}

#define	DIAGONAL_Y0	_IQ17(19.091883092)		// close to wall	- dist = (robot_length/2 - robot_width/2) * sqrt(2)
#define	DIAGONAL_Y1	_IQ17(61.518289963)		// middle			- dist = (wall_inside_width - robot_length)/2 * sqrt(2) + close_to_wall_dist
#define	DIAGONAL_Y2	_IQ17(194.724350723)	// far from wall	- dist = wall_inside_width*1.5 - robot_width/2 * sqrt(2)
static void _Init45SensorFormulaVariable(void)
{
	Uint16 i, ind[] = {
		2,	// R45
		5,	// L45
	};
	NewtonInterpolationVariable *sp_formula;

	for(i = 0; i < 2; i++)
	{
		sp_formula = &g_s_sen[ind[i]].s_dist.s_formula;
	
		sp_formula->y0 = DIAGONAL_Y0;
		sp_formula->y1 = DIAGONAL_Y1;
		sp_formula->y2 = DIAGONAL_Y2;

		// Protect div(num, 0)
		if(sp_formula->x0 == sp_formula->x1
		|| sp_formula->x1 == sp_formula->x2
		|| sp_formula->x2 == sp_formula->x0);
		else
			_InlineNewtonInterpolationFormula(sp_formula);
	}
}

#define FRONT_Y0	_IQ17(0.0)		// close to wall	- dist = 0
#define	FRONT_Y1	_IQ17(30.0)		// middle			- dist = wall_inside_width/2 - robot_length/2
#define FRONT_Y2	_IQ17(210.0)	// far from wall	- dist = middle_dist + wall_width
static void _InitFrontSensorFormulaVariable(void)
{
	Uint16 i, ind[] = {
		3,	// RF
		4,	// LF
	};
	NewtonInterpolationVariable *sp_formula;

	for(i = 0; i < 2; i++)
	{
		sp_formula = &g_s_sen[ind[i]].s_dist.s_formula;
	
		sp_formula->y0 = FRONT_Y0;
		sp_formula->y1 = FRONT_Y1;
		sp_formula->y2 = FRONT_Y2;

		// Protect div(num, 0)
		if(sp_formula->x0 == sp_formula->x1
		|| sp_formula->x1 == sp_formula->x2
		|| sp_formula->x2 == sp_formula->x0);
		else
			_InlineNewtonInterpolationFormula(sp_formula);
	}
}

static void _InitSensorFormulaVariable(void)
{
	int16 i;
	/*
		Newton Interpolation Init setting of Y param
		Refer excel file named "sensor estimation" in PPT
	
		wall_inside_width = 168, wall_width = 180
		robot_width = 81, robot_length = 108
	*/
	_InitSideSensorFormulaVariable();
	_Init45SensorFormulaVariable();
	_InitFrontSensorFormulaVariable();

	TxPrintf("\n");
	for(i = 0; i < SEN_NUM; i++)
	{
		TxPrintf("SenNum: %u | y0: %.2lf y1: %.2lf y2: %.2lf\n", i,
				_IQ17toF(g_s_sen[i].s_dist.s_formula.y0),
					_IQ17toF(g_s_sen[i].s_dist.s_formula.y1),
						_IQ17toF(g_s_sen[i].s_dist.s_formula.y2));
	}
	TxPrintf("\n");
	for(i = 0; i < SEN_NUM; i++)
	{
		TxPrintf("SenNum: %u | a0: %.2lf a1: %.2lf a2: %.2lf\n", i,
				_IQ17toF(g_s_sen[i].s_dist.s_formula.a0),
					_IQ17toF(g_s_sen[i].s_dist.s_formula.a1),
						_IQ17toF(g_s_sen[i].s_dist.s_formula.a2));
	}
}

void InitSensor(void)
{
	memset((void *)g_s_sen, 0x00, sizeof(g_s_sen));

	g_sensor_num_u16 = 0;

	ReadSensorData();
	_InitSensorFormulaVariable();	// Need to data from EEPROM or sensor setting
}

// 의동이형 센서 인터럽트 원형
#if 0
interrupt void IsrTimer0ForSensor(void)
{
	PieCtrlRegs.PIEACK.all = PIEACK_GROUP1;

	IER &= MINT1;
	EINT;

	GpioDataRegs.GPASET.bit.GPIO27 = 1;	

	GpioDataRegs.GPASET.all = sensor_shoot_[g_sensor_num_u16];

	AdcRegs.ADCCHSELSEQ1.all = sensor_seq_[g_sensor_num_u16];
	AdcRegs.ADCCHSELSEQ2.all = sensor_seq_[g_sensor_num_u16];
	AdcRegs.ADCCHSELSEQ3.all = sensor_seq_[g_sensor_num_u16];
	AdcRegs.ADCCHSELSEQ4.all = sensor_seq_[g_sensor_num_u16];

	AdcRegs.ADCTRL2.bit.SOC_SEQ1 = 1;
}

interrupt void IsrAdc(void)
{
	static Uint16 ADC_channel_cnt = 0;
	static Uint32 sen_sum0_u32 = 0; 
	_iq17 buff0;

	PieCtrlRegs.PIEACK.all = PIEACK_GROUP1;

	if(ADC_channel_cnt == 0)
	{
		GpioDataRegs.GPACLEAR.all = sensor_shoot_[g_sensor_num_u16];
	}

	sen_sum0_u32 +=	AdcMirror.ADCRESULT0;
	sen_sum0_u32 +=	AdcMirror.ADCRESULT1;
	sen_sum0_u32 +=	AdcMirror.ADCRESULT2;
	sen_sum0_u32 +=	AdcMirror.ADCRESULT3;
	
	sen_sum0_u32 +=	AdcMirror.ADCRESULT4;
	sen_sum0_u32 +=	AdcMirror.ADCRESULT5;
	sen_sum0_u32 +=	AdcMirror.ADCRESULT6;
	sen_sum0_u32 +=	AdcMirror.ADCRESULT7;
	
	sen_sum0_u32 +=	AdcMirror.ADCRESULT8;
	sen_sum0_u32 +=	AdcMirror.ADCRESULT9;
	sen_sum0_u32 +=	AdcMirror.ADCRESULT10;
	sen_sum0_u32 +=	AdcMirror.ADCRESULT11;
	
	sen_sum0_u32 +=	AdcMirror.ADCRESULT12;
	sen_sum0_u32 +=	AdcMirror.ADCRESULT13;
	sen_sum0_u32 +=	AdcMirror.ADCRESULT14;
	sen_sum0_u32 +=	AdcMirror.ADCRESULT15;

	AdcRegs.ADCTRL2.bit.RST_SEQ1 = 1;
	AdcRegs.ADCST.bit.INT_SEQ1_CLR = 1;

	if(ADC_channel_cnt < 2)
	{
		ADC_channel_cnt++;
		AdcRegs.ADCTRL2.bit.SOC_SEQ1 = 1;
	}
	else
	{
		ADC_channel_cnt = 0;
		g_s_sen[g_sensor_num_u16].value_u16 	= (Uint16)(sen_sum0_u32 >> 3); // divide 8
		sen_sum0_u32 = 0;

		// sensor variable filtering
		g_s_sen[g_sensor_num_u16].lpf_out_data_yet_q17 = g_s_sen[g_sensor_num_u16].lpf_out_data_q17;
		g_s_sen[g_sensor_num_u16].lpf_out_data_q17 = _IQ17mpyIQX(SENSOR_Kb, 30, g_s_sen[g_sensor_num_u16].lpf_in_data_q17 + (((int32)(g_s_sen[g_sensor_num_u16].value_u16)) << 17), 17) 
										 			- _IQ17mpyIQX(SENSOR_Ka, 30, g_s_sen[g_sensor_num_u16].lpf_out_data_q17, 17);
		g_s_sen[g_sensor_num_u16].lpf_in_data_q17 = ((int32)(g_s_sen[g_sensor_num_u16].value_u16)) << 17;

		// for position data buff
		buff0 = g_s_sen[g_sensor_num_u16].lpf_out_data_q17;

		// Right sensor difference filtering
		g_s_sen[g_sensor_num_u16].lpf_in_data_diff_q17 = g_s_sen[g_sensor_num_u16].lpf_out_data_q17 - g_s_sen[g_sensor_num_u16].lpf_out_data_yet_q17;
		g_s_sen[g_sensor_num_u16].lpf_out_data_diff_q17 = _IQ17mpyIQX(SENSOR_Kb_DIFF, 30, g_s_sen[g_sensor_num_u16].lpf_in_data_diff_q17 + g_s_sen[g_sensor_num_u16].lpf_in_data_diff_yet_q17, 17) 
														- _IQ17mpyIQX(SENSOR_Ka_DIFF, 30, g_s_sen[g_sensor_num_u16].lpf_out_data_diff_q17, 17);
		g_s_sen[g_sensor_num_u16].lpf_in_data_diff_yet_q17 = g_s_sen[g_sensor_num_u16].lpf_in_data_diff_q17;

		if(g_sensor_num_u16 < SEN_NUM_S0)
			g_sensor_num_u16++;
		else
		{
			g_sensor_num_u16 = 0;
			StopCpuTimer0();
		}

		GpioDataRegs.GPACLEAR.bit.GPIO27 = 1;
	}
}
#endif


#define SENSOR_ISR_DEBUG ON

#pragma CODE_SECTION(IsrTimer0ForSensor, "ramfuncs2");
#pragma CODE_SECTION(IsrAdc, "ramfuncs2");
interrupt void IsrTimer0ForSensor(void)
{
	PieCtrlRegs.PIEACK.all = PIEACK_GROUP1;

#if SENSOR_ISR_DEBUG
	GpioDataRegs.GPASET.bit.GPIO27 = 1;
#endif

	if(g_s_flags.sensor_ir_b)
	{
		GpioDataRegs.GPASET.all = (sensor_shoot_[SEN_NUM_R] | sensor_shoot_[SEN_NUM_L]);
	}

	AdcRegs.ADCCHSELSEQ1.all = sensor_seq_[SEN_NUM_R];
	AdcRegs.ADCCHSELSEQ2.all = sensor_seq_[SEN_NUM_L];
	AdcRegs.ADCCHSELSEQ3.all = sensor_seq_[SEN_NUM_R];
	AdcRegs.ADCCHSELSEQ4.all = sensor_seq_[SEN_NUM_L];

	AdcRegs.ADCTRL2.bit.SOC_SEQ1 = 1;
}

interrupt void IsrAdc(void)
{
	static Uint16 ADC_channel_cnt = 0;
	static Uint32 sen_sum0_u32 = 0, sen_sum1_u32 = 0;
	//_iq17 temp0, temp1;
	//_iq17 temp1;

	PieCtrlRegs.PIEACK.all = PIEACK_GROUP1;

	if(ADC_channel_cnt == 0)
	{
		GpioDataRegs.GPACLEAR.all = (sensor_shoot_[SEN_NUM_R] | sensor_shoot_[SEN_NUM_L]);
	}
	
	sen_sum0_u32 +=	AdcMirror.ADCRESULT0;
	sen_sum0_u32 +=	AdcMirror.ADCRESULT1;
	sen_sum0_u32 +=	AdcMirror.ADCRESULT2;
	sen_sum0_u32 +=	AdcMirror.ADCRESULT3;
	
	sen_sum1_u32 +=	AdcMirror.ADCRESULT4;
	sen_sum1_u32 +=	AdcMirror.ADCRESULT5;
	sen_sum1_u32 +=	AdcMirror.ADCRESULT6;
	sen_sum1_u32 +=	AdcMirror.ADCRESULT7;
	
	sen_sum0_u32 +=	AdcMirror.ADCRESULT8;
	sen_sum0_u32 +=	AdcMirror.ADCRESULT9;
	sen_sum0_u32 +=	AdcMirror.ADCRESULT10;
	sen_sum0_u32 +=	AdcMirror.ADCRESULT11;
	
	sen_sum1_u32 +=	AdcMirror.ADCRESULT12;
	sen_sum1_u32 +=	AdcMirror.ADCRESULT13;
	sen_sum1_u32 +=	AdcMirror.ADCRESULT14;
	sen_sum1_u32 +=	AdcMirror.ADCRESULT15;

	AdcRegs.ADCTRL2.bit.RST_SEQ1 = 1;
	AdcRegs.ADCST.bit.INT_SEQ1_CLR = 1;

	if(ADC_channel_cnt < 2)
	{
		ADC_channel_cnt++;

#if SENSOR_ISR_DEBUG
		GpioDataRegs.GPATOGGLE.bit.GPIO27 = 1;
#endif

		AdcRegs.ADCTRL2.bit.SOC_SEQ1 = 1;
	}
	else
	{
		g_s_sen[SEN_NUM_R].value_u16 	= (Uint16)(sen_sum0_u32 >> 5); // divide 8 * 3
		g_s_sen[SEN_NUM_L].value_u16 	= (Uint16)(sen_sum1_u32 >> 5); // divide 8 * 3
	
		ADC_channel_cnt = 0;
		sen_sum0_u32 = 0;
		sen_sum1_u32 = 0;

		//==================================================================//
		// 						Digital IIR LPF Part						//
		//==================================================================//

		//================== Right Sensor Data Filtering ===================//
		// Data filtering
		g_s_sen[SEN_NUM_R].s_lpf.input_q17 = ((int32)(g_s_sen[SEN_NUM_R].value_u16)) << 17;
		g_s_sen[SEN_NUM_R].s_lpf.output_q17 = _IQ17mpyIQX(SENSOR_Kb, 30, g_s_sen[SEN_NUM_R].s_lpf.input_previous_q17 + g_s_sen[SEN_NUM_R].s_lpf.input_q17, 17) 
			- _IQ17mpyIQX(SENSOR_Ka, 30, g_s_sen[SEN_NUM_R].s_lpf.output_q17, 17);

		// Data differences filtering
		g_s_sen[SEN_NUM_R].s_lpf_diff.input_q17 = g_s_sen[SEN_NUM_R].s_lpf.output_q17 - g_s_sen[SEN_NUM_R].s_lpf.output_previous_q17;
		g_s_sen[SEN_NUM_R].s_lpf_diff.output_q17 = _IQ17mpyIQX(SENSOR_Kb_DIFF, 30, g_s_sen[SEN_NUM_R].s_lpf_diff.input_previous_q17 + g_s_sen[SEN_NUM_R].s_lpf_diff.input_q17, 17) 
			- _IQ17mpyIQX(SENSOR_Ka_DIFF, 30, g_s_sen[SEN_NUM_R].s_lpf_diff.output_q17, 17);

		// lpf filtered data are stored.
		g_s_sen[SEN_NUM_R].s_lpf.input_previous_q17		= g_s_sen[SEN_NUM_R].s_lpf.input_q17;
		g_s_sen[SEN_NUM_R].s_lpf.output_previous_q17	= g_s_sen[SEN_NUM_R].s_lpf.output_q17;

		g_s_sen[SEN_NUM_R].s_lpf_diff.input_previous_q17	= g_s_sen[SEN_NUM_R].s_lpf_diff.input_q17;
		g_s_sen[SEN_NUM_R].s_lpf_diff.output_previous_q17	= g_s_sen[SEN_NUM_R].s_lpf_diff.output_q17;		// Didn't be used
		//================== Left Sensor Data Filtering ===================//
		// Data filtering
		g_s_sen[SEN_NUM_L].s_lpf.input_q17 = ((int32)(g_s_sen[SEN_NUM_L].value_u16)) << 17;
		g_s_sen[SEN_NUM_L].s_lpf.output_q17 = _IQ17mpyIQX(SENSOR_Kb, 30, g_s_sen[SEN_NUM_L].s_lpf.input_previous_q17 + g_s_sen[SEN_NUM_L].s_lpf.input_q17, 17) 
			- _IQ17mpyIQX(SENSOR_Ka, 30, g_s_sen[SEN_NUM_L].s_lpf.output_q17, 17);

		// Data differences filtering
		g_s_sen[SEN_NUM_L].s_lpf_diff.input_q17 = g_s_sen[SEN_NUM_L].s_lpf.output_q17 - g_s_sen[SEN_NUM_L].s_lpf.output_previous_q17;
		g_s_sen[SEN_NUM_L].s_lpf_diff.output_q17 = _IQ17mpyIQX(SENSOR_Kb_DIFF, 30, g_s_sen[SEN_NUM_L].s_lpf_diff.input_previous_q17 + g_s_sen[SEN_NUM_L].s_lpf_diff.input_q17, 17) 
			- _IQ17mpyIQX(SENSOR_Ka_DIFF, 30, g_s_sen[SEN_NUM_L].s_lpf_diff.output_q17, 17);

		// lpf filtered data are stored.
		g_s_sen[SEN_NUM_L].s_lpf.input_previous_q17 	= g_s_sen[SEN_NUM_L].s_lpf.input_q17;
		g_s_sen[SEN_NUM_L].s_lpf.output_previous_q17	= g_s_sen[SEN_NUM_L].s_lpf.output_q17;

		g_s_sen[SEN_NUM_L].s_lpf_diff.input_previous_q17	= g_s_sen[SEN_NUM_L].s_lpf_diff.input_q17;
		g_s_sen[SEN_NUM_L].s_lpf_diff.output_previous_q17	= g_s_sen[SEN_NUM_L].s_lpf_diff.output_q17; 	// Didn't be used

		//==================================================================//
		//				Estimate Distance according Sensor Data				//
		//==================================================================//
		g_s_sen[SEN_NUM_R].s_dist.s_formula.x = g_s_sen[SEN_NUM_R].s_lpf.output_q17;
		g_s_sen[SEN_NUM_R].s_dist.value_q17 = g_s_sen[SEN_NUM_R].s_dist.s_formula.a0
			+ _IQ17mpy(g_s_sen[SEN_NUM_R].s_dist.s_formula.a1, g_s_sen[SEN_NUM_R].s_dist.s_formula.x - g_s_sen[SEN_NUM_R].s_dist.s_formula.x0)
			+ _IQ17mpy(g_s_sen[SEN_NUM_R].s_dist.s_formula.a2, _IQ17mpy(g_s_sen[SEN_NUM_R].s_dist.s_formula.x - g_s_sen[SEN_NUM_R].s_dist.s_formula.x0, 
																		g_s_sen[SEN_NUM_R].s_dist.s_formula.x - g_s_sen[SEN_NUM_R].s_dist.s_formula.x1));

		g_s_sen[SEN_NUM_L].s_dist.s_formula.x = g_s_sen[SEN_NUM_L].s_lpf.output_q17;
		g_s_sen[SEN_NUM_L].s_dist.value_q17 = g_s_sen[SEN_NUM_L].s_dist.s_formula.a0
			+ _IQ17mpy(g_s_sen[SEN_NUM_L].s_dist.s_formula.a1, g_s_sen[SEN_NUM_L].s_dist.s_formula.x - g_s_sen[SEN_NUM_L].s_dist.s_formula.x0)
			+ _IQ17mpy(g_s_sen[SEN_NUM_L].s_dist.s_formula.a2, _IQ17mpy(g_s_sen[SEN_NUM_L].s_dist.s_formula.x - g_s_sen[SEN_NUM_L].s_dist.s_formula.x0, 
																		g_s_sen[SEN_NUM_L].s_dist.s_formula.x - g_s_sen[SEN_NUM_L].s_dist.s_formula.x1));
		//==================================================================//

		if(g_sensor_num_u16 < SEN_NUM_HALF_S0)
			g_sensor_num_u16++;
		else
		{
			g_sensor_num_u16 = 0;
			StopCpuTimer0();
		}

#if SENSOR_ISR_DEBUG
		GpioDataRegs.GPACLEAR.bit.GPIO27 = 1;
#endif
	}
}

static void _CalibrateSideSensors(void)
{
	while(SW_D)
	{	
		VFDPrintf("->> %4u", 
			(RFS.value_u16 + RBS.value_u16) >> 1);
	}
	// Right close
	RFS.s_dist.s_formula.x0 = RFS.s_lpf.output_q17;
	RBS.s_dist.s_formula.x0 = RBS.s_lpf.output_q17;
	
	// Left far
	LFS.s_dist.s_formula.x2 = LFS.s_lpf.output_q17;
	LBS.s_dist.s_formula.x2 = LBS.s_lpf.output_q17;

	VFDPrintf("==SAVE==");
	while(!SW_D);

	while(SW_D)
	{
		VFDPrintf("%-4u%4u",
			(LFS.value_u16 + LBS.value_u16) >> 1,
			(RFS.value_u16 + RBS.value_u16) >> 1);
	}
	// Right
	RFS.s_dist.s_formula.x1 = RFS.s_lpf.output_q17;
	RBS.s_dist.s_formula.x1 = RBS.s_lpf.output_q17;
	
	// Left
	LFS.s_dist.s_formula.x1 = LFS.s_lpf.output_q17;
	LBS.s_dist.s_formula.x1 = LBS.s_lpf.output_q17;
	
	VFDPrintf("==SAVE==");
	while(!SW_D);

	while(SW_D)
	{
		VFDPrintf("<<- %4u", 
			(LFS.value_u16 + LBS.value_u16) >> 1);
	}
	// Right far
	RFS.s_dist.s_formula.x2 = RFS.s_lpf.output_q17;
	RBS.s_dist.s_formula.x2 = RBS.s_lpf.output_q17;
	
	// Left close
	LFS.s_dist.s_formula.x0 = LFS.s_lpf.output_q17;
	LBS.s_dist.s_formula.x0 = LBS.s_lpf.output_q17;

	VFDPrintf("==SAVE==");
	while(!SW_D);

	TxPrintf("LBS: x0 %4ld | x1 %4ld | x2 %4ld\n",
				LBS.s_dist.s_formula.x0 >> 17,
							LBS.s_dist.s_formula.x0 >> 17,
										LBS.s_dist.s_formula.x0 >> 17);

	TxPrintf("LFS: x0 %4ld | x1 %4ld | x2 %4ld\n",
				LFS.s_dist.s_formula.x0 >> 17,
							LFS.s_dist.s_formula.x0 >> 17,
										LFS.s_dist.s_formula.x0 >> 17);

	TxPrintf("RFS: x0 %4ld | x1 %4ld | x2 %4ld\n",
				RFS.s_dist.s_formula.x0 >> 17,
							RFS.s_dist.s_formula.x0 >> 17,
										RFS.s_dist.s_formula.x0 >> 17);

	TxPrintf("RBS: x0 %4ld | x1 %4ld | x2 %4ld\n",
				RBS.s_dist.s_formula.x0 >> 17,
							RBS.s_dist.s_formula.x0 >> 17,
										RBS.s_dist.s_formula.x0 >> 17);
}

static void _CalibrateDiagonalAndFrontSensor(void)
{
	_iq17 gone_dist;

	g_timer_500u_u32 = 0;
	while(g_timer_500u_u32 <= 3000);	// wait 1.5 second

	VFDPrintf("Start...");

	// DIAGONAL_Y0
	R45.s_dist.s_formula.x0 = R45.s_lpf.output_q17;
	L45.s_dist.s_formula.x0 = L45.s_lpf.output_q17;

	// FRONT_Y0
	RF.s_dist.s_formula.x0 = RF.s_lpf.output_q17;
	LF.s_dist.s_formula.x0 = LF.s_lpf.output_q17;
			
	MoveToStop(-FRONT_Y2, MIN_ACC, _IQ17(-140.0));

	while(g_s_left_motor.s_speed.curr_vel_avg_q17 != _IQ17(0.0) || g_s_right_motor.s_speed.curr_vel_avg_q17 != _IQ17(0.0))
	{
		gone_dist = (g_s_left_motor.s_dist.gone_q17 + g_s_right_motor.s_dist.gone_q17) >> 1;

		if(gone_dist <= FRONT_Y1)
		{
			// Diagonal sensor
			R45.s_dist.s_formula.x1 = R45.s_lpf.output_q17;
			L45.s_dist.s_formula.x1 = L45.s_lpf.output_q17;

			// Front sensor
			RF.s_dist.s_formula.x1 = RF.s_lpf.output_q17;
			LF.s_dist.s_formula.x1 = LF.s_lpf.output_q17;
		}
		else if(gone_dist <= FRONT_Y2)
		{
			// Front sensor
			RF.s_dist.s_formula.x2 = RF.s_lpf.output_q17;
			LF.s_dist.s_formula.x2 = LF.s_lpf.output_q17;
		}
	}

	// 45 turn and save logic is needed
	R45.s_dist.s_formula.x2 = R45.s_lpf.output_q17;
	L45.s_dist.s_formula.x2 = L45.s_lpf.output_q17;

	TxPrintf("L45: x0 %4ld | x1 %4ld | x2 %4ld\n",
				L45.s_dist.s_formula.x0 >> 17,
							L45.s_dist.s_formula.x0 >> 17,
										L45.s_dist.s_formula.x0 >> 17);

	TxPrintf("LF: x0 %4ld | x1 %4ld | x2 %4ld\n",
				LF.s_dist.s_formula.x0 >> 17,
							LF.s_dist.s_formula.x0 >> 17,
										LF.s_dist.s_formula.x0 >> 17);

	TxPrintf("RF: x0 %4ld | x1 %4ld | x2 %4ld\n",
				RF.s_dist.s_formula.x0 >> 17,
							RF.s_dist.s_formula.x0 >> 17,
										RF.s_dist.s_formula.x0 >> 17);

	TxPrintf("R45: x0 %4ld | x1 %4ld | x2 %4ld\n",
				R45.s_dist.s_formula.x0 >> 17,
							R45.s_dist.s_formula.x0 >> 17,
										R45.s_dist.s_formula.x0 >> 17);
}

void CalibrateSensorValue(void)
{
	volatile Uint16 flag = 0;
	
	InitSensor();

	VFDPrintf("S< Av >F");
	while(TRUE)
	{
		if(!SW_R)		{	DELAY_US(SW_DELAY);	flag = 2;	break;	}
		else if(!SW_L)	{	DELAY_US(SW_DELAY);	flag = 1;	break;	}
		else if(!SW_D)	{	DELAY_US(SW_DELAY);	flag = 0;	break;	}
	}
	while(!SW_R || !SW_L || !SW_D);

	if(flag == 0 || flag == 2)
	{
		VFDPrintf("Set Side");
		while(SW_D);
		while(!SW_D);
	
		ACTIVATE_SENSOR;
		_CalibrateSideSensors();			// Non-Auto, so need only sensor
		DEACTIVATE_SENSOR;
	}
	if(flag == 0 || flag == 1)
	{	
		VFDPrintf("SetFront");
		while(SW_D);	// start
		while(!SW_D);

		ACTIVATE_SYSTEM;
		_CalibrateDiagonalAndFrontSensor();	// Auto, so need motor & sensor
		DEACTIVATE_SYSTEM;
	}

	WriteSensorData();
}

