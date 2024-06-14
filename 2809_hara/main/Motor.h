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

#ifndef __MOTOR_H__
#define __MOTOR_H__

extern void init_motor(void);
extern interrupt void motor_timer2_ISR(void);

extern void move_to_stop(_iq17 tar_dist, _iq15 tar_acc, _iq17 tar_vel);
extern void move_to_move(_iq17 tar_dist, _iq15 tar_acc, _iq17 tar_vel, _iq17 dec_vel);

#endif

