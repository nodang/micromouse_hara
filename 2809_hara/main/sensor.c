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

#define SENSOR_F_CUT_DIFF	 50//(50Hz)
#define	SENSOR_F_SAMPLE_DIFF 2000//(2KHz)
#define	SENSOR_W_CUT_DIFF	 tan(M_PI*SENSOR_F_CUT_DIFF/SENSOR_F_SAMPLE_DIFF)

#define	SENSOR_Ka_DIFF	    	_IQ30(-0.8540806855)//(W_CUT -1) / (W_CUT + 1)
#define	SENSOR_Kb_DIFF			_IQ30(0.0729596573)// W_CUT / (W_CUT + 1)


#define SEN_NUM			8
#define SEN_NUM_S0		7	// numbering start at 0
#define SEN_NUM_HALF	4
#define SEN_NUM_HALF_S0	3	// numbering start at 0

#define SEN_NUM_R		(SEN_NUM_S0 - g_sensor_num_u16) // numbering reverse

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

	g_sp_sen_rbs = &g_s_sen[0];
	g_sp_sen_rfs = &g_s_sen[1];
	g_sp_sen_r45 = &g_s_sen[2];
	g_sp_sen_rf = &g_s_sen[3];
	g_sp_sen_lf = &g_s_sen[4];
	g_sp_sen_l45 = &g_s_sen[5];
	g_sp_sen_lfs = &g_s_sen[6];
	g_sp_sen_lbs = &g_s_sen[7];

	g_sensor_num_u16 = 0;
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
		GpioDataRegs.GPASET.all = (sensor_shoot_[g_sensor_num_u16] | sensor_shoot_[SEN_NUM_R]);
	}

	AdcRegs.ADCCHSELSEQ1.all = sensor_seq_[g_sensor_num_u16];
	AdcRegs.ADCCHSELSEQ2.all = sensor_seq_[SEN_NUM_R];
	AdcRegs.ADCCHSELSEQ3.all = sensor_seq_[g_sensor_num_u16];
	AdcRegs.ADCCHSELSEQ4.all = sensor_seq_[SEN_NUM_R];

	AdcRegs.ADCTRL2.bit.SOC_SEQ1 = 1;
}

interrupt void adc_ISR(void)
{
	static Uint16 ADC_channel_cnt = 0;
	static Uint32 sen_sum0_u32 = 0, sen_sum1_u32 = 0;
	_iq17 buff0, buff1;

	PieCtrlRegs.PIEACK.all = PIEACK_GROUP1;

	if(ADC_channel_cnt == 0)
		GpioDataRegs.GPACLEAR.all = (sensor_shoot_[g_sensor_num_u16] | sensor_shoot_[SEN_NUM_R]);
	
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
		g_s_sen[g_sensor_num_u16].value_u16 	= (Uint16)(sen_sum0_u32 >> 5); // divide 8 * 3
		g_s_sen[SEN_NUM_R].value_u16 			= (Uint16)(sen_sum0_u32 >> 5); // divide 8 * 3
		sen_sum0_u32 = sen_sum1_u32 = 0;
		
		//==================================================================//
		// 						Digital IIR LPF Part						//

		// Right sensor variable filtering
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

		// Left sensor variable filtering
		g_s_sen[SEN_NUM_R].lpf_out_data_yet_q17 = g_s_sen[SEN_NUM_R].lpf_out_data_q17;
		g_s_sen[SEN_NUM_R].lpf_out_data_q17 = _IQ17mpyIQX(SENSOR_Kb, 30, g_s_sen[SEN_NUM_R].lpf_in_data_q17 + (((int32)(g_s_sen[SEN_NUM_R].value_u16)) << 17), 17) 
										 		- _IQ17mpyIQX(SENSOR_Ka, 30, g_s_sen[SEN_NUM_R].lpf_out_data_q17, 17);
		g_s_sen[SEN_NUM_R].lpf_in_data_q17 = ((int32)(g_s_sen[SEN_NUM_R].value_u16)) << 17;

		// for position data buff
		buff1 = g_s_sen[SEN_NUM_R].lpf_out_data_q17;

		// Left sensor difference filtering
		g_s_sen[SEN_NUM_R].lpf_in_data_diff_q17 = g_s_sen[SEN_NUM_R].lpf_out_data_q17 - g_s_sen[SEN_NUM_R].lpf_out_data_yet_q17;
		g_s_sen[SEN_NUM_R].lpf_out_data_diff_q17 = _IQ17mpyIQX(SENSOR_Kb_DIFF, 30, g_s_sen[SEN_NUM_R].lpf_in_data_diff_q17 + g_s_sen[SEN_NUM_R].lpf_in_data_diff_yet_q17, 17) 
													- _IQ17mpyIQX(SENSOR_Ka_DIFF, 30, g_s_sen[SEN_NUM_R].lpf_out_data_diff_q17, 17);
		g_s_sen[SEN_NUM_R].lpf_in_data_diff_yet_q17 = g_s_sen[SEN_NUM_R].lpf_in_data_diff_q17;

		//==================================================================//
		//					Sensor data Translate Distance					//
/*
		// Front & Side sensor position calculation -> What?!
		if(g_sensor_num_u16 == 3)
			; //frontsentable_(g_sensor_num_u16, buff0, SEN_NUM_R, buff1);
		else	//	 포지션....making//////////////////////////////////////////////////////////////////
		{
			g_s_sen[g_sensor_num_u16].position_yet_q17 = g_s_sen[g_sensor_num_u16].position_q17;
			
			if( buff0 >= g_s_sen[g_sensor_num_u16].mid_val_q17 )
				g_s_sen[g_sensor_num_u16].position_q17 = _IQ17mpy(g_s_sen[g_sensor_num_u16].high_coefficient_q17, _IQ17sqrt(buff0 - g_s_sen[g_sensor_num_u16].mid_val_q17)) + _IQ17(256.0);
			else
				g_s_sen[g_sensor_num_u16].position_q17 = _IQ17mpy(g_s_sen[g_sensor_num_u16].low_coefficient_q17, _IQ17sqrt(buff0 - g_s_sen[g_sensor_num_u16].q17_min_val)) + _IQ17(512.0);

			if( g_s_sen[g_sensor_num_u16].position_q17 < 0 )
				g_s_sen[g_sensor_num_u16].position_q17 = 0;

			g_s_sen[g_sensor_num_u16].q17_position_diff = g_s_sen[g_sensor_num_u16].position_q17 - g_s_sen[g_sensor_num_u16].position_yet_q17;

			g_s_sen[SEN_NUM_R].position_yet_q17 = g_s_sen[SEN_NUM_R].position_q17;
			
			if( buff1 >= g_s_sen[SEN_NUM_R].mid_val_q17 )
				g_s_sen[SEN_NUM_R].position_q17 = _IQ17mpy(g_s_sen[SEN_NUM_R].high_coefficient_q17, _IQ17sqrt(buff1 - g_s_sen[SEN_NUM_R].mid_val_q17)) + _IQ17(256.0);
			else
				g_s_sen[SEN_NUM_R].position_q17 = _IQ17mpy(g_s_sen[SEN_NUM_R].low_coefficient_q17, _IQ17sqrt(buff1 - g_s_sen[SEN_NUM_R].q17_min_val)) + _IQ17(512.0);

			if( g_s_sen[SEN_NUM_R].position_q17 < 0 )
				g_s_sen[SEN_NUM_R].position_q17 = 0;

			g_s_sen[SEN_NUM_R].q17_position_diff = g_s_sen[SEN_NUM_R].position_q17 - g_s_sen[SEN_NUM_R].position_yet_q17;
		}

		////////////////////////////////////////////////////////////////////////////////////////
*/
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
	
}

static void _set_45_sensor(void)
{

}

static void _set_front_sensor(void)
{

}

void set_sensor(void)
{
	init_sensor();

	StartCpuTimer2();
	
	_set_side_sensor();
	_set_45_sensor();
	_set_front_sensor();

	StopCpuTimer2();
}

