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
	_iq17 temp;

	temp = (g_s_left_motor.s_speed.curr_vel_q17 + g_s_right_motor.s_speed.curr_vel_q17) >> 1;
	sp_pos->v_q17 = _IQ17mpyIQX(temp, 17, TIME_TICK, 30);

	temp = _IQ17div(g_s_left_motor.s_speed.curr_vel_q17 - g_s_right_motor.s_speed.curr_vel_q17, ROBOT_WIDTH);
	sp_pos->w_q17 = _IQ17mpyIQX(temp, 17, TIME_TICK, 30);

	sp_pos->th_q17 += sp_pos->w_q17;
	if(sp_pos->th_q17 > _IQ17(M_PI))		sp_pos->th_q17 -= _IQ17(M_PI) << 1;
	else if(sp_pos->th_q17 < _IQ17(M_PI))	sp_pos->th_q17 += _IQ17(M_PI) << 1;

	sp_pos->x_q17 += _IQ17mpy(_IQ17cos(sp_pos->th_q17), sp_pos->v_q17);
	sp_pos->x_q17 += _IQ17mpy(_IQ17sin(sp_pos->th_q17), sp_pos->v_q17);
}

void estimate_position_used_sensor(void)
{
	PositionVariable *sp_pos = &g_s_eps;

	
}

void adjust_position(void)
{

}

