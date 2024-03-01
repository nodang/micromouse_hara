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
#define	SENSOR_W_CUT			tan(M_PI * SENSOR_F_CUT / SENSOR_F_SAMPLE)

#define	SENSOR_Ka	    		_IQ30(-0.9390625058)//(W_CUT -1) / (W_CUT + 1)
#define	SENSOR_Kb				_IQ30(0.0304687471)// W_CUT / (W_CUT + 1)

#define SENSOR_F_CUT_DIFF		50//(50Hz)
#define	SENSOR_F_SAMPLE_DIFF	2000//(2KHz)
#define	SENSOR_W_CUT_DIFF		tan(M_PI * SENSOR_F_CUT_DIFF / SENSOR_F_SAMPLE_DIFF)

#define	SENSOR_Ka_DIFF	    	_IQ30(-0.8540806855)//(W_CUT -1) / (W_CUT + 1)
#define	SENSOR_Kb_DIFF			_IQ30(0.0729596573)// W_CUT / (W_CUT + 1)


#define SEN_NUM			8
#define SEN_NUM_S0		7	// numbering start at 0
#define SEN_NUM_HALF	4
#define SEN_NUM_HALF_S0	3	// numbering start at 0

#define SEN_NUM_R		(SEN_NUM_S0 - g_u16_sensor_num) // numbering reverse

#define RBS_SEN0	0x00000010			/*GPIO4		0000 0000 0000 0000  0000 0000 0001 0000  */
#define RFS_SEN1	0x00000020			/*GPIO5	   	0000 0000 0000 0000  0000 0000 0010 0000  */
#define R45_SEN2	0x00000040			/*GPIO6	   	0000 0000 0000 0000  0000 0000 0100 0000  */
#define RF_SEN3		0x00000080			/*GPIO7		0000 0000 0000 0000  0000 0000 1000 0000  */
#define LF_SEN4		0x00000100			/*GPIO8		0000 0000 0000 0000  0000 0001 0000 0000  */
#define L45_SEN5	0x00000200			/*GPIO9	   	0000 0000 0000 0000  0000 0010 0000 0000  */
#define LFS_SEN6	0x00000400			/*GPIO10	0000 0000 0000 0000  0000 0100 0000 0000  */
#define LBS_SEN7	0x00000800			/*GPIO11	0000 0000 0000 0000  0000 1000 0000 0000  */
#define SEN_ALL		0x00000ff0			/*			0000 0000 0000 0000  0000 1111 1111 0000  */


#define RBS_SEN_ADC_SEQ		0x0000
#define RFS_SEN_ADC_SEQ		0x1111
#define R45_SEN_ADC_SEQ		0x2222
#define RF_SEN_ADC_SEQ		0x3333
#define LF_SEN_ADC_SEQ		0x4444
#define L45_SEN_ADC_SEQ		0x5555
#define LFS_SEN_ADC_SEQ		0x6666
#define LBS_SEN_ADC_SEQ		0x7777


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
	memset((void *)s_sen, 0x00, sizeof(s_sen));

	g_u16_sensor_num = 0;
}

// 의동이형 센서 인터럽트 원형
#if 0
interrupt void sensor_timer0_ISR(void)
{
	PieCtrlRegs.PIEACK.all = PIEACK_GROUP1;

	IER &= MINT1;
	EINT;

	GpioDataRegs.GPASET.bit.GPIO27 = 1;	

	GpioDataRegs.GPASET.all = sensor_shoot_[g_u16_sensor_num];

	AdcRegs.ADCCHSELSEQ1.all = sensor_seq_[g_u16_sensor_num];
	AdcRegs.ADCCHSELSEQ2.all = sensor_seq_[g_u16_sensor_num];
	AdcRegs.ADCCHSELSEQ3.all = sensor_seq_[g_u16_sensor_num];
	AdcRegs.ADCCHSELSEQ4.all = sensor_seq_[g_u16_sensor_num];

	AdcRegs.ADCTRL2.bit.SOC_SEQ1 = 1;
}

interrupt void adc_ISR(void)
{
	static Uint16 ADC_channel_cnt = 0;
	static Uint32 u32_sen_sum0 = 0; 
	_iq17 buff0;

	PieCtrlRegs.PIEACK.all = PIEACK_GROUP1;

	if(ADC_channel_cnt == 0)
	{
		GpioDataRegs.GPACLEAR.all = sensor_shoot_[g_u16_sensor_num];
	}

	u32_sen_sum0 +=	AdcMirror.ADCRESULT0;
	u32_sen_sum0 +=	AdcMirror.ADCRESULT1;
	u32_sen_sum0 +=	AdcMirror.ADCRESULT2;
	u32_sen_sum0 +=	AdcMirror.ADCRESULT3;
	
	u32_sen_sum0 +=	AdcMirror.ADCRESULT4;
	u32_sen_sum0 +=	AdcMirror.ADCRESULT5;
	u32_sen_sum0 +=	AdcMirror.ADCRESULT6;
	u32_sen_sum0 +=	AdcMirror.ADCRESULT7;
	
	u32_sen_sum0 +=	AdcMirror.ADCRESULT8;
	u32_sen_sum0 +=	AdcMirror.ADCRESULT9;
	u32_sen_sum0 +=	AdcMirror.ADCRESULT10;
	u32_sen_sum0 +=	AdcMirror.ADCRESULT11;
	
	u32_sen_sum0 +=	AdcMirror.ADCRESULT12;
	u32_sen_sum0 +=	AdcMirror.ADCRESULT13;
	u32_sen_sum0 +=	AdcMirror.ADCRESULT14;
	u32_sen_sum0 +=	AdcMirror.ADCRESULT15;

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
		s_sen[g_u16_sensor_num].u16_value 	= (Uint16)(u32_sen_sum0 >> 3); // divide 8
		u32_sen_sum0 = 0;

		// sensor variable filtering
		s_sen[g_u16_sensor_num].q17_lpf_out_data_yet = s_sen[g_u16_sensor_num].q17_lpf_out_data;
		s_sen[g_u16_sensor_num].q17_lpf_out_data = _IQ17mpyIQX(SENSOR_Kb, 30, s_sen[g_u16_sensor_num].q17_lpf_in_data + (((int32)(s_sen[g_u16_sensor_num].u16_value)) << 17), 17) 
										 			- _IQ17mpyIQX(SENSOR_Ka, 30, s_sen[g_u16_sensor_num].q17_lpf_out_data, 17);
		s_sen[g_u16_sensor_num].q17_lpf_in_data = ((int32)(s_sen[g_u16_sensor_num].u16_value)) << 17;

		// for position data buff
		buff0 = s_sen[g_u16_sensor_num].q17_lpf_out_data;

		// Right sensor difference filtering
		s_sen[g_u16_sensor_num].q17_lpf_in_data_diff = s_sen[g_u16_sensor_num].q17_lpf_out_data - s_sen[g_u16_sensor_num].q17_lpf_out_data_yet;
		s_sen[g_u16_sensor_num].q17_lpf_out_data_diff = _IQ17mpyIQX(SENSOR_Kb_DIFF, 30, s_sen[g_u16_sensor_num].q17_lpf_in_data_diff + s_sen[g_u16_sensor_num].q17_lpf_in_data_diff_yet, 17) 
														- _IQ17mpyIQX(SENSOR_Ka_DIFF, 30, s_sen[g_u16_sensor_num].q17_lpf_out_data_diff, 17);
		s_sen[g_u16_sensor_num].q17_lpf_in_data_diff_yet = s_sen[g_u16_sensor_num].q17_lpf_in_data_diff;

		if(g_u16_sensor_num < SEN_NUM_S0)
			g_u16_sensor_num++;
		else
		{
			g_u16_sensor_num = 0;
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
	GpioDataRegs.GPASET.all = (sensor_shoot_[g_u16_sensor_num] | sensor_shoot_[SEN_NUM_R]);

	AdcRegs.ADCCHSELSEQ1.all = sensor_seq_[g_u16_sensor_num];
	AdcRegs.ADCCHSELSEQ2.all = sensor_seq_[SEN_NUM_R];
	AdcRegs.ADCCHSELSEQ3.all = sensor_seq_[g_u16_sensor_num];
	AdcRegs.ADCCHSELSEQ4.all = sensor_seq_[SEN_NUM_R];

	AdcRegs.ADCTRL2.bit.SOC_SEQ1 = 1;
}

interrupt void adc_ISR(void)
{
	static Uint16 ADC_channel_cnt = 0;
	static Uint32 u32_sen_sum0 = 0, u32_sen_sum1 = 0;
	_iq17 buff0, buff1;

	PieCtrlRegs.PIEACK.all = PIEACK_GROUP1;

	if(ADC_channel_cnt == 0)
		GpioDataRegs.GPACLEAR.all = (sensor_shoot_[g_u16_sensor_num] | sensor_shoot_[SEN_NUM_R]);
	
	u32_sen_sum0 +=	AdcMirror.ADCRESULT0;
	u32_sen_sum0 +=	AdcMirror.ADCRESULT1;
	u32_sen_sum0 +=	AdcMirror.ADCRESULT2;
	u32_sen_sum0 +=	AdcMirror.ADCRESULT3;
	
	u32_sen_sum1 +=	AdcMirror.ADCRESULT4;
	u32_sen_sum1 +=	AdcMirror.ADCRESULT5;
	u32_sen_sum1 +=	AdcMirror.ADCRESULT6;
	u32_sen_sum1 +=	AdcMirror.ADCRESULT7;
	
	u32_sen_sum0 +=	AdcMirror.ADCRESULT8;
	u32_sen_sum0 +=	AdcMirror.ADCRESULT9;
	u32_sen_sum0 +=	AdcMirror.ADCRESULT10;
	u32_sen_sum0 +=	AdcMirror.ADCRESULT11;
	
	u32_sen_sum1 +=	AdcMirror.ADCRESULT12;
	u32_sen_sum1 +=	AdcMirror.ADCRESULT13;
	u32_sen_sum1 +=	AdcMirror.ADCRESULT14;
	u32_sen_sum1 +=	AdcMirror.ADCRESULT15;

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
		s_sen[g_u16_sensor_num].u16_value 	= (Uint16)(u32_sen_sum0 >> 5); // divide 8 * 3
		s_sen[SEN_NUM_R].u16_value 			= (Uint16)(u32_sen_sum0 >> 5); // divide 8 * 3
		u32_sen_sum0 = u32_sen_sum1 = 0;
		
		//==================================================================//
		// 						Digital IIR LPF Part						//

		// Right sensor variable filtering
		s_sen[g_u16_sensor_num].q17_lpf_out_data_yet = s_sen[g_u16_sensor_num].q17_lpf_out_data;
		s_sen[g_u16_sensor_num].q17_lpf_out_data = _IQ17mpyIQX(SENSOR_Kb, 30, s_sen[g_u16_sensor_num].q17_lpf_in_data + (((int32)(s_sen[g_u16_sensor_num].u16_value)) << 17), 17) 
										 			- _IQ17mpyIQX(SENSOR_Ka, 30, s_sen[g_u16_sensor_num].q17_lpf_out_data, 17);
		s_sen[g_u16_sensor_num].q17_lpf_in_data = ((int32)(s_sen[g_u16_sensor_num].u16_value)) << 17;

		// for position data buff
		buff0 = s_sen[g_u16_sensor_num].q17_lpf_out_data;

		// Right sensor difference filtering
		s_sen[g_u16_sensor_num].q17_lpf_in_data_diff = s_sen[g_u16_sensor_num].q17_lpf_out_data - s_sen[g_u16_sensor_num].q17_lpf_out_data_yet;
		s_sen[g_u16_sensor_num].q17_lpf_out_data_diff = _IQ17mpyIQX(SENSOR_Kb_DIFF, 30, s_sen[g_u16_sensor_num].q17_lpf_in_data_diff + s_sen[g_u16_sensor_num].q17_lpf_in_data_diff_yet, 17) 
														- _IQ17mpyIQX(SENSOR_Ka_DIFF, 30, s_sen[g_u16_sensor_num].q17_lpf_out_data_diff, 17);
		s_sen[g_u16_sensor_num].q17_lpf_in_data_diff_yet = s_sen[g_u16_sensor_num].q17_lpf_in_data_diff;

		// Left sensor variable filtering
		s_sen[SEN_NUM_R].q17_lpf_out_data_yet = s_sen[SEN_NUM_R].q17_lpf_out_data;
		s_sen[SEN_NUM_R].q17_lpf_out_data = _IQ17mpyIQX(SENSOR_Kb, 30, s_sen[SEN_NUM_R].q17_lpf_in_data + (((int32)(s_sen[SEN_NUM_R].u16_value)) << 17), 17) 
										 		- _IQ17mpyIQX(SENSOR_Ka, 30, s_sen[SEN_NUM_R].q17_lpf_out_data, 17);
		s_sen[SEN_NUM_R].q17_lpf_in_data = ((int32)(s_sen[SEN_NUM_R].u16_value)) << 17;

		// for position data buff
		buff1 = s_sen[SEN_NUM_R].q17_lpf_out_data;

		// Left sensor difference filtering
		s_sen[SEN_NUM_R].q17_lpf_in_data_diff = s_sen[SEN_NUM_R].q17_lpf_out_data - s_sen[SEN_NUM_R].q17_lpf_out_data_yet;
		s_sen[SEN_NUM_R].q17_lpf_out_data_diff = _IQ17mpyIQX(SENSOR_Kb_DIFF, 30, s_sen[SEN_NUM_R].q17_lpf_in_data_diff + s_sen[SEN_NUM_R].q17_lpf_in_data_diff_yet, 17) 
													- _IQ17mpyIQX(SENSOR_Ka_DIFF, 30, s_sen[SEN_NUM_R].q17_lpf_out_data_diff, 17);
		s_sen[SEN_NUM_R].q17_lpf_in_data_diff_yet = s_sen[SEN_NUM_R].q17_lpf_in_data_diff;

		//==================================================================//
		//					Sensor data Translate Distance					//
/*
		// Front & Side sensor position calculation -> What?!
		if(g_u16_sensor_num == 3)
			; //frontsentable_(g_u16_sensor_num, buff0, SEN_NUM_R, buff1);
		else	//	 포지션....making//////////////////////////////////////////////////////////////////
		{
			s_sen[g_u16_sensor_num].q17_position_yet = s_sen[g_u16_sensor_num].q17_position;
			
			if( buff0 >= s_sen[g_u16_sensor_num].q17_mid_val )
				s_sen[g_u16_sensor_num].q17_position = _IQ17mpy(s_sen[g_u16_sensor_num].q17_high_coefficient, _IQ17sqrt(buff0 - s_sen[g_u16_sensor_num].q17_mid_val)) + _IQ17(256.0);
			else
				s_sen[g_u16_sensor_num].q17_position = _IQ17mpy(s_sen[g_u16_sensor_num].q17_low_coefficient, _IQ17sqrt(buff0 - s_sen[g_u16_sensor_num].q17_min_val)) + _IQ17(512.0);

			if( s_sen[g_u16_sensor_num].q17_position < 0 )
				s_sen[g_u16_sensor_num].q17_position = 0;

			s_sen[g_u16_sensor_num].q17_position_diff = s_sen[g_u16_sensor_num].q17_position - s_sen[g_u16_sensor_num].q17_position_yet;

			s_sen[SEN_NUM_R].q17_position_yet = s_sen[SEN_NUM_R].q17_position;
			
			if( buff1 >= s_sen[SEN_NUM_R].q17_mid_val )
				s_sen[SEN_NUM_R].q17_position = _IQ17mpy(s_sen[SEN_NUM_R].q17_high_coefficient, _IQ17sqrt(buff1 - s_sen[SEN_NUM_R].q17_mid_val)) + _IQ17(256.0);
			else
				s_sen[SEN_NUM_R].q17_position = _IQ17mpy(s_sen[SEN_NUM_R].q17_low_coefficient, _IQ17sqrt(buff1 - s_sen[SEN_NUM_R].q17_min_val)) + _IQ17(512.0);

			if( s_sen[SEN_NUM_R].q17_position < 0 )
				s_sen[SEN_NUM_R].q17_position = 0;

			s_sen[SEN_NUM_R].q17_position_diff = s_sen[SEN_NUM_R].q17_position - s_sen[SEN_NUM_R].q17_position_yet;
		}

		////////////////////////////////////////////////////////////////////////////////////////
*/
		if(g_u16_sensor_num < SEN_NUM_HALF_S0)
			g_u16_sensor_num++;
		else
		{
			g_u16_sensor_num = 0;
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

