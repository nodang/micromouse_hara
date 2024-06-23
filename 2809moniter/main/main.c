//###########################################################################
//
// FILE:   MAIN.c
//
// TITLE:  MRSFAF main c file.
//
//###########################################################################
// $Release Date: 2011.10.5 $
//###########################################################################
#define __VARIABLE__
#define __STRUCT__

#include "DSP280x_Device.h"     // DSP280x Headerfile Include File
#include "DSP280x_Examples.h"   // DSP280x Examples Include File

#define SEN		(GpioDataRegs.GPADAT.all & 0x00000ff0)	/* 0000 0000 0000 0000  0000 1111 1111 0000 */
#define STANDBY (GpioDataRegs.GPADAT.all & 0x00400000)  /* 0000 0000 0100 0000  0000 0000 0000 0000 */
#define UTIL_A	(GpioDataRegs.GPADAT.all & 0x08800000)	/* LED & BUZZ */ /* 0000 1000 1000 0000  0000 0000 0000 0000 */
#define UTIL_B	(GpioDataRegs.GPBDAT.all & 0x3)			/* LED & BUZZ */ /* 011 */

void main(void)
{
	char RcvData;
	
	// Step 1. Initialize System Control:
	// PLL, WatchDog, enable Peripheral Clocks
	// This example function is found in the DSP280x_SysCtrl.c file.
	InitSysCtrl();

	// Step 2. Initalize GPIO: 
	// This example function is found in the DSP280x_Gpio.c file and
	// illustrates how to set the GPIO to it's default state.
	InitGpio();

	//GpioDataRegs.GPACLEAR.bit.GPIO8= 1;
	//GpioDataRegs.GPACLEAR.bit.GPIO20= 1;
	//GpioDataRegs.GPACLEAR.bit.GPIO21= 1;
	//GpioDataRegs.GPACLEAR.bit.GPIO22= 1;

	// Step 3. Clear all interrupts and initialize PIE vector table:
	// Disable CPU interrupts 
	DINT;
	
	MemCopy(&RamfuncsLoadStart, &RamfuncsLoadEnd, &RamfuncsRunStart);
	MemCopy(&RamfuncsLoadStart1, &RamfuncsLoadEnd1, &RamfuncsRunStart1);
	MemCopy(&Flash28_API_LoadStart, &Flash28_API_LoadEnd, &Flash28_API_RunStart);
	// Initialize the PIE control registers to their default state.
	// The default state is all PIE interrupts disabled and flags
	// are cleared.  
	// This function is found in the DSP280x_PieCtrl.c file.
	InitPieCtrl();

	// Disable CPU interrupts and clear all CPU interrupt flags:
	IER = 0x0000;
	IFR = 0x0000;

	// Initialize the PIE vector table with pointers to the shell Interrupt 
	// Service Routines (ISR).	
	// This will populate the entire table, even if the interrupt
	// is not used in this example.  This is useful for debug purposes.
	// The shell ISR routines are found in DSP280x_DefaultIsr.c.
	// This function is found in DSP280x_PieVect.c.
	InitPieVectTable();
	
	// The	RamfuncsLoadStart, RamfuncsLoadEnd, and RamfuncsRunStart
	// symbols are created by the linker. Refer to the F2808.cmd file. 

	// Call Flash Initialization to setup flash waitstates
	// This function must reside in RAM
	InitFlash();

	InitSystem();
	//InitLCD();
	VfdInit();
	//EnableInterrupts();

	// Enable global Interrupts and higher priority real-time debug events:
	//EINT;   // Enable Global interrupt INTM
	//ERTM;   // Enable Global realtime interrupt DBGM

	//Init_ISR();
	//EnableInterrupts();

	//StartCpuTimer1(); 

	GpioDataRegs.GPACLEAR.all = SEN | STANDBY | UTIL_A;
	GpioDataRegs.GPBCLEAR.all = UTIL_B;
		
	VFDPrintf("__HARA__");

	if(!SW_U) {
		StopCpuTimer1();
		UserProgramStart();
	}

	PrintMenu();
	TxPrintf("\n[Monitor2809]#");

	while(1)
	{		
		RcvData = SCIx_RxChar();
		SCIx_TxChar(RcvData);

		switch(RcvData)
		{
			case 'M':
			case 'm':
				StopCpuTimer1();
				//Led_Off();
				PrintMenu();
				break;
				
			case 'A':
			case 'a':
				StopCpuTimer1();
				//Led_Off();
				TxPrintf("\n  Delete All Flash Sector.\n");
				DeleteAllFlash();
				break;
				
			case 'O':
			case 'o':
				StopCpuTimer1();
				//Led_Off();
				DeleteSecletFlash();
				break;
				
			case 'D':
			case 'd':
				StopCpuTimer1();
				//Led_Off();
				UserFlashErase_DownloadPrm();
				break;
				
			case 'G':
			case 'g':
				StopCpuTimer1();
				//Led_Off();
				UserProgramStart();
				break;

			case CR:
				StopCpuTimer1();
				//Led_Off();
				break;
				
			default:
				StopCpuTimer1();
				//Led_Off();
				TxPrintf("\n=======Wrong Command!!========\n");
				PrintMenu();
				break;
		}
		
		TxPrintf("\n[Monitor2809]#");
	}

}

void InitSystem(void)
{
	InitSci();
	//InitFlashAPI2808();
	InitFlashAPI2809();
}

void PrintMenu(void)
{
	TxPrintf("\n\n");
	TxPrintf("========   TMS320F2809 Monitor V1.0   ========\n");	
	TxPrintf("  M  :	Display Menu.\n");
	TxPrintf("  A  :	Delete All Flash.( Sector B - H )\n");
	TxPrintf("  O  :	Delete Select Sector Flash. ( ex. O B )\n");
	TxPrintf("  D  :	User Sector Flash Erase & DownLoad User Program ( *.Hex )\n");
	TxPrintf("  G  :	Go User Program\n");
	TxPrintf("========   by Hwang Ha-yun Maze 8th   ========\n");	
	TxPrintf("========  blog.naver.com/hhyjjang.do  ========\n\n");
	TxPrintf("=======  CPU_2809 25th NODANG Monitor  =======\n");
}
