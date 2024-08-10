//###########################################################################
//
// FILE:    VFD.h
//
// TITLE:   MRSFAF VFD header.
//
//###########################################################################
// $Release Date: 2006.10.2 $
//###########################################################################
#ifndef __LCD_H__
#define __LCD_H__



typedef unsigned char BYTE;
typedef unsigned int WORD;
typedef unsigned long LONG;


extern void InitLCD(void);
extern void LCD_out(char data);
extern void LCD_out2(char rs, char data);
extern void LCDClear(void);
extern void LCDPrintf(char *form, ... );




#endif
