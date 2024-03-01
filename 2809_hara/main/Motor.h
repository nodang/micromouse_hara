//###########################################################################
//
// FILE		: Motor.h
//
// TITLE	: Motor h file.
//
// Author	: Yuk Keun Ho
//
// Company	: Maze
//
//###########################################################################
// $Release Date: 2011.11.14 $
//###########################################################################

#ifndef __MOTOR__
#define __MOTOR__

extern void init_motor(void);
extern interrupt void motor_timer2_ISR(void);

extern void move_to_stop();
extern void move_to_move();

#endif

