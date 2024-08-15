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

extern void InitMotor(void);
extern interrupt void IsrTimer2ForMotor(void);

extern void MoveToStop(_iq17 tar_dist, int32 tar_acc, _iq17 tar_vel);
extern void MoveToMove(_iq17 tar_dist, int32 tar_acc, _iq17 tar_vel, _iq17 dec_vel);

extern void InPlaceTurn(_iq17 tar_th, int32 tar_acc, _iq17 tar_vel);

#endif

