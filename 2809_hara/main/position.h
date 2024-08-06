//###########################################################################
//
// FILE		: position.c
//
// TITLE	: position c file.
//
// Author	: Ho Jin Roh
//
// Company	: Maze & Hz
//
//###########################################################################
// $Release Date: 2024.05.26 $
//###########################################################################

#ifndef __POSITION_H__
#define __POSITION_H__

extern void init_position(void);
extern void estimate_position_used_input(PositionVariable *sp_pos);
extern void estimate_position_used_sensor(void);
extern void adjust_position(void);

#endif

