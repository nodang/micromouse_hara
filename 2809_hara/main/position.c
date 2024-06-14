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

#include "DSP280x_Device.h"
#include "DSP280x_Examples.h"   // DSP280x Examples Include File
#include "Main.h"
#include "Position.h"

static void _calculate_position(PositionVariable *sp_pos)
{

}

void init_position(void)
{
	memset((void *)&g_s_epi, 0x00, sizeof(g_s_epi));
	memset((void *)&g_s_eps, 0x00, sizeof(g_s_eps));
}

void estimate_position_used_input(void)
{
	PositionVariable *sp_pos = &g_s_epi;

}

void estimate_position_used_sensor(void)
{
	PositionVariable *sp_pos = &g_s_eps;

}

void adjust_position(void)
{

}

