//###########################################################################
//
// FILE:    Val.h
//
// TITLE:   MRSFAF Grobal variable header.
//
//###########################################################################
// $Release Date: 2011.10.5 $
//###########################################################################

#include "struct.h"

#ifndef	__VARIABLE_H__
#define __VARIABLE_H__

#ifdef	__VARIABLE__
	#undef	__VARIABLE__
	#define VARIABLE_EXT
#else
	#define	VARIABLE_EXT extern
#endif

#define VARIABLE_OPT volatile

#define SW_U		(GpioDataRegs.GPADAT.bit.GPIO13)
#define SW_D		(GpioDataRegs.GPADAT.bit.GPIO26)
#define SW_R		(GpioDataRegs.GPADAT.bit.GPIO12)
#define SW_L		(GpioDataRegs.GPBDAT.bit.GPIO32)

//#define SEN_OFF		{GpioDataRegs.GPADAT.all &= 0xff3ff03f;}// 6,7,8,9,10,11,22,23 / 0100 0001 1111

#define CR		0x0D
#define BELL	0x07

#endif

