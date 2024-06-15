//###########################################################################
//
// FILE:    VFD.h
//
// TITLE:   MRSFAF VFD header.
//
//###########################################################################
// $Release Date: 2011.10.5 $
//###########################################################################
#ifndef __VFD_H__
#define __VFD_H__

extern void VfdCtlRegInit(Uint16 CrlReg);
extern void VfdInit(void);
extern void VfdDataLoad(char *Buff);
extern 	void VFDPrintf(char *Form, ... );


#endif
