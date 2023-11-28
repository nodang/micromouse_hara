//###########################################################################
//
// FILE		: senser.h
//
// TITLE	: senser h file
//
// Author	: Yuk Keun Ho
//
// Company	: Maze & Hz
//
//###########################################################################
// $Release Date: 2011.10.10 $
//###########################################################################


#ifndef __SENSOR_H__
#define __SENSOR_H__

extern void init_sensor(void);
extern interrupt void sensor_timer0_ISR(void);
extern interrupt void adc_ISR(void);
extern void set_sensor(void);

#endif
