#define _MAIN_
#define __STRUCT__


#include "DSP280x_Device.h"     // DSP281x Headerfile Include File
#include "DSP280x_Examples.h"  // DSP281x Examples Include File

void System_Init(void)
{
	DINT;				// ��ü ���ͷ�Ʈ ����
	InitSysCtrl();		// ��ġ�� ����, PLL �ʱ�ȭ, �ֺ� ��ġ Ŭ������
	InitGpio();			// ����� ��Ʈ �ʱ�ȭ	
	InitCpuTimers();
	
	MemCopy(&RamfuncsLoadStart, 	&RamfuncsLoadEnd, 		&RamfuncsRunStart); 
	MemCopy(&RamfuncsLoadStart1, 	&RamfuncsLoadEnd1, 		&RamfuncsRunStart1);
	
	InitSci();			
	InitSpi();
	InitPieCtrl();		// PIE ���� �������� �ʱ�ȭ ����
	IER = 0x0000;		// ���ͷ�Ʈ �ο��̺� �������� Ŭ����
	IFR = 0x0000;		// ���ͷ�Ʈ �÷��� �������� Ŭ����
	InitPieVectTable();
	InitAdc();

	Init_ISR();

	InitEPWM( &EPwm1Regs );
	InitEPWM( &EPwm2Regs );

	InitEQep( &RightQepRegs );
	InitEQep( &LeftQepRegs );
	
}

void Variable_Init(void)
{
	memset((void *)&g_s_flags, 0x00, sizeof(g_s_flags));

	// Initialize "don't reset" things of motor global variables
	g_ref_vel_i32 =
	g_accel_u16 =
	g_motor_kp_u32 =
	g_motor_ki_u32 =
	g_motor_kd_u32 = 0;

	init_motor();
	init_sensor();
}

void main(void)
{
	long save_val[15] = { 0, }, cnt = 0, i = 0;
	
	System_Init();
	Variable_Init();

// condition is FALSE -> measure the sensor data to calculate dist
#if 1
	Menu();
#else
	VFDPrintf("BE_READY");

	//STANDBY_OFF;
	//STANDBY_ON;

	//g_s_right_motor.stop_flag = ON; 										// �̰� ����? �� �־�� �ϴµ�
	//g_s_right_motor.q17_user_velocity = _IQ17(0.0);
	//g_s_right_motor.q26_pos_adjrate = _IQ26(1.0);

	StartCpuTimer2();
	SCIA_ISR_ON;
	
	while(1)
	{
		//TxPrintf("RBS(0): %u\n", RBS.u16_value);
		if(cnt < 15)
		{
			TxPrintf("%ld,%u,%ld\n", cnt, RBS.value_u16, RBS.lpf_out_data_q17 >> 17);

			if(g_sci_on_u16)
			{
				save_val[cnt] =  RBS.lpf_out_data_q17 >> 17;
				if(cnt < 15)
					cnt++;
				g_sci_on_u16 = OFF;
				DELAY_US(130000);
			}

			if(cnt >= 15)
			{
				StopCpuTimer2();
				SCIA_ISR_OFF;
			}
		}
		else
		{
			for(i = 0; i < cnt; i++)
				TxPrintf("%ld:%ld    ", i, save_val[i]);
			TxPrintf("\n");
		}
#endif
#if 0
		TxPrintf("qep: %+5d  pwm: %5d  curr: %+5.2lf  next: %+5.2lf  user: %+5d\n", g_s_right_motor.i16_qep_val, 
										(int16)(g_s_right_motor.q17_pid_out_term >> 17), 
										_IQtoF(g_s_right_motor.q17_current_velocity),
										_IQtoF(g_s_right_motor.q17_next_velocity),
										(int16)(g_s_right_motor.q17_user_velocity >> 17));
#endif
#if 0
		TxPrintf("LBS: %4u    LFS: %4u    L45: %4u    LF: %4u          RF: %4u    R45: %4u    RFS: %4u    RBS: %4u                num : %u\n", 
				LBS.u16_value, LFS.u16_value, L45.u16_value, LF.u16_value, 
				RF.u16_value, R45.u16_value, RFS.u16_value, RBS.u16_value, g_u16_sensor_num);
#endif
#if 0
		GpioDataRegs.GPBSET.bit.GPIO33 = 1;
		GpioDataRegs.GPASET.bit.GPIO27 = 1;
		DELAY_US(500000);
		GpioDataRegs.GPBCLEAR.bit.GPIO33 = 1;
		GpioDataRegs.GPACLEAR.bit.GPIO27 = 1;
		DELAY_US(500000);
#endif
	//}
}

void Delay(Uint32 Cnt)
{
	while(Cnt--)
	{
		asm("		nop");
		
		asm("	nop");	
	}
}

