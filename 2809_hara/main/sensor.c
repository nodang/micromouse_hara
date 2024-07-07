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
#define M_PI				3.1415926536 

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


#define SEN_NUM			8
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

void init_sensor(void)
{
	memset((void *)g_s_sen, 0x00, sizeof(g_s_sen));

	g_sensor_num_u16 = 0;

	/*
		Newton Interpolation Init setting of Y param
		Refer excel file named "sensor estimation" in PPT
	
		wall_inside_width = 168, wall_width = 180
		robot_width = 81, robot_length = 108
	*/
	/* Side Sensor*/
	RFS.s_dist.s_formula.y0 = _IQ17(0.0);	// close to wall	- dist = 0
	RFS.s_dist.s_formula.y1 = _IQ17(43.5);	// middle			- dist = (wall_inside_width - robot_width)/2
	RFS.s_dist.s_formula.y2 = _IQ17(87.0);	// far from wall	- dist = wall_inside_width - robot_width 
	
	RBS.s_dist.s_formula.y0 = _IQ17(0.0);
	RBS.s_dist.s_formula.y1 = _IQ17(43.5);
	RBS.s_dist.s_formula.y2 = _IQ17(87.0);
	
	LFS.s_dist.s_formula.y0 = _IQ17(0.0);
	LFS.s_dist.s_formula.y1 = _IQ17(43.5);
	LFS.s_dist.s_formula.y2 = _IQ17(87.0);

	LBS.s_dist.s_formula.y0 = _IQ17(0.0);
	LBS.s_dist.s_formula.y1 = _IQ17(43.5);
	LBS.s_dist.s_formula.y2 = _IQ17(87.0);

	/* 45d Sensor */	
	R45.s_dist.s_formula.y0 = _IQ17(19.091883092);	// close to wall	- dist = (robot_length/2 - robot_width/2) * sqrt(2)
	R45.s_dist.s_formula.y1 = _IQ17(99.702056147);	// middle			- dist = wall_inside_width/2 * sqrt(2) - close_to_wall_dist
	R45.s_dist.s_formula.y2 = _IQ17(206.724350723);	// far from wall	- dist = wall_inside_width/2 + wall_width - robot_width/2 * sqrt(2)

	L45.s_dist.s_formula.y0 = _IQ17(19.091883092);
	L45.s_dist.s_formula.y1 = _IQ17(99.702056147);
	L45.s_dist.s_formula.y2 = _IQ17(206.724350723);

	/* front Sensor */
	RF.s_dist.s_formula.y0 = _IQ17(0.0);	// close to wall	- dist = 0
	RF.s_dist.s_formula.y1 = _IQ17(30.0);	// middle			- dist = wall_inside_width/2 - robot_length/2
	RF.s_dist.s_formula.y2 = _IQ17(210.0);	// far from wall	- dist = middle_dist + wall_width

	LF.s_dist.s_formula.y0 = _IQ17(0.0);
	LF.s_dist.s_formula.y1 = _IQ17(30.0);
	LF.s_dist.s_formula.y2 = _IQ17(210.0);
}

// 의동이형 센서 인터럽트 원형
#if 0
interrupt void sensor_timer0_ISR(void)
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

interrupt void adc_ISR(void)
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
#if 1
#define SENSOR_ISR_DEBUG ON

interrupt void sensor_timer0_ISR(void)
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

interrupt void adc_ISR(void)
{
	static Uint16 ADC_channel_cnt = 0;
	static Uint32 sen_sum0_u32 = 0, sen_sum1_u32 = 0;
	_iq17 buff0, buff1;

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
		ADC_channel_cnt = 0;
		g_s_sen[SEN_NUM_R].value_u16 	= (Uint16)(sen_sum0_u32 >> 5); // divide 8 * 3
		g_s_sen[SEN_NUM_L].value_u16 	= (Uint16)(sen_sum0_u32 >> 5); // divide 8 * 3
		sen_sum0_u32 = sen_sum1_u32 = 0;
		
		//==================================================================//
		// 						Digital IIR LPF Part						//
		//==================================================================//

		/*================== Right Sensor Data Filtering ===================*/
		// Data filtering
		g_s_sen[SEN_NUM_R].s_lpf.input_q17 = ((int32)(g_s_sen[SEN_NUM_R].value_u16)) << 17;
		g_s_sen[SEN_NUM_R].s_lpf.output_q17 = _IQ17mpyIQX(SENSOR_Kb, 30, g_s_sen[SEN_NUM_R].s_lpf.input_previous_q17 + g_s_sen[SEN_NUM_R].s_lpf.input_q17, 17) 
										 		- _IQ17mpyIQX(SENSOR_Ka, 30, g_s_sen[SEN_NUM_R].s_lpf.output_q17, 17);

		// for position data buff
		//buff0 = g_s_sen[SEN_NUM_R].s_lpf.output_q17;

		// Data differences filtering
		g_s_sen[SEN_NUM_R].s_lpf_diff.input_q17 = g_s_sen[SEN_NUM_R].s_lpf.output_q17 - g_s_sen[SEN_NUM_R].s_lpf.output_previous_q17;
		g_s_sen[SEN_NUM_R].s_lpf_diff.output_q17 = _IQ17mpyIQX(SENSOR_Kb_DIFF, 30, g_s_sen[SEN_NUM_R].s_lpf_diff.input_previous_q17 + g_s_sen[SEN_NUM_R].s_lpf_diff.input_q17, 17) 
														- _IQ17mpyIQX(SENSOR_Ka_DIFF, 30, g_s_sen[SEN_NUM_R].s_lpf_diff.output_q17, 17);

		// lpf filtered data are stored.
		g_s_sen[SEN_NUM_R].s_lpf.input_previous_q17		= g_s_sen[SEN_NUM_R].s_lpf.input_q17;
		g_s_sen[SEN_NUM_R].s_lpf.output_previous_q17	= g_s_sen[SEN_NUM_R].s_lpf.output_q17;

		g_s_sen[SEN_NUM_R].s_lpf_diff.input_previous_q17	= g_s_sen[SEN_NUM_R].s_lpf_diff.input_q17;
		g_s_sen[SEN_NUM_R].s_lpf_diff.output_previous_q17	= g_s_sen[SEN_NUM_R].s_lpf_diff.output_q17;		// Didn't be used


		/*================== Left Sensor Data Filtering ===================*/
		// Data filtering
		g_s_sen[SEN_NUM_L].s_lpf.input_q17 = ((int32)(g_s_sen[SEN_NUM_L].value_u16)) << 17;
		g_s_sen[SEN_NUM_L].s_lpf.output_q17 = _IQ17mpyIQX(SENSOR_Kb, 30, g_s_sen[SEN_NUM_L].s_lpf.input_previous_q17 + g_s_sen[SEN_NUM_L].s_lpf.input_q17, 17) 
			- _IQ17mpyIQX(SENSOR_Ka, 30, g_s_sen[SEN_NUM_L].s_lpf.output_q17, 17);

		// for position data buff
		//buff0 = g_s_sen[SEN_NUM_L].s_lpf.output_q17;

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
		if(g_s_flags.est_dist_b)
		{
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
		}
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
#endif

static void _set_side_sensor(void)
{
	VFDPrintf("RIGHT ->");
	while(SW_D);
	
	while(SW_U)
	{
		// Right close
		if(RFS.s_dist.s_formula.x0 < RFS.s_lpf.output_q17)
			RFS.s_dist.s_formula.x0 = RFS.s_lpf.output_q17;
		if(RBS.s_dist.s_formula.x0 < RBS.s_lpf.output_q17)
			RBS.s_dist.s_formula.x0 = RBS.s_lpf.output_q17;
		
		// Left far
		if(LFS.s_dist.s_formula.x2 < LFS.s_lpf.output_q17)
			LFS.s_dist.s_formula.x2 = LFS.s_lpf.output_q17;
		if(LBS.s_dist.s_formula.x2 < LBS.s_lpf.output_q17)
			LBS.s_dist.s_formula.x2 = LBS.s_lpf.output_q17;
	}

	VFDPrintf(" MIDDLE ");
	while(SW_D);
	
	while(SW_U)
	{
		// Right
		if(RFS.s_dist.s_formula.x1 < RFS.s_lpf.output_q17)
			RFS.s_dist.s_formula.x1 = RFS.s_lpf.output_q17;
		if(RBS.s_dist.s_formula.x1 < RBS.s_lpf.output_q17)
			RBS.s_dist.s_formula.x1 = RBS.s_lpf.output_q17;
		
		// Left
		if(LFS.s_dist.s_formula.x1 < LFS.s_lpf.output_q17)
			LFS.s_dist.s_formula.x1 = LFS.s_lpf.output_q17;
		if(LBS.s_dist.s_formula.x1 < LBS.s_lpf.output_q17)
			LBS.s_dist.s_formula.x1 = LBS.s_lpf.output_q17;
	}


	VFDPrintf("<-  LEFT");
	while(SW_D);

	while(SW_U)
	{
		// Right far
		if(RFS.s_dist.s_formula.x2 < RFS.s_lpf.output_q17)
			RFS.s_dist.s_formula.x2 = RFS.s_lpf.output_q17;
		if(RBS.s_dist.s_formula.x2 < RBS.s_lpf.output_q17)
			RBS.s_dist.s_formula.x2 = RBS.s_lpf.output_q17;
		
		// Left close
		if(LFS.s_dist.s_formula.x0 < LFS.s_lpf.output_q17)
			LFS.s_dist.s_formula.x0 = LFS.s_lpf.output_q17;
		if(LBS.s_dist.s_formula.x0 < LBS.s_lpf.output_q17)
			LBS.s_dist.s_formula.x0 = LBS.s_lpf.output_q17;
	}

	TxPrintf("RFS: x0 %4ld | x1 %4ld | x2 %4ld\n",
				RFS.s_dist.s_formula.x0 >> 17,
							RFS.s_dist.s_formula.x0 >> 17,
										RFS.s_dist.s_formula.x0 >> 17);

	TxPrintf("RBS: x0 %4ld | x1 %4ld | x2 %4ld\n",
				RBS.s_dist.s_formula.x0 >> 17,
							RBS.s_dist.s_formula.x0 >> 17,
										RBS.s_dist.s_formula.x0 >> 17);

	TxPrintf("LFS: x0 %4ld | x1 %4ld | x2 %4ld\n",
				LFS.s_dist.s_formula.x0 >> 17,
							LFS.s_dist.s_formula.x0 >> 17,
										LFS.s_dist.s_formula.x0 >> 17);

	TxPrintf("LBS: x0 %4ld | x1 %4ld | x2 %4ld\n",
				LBS.s_dist.s_formula.x0 >> 17,
							LBS.s_dist.s_formula.x0 >> 17,
										LBS.s_dist.s_formula.x0 >> 17);

	
}

static void _set_45_n_front_sensor(void)
{

}

void set_sensor(void)
{
	init_sensor();

	g_s_flags.sensor_ir_b = ON;
	g_s_flags.est_dist_b = OFF;	// If sensor calibration data not exist, calcuation can be error.
	
	StartCpuTimer2();
	_set_side_sensor();
	StopCpuTimer2();

	VFDPrintf("45nFRONT");
	while(SW_D);
	DELAY_US(SW_DELAY);

	StartCpuTimer2();
	_set_45_n_front_sensor();
	StopCpuTimer2();
	
	g_s_flags.sensor_ir_b = OFF;
}

