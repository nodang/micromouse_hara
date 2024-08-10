//###########################################################################
//
// FILE:    Main.h
//
// TITLE:   MRSFAF main header file.
//
//###########################################################################
// $Release Date: 2006.10.2 $
//###########################################################################
#ifndef __MAIN_H__
#define __MAIN_H__


extern void InitSystem(void);
extern void PrintMenu(void);
extern void Led_Off(void);
extern void Led_On(void);

interrupt void Motor_PID_ISR(void);
#endif


