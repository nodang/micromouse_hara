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

static _iq17 _wall_exist_criteria[SEN_NUM] = { 
	_IQ17(90.0), _IQ17(90.0), _IQ17(130.0), _IQ17(230.0),
	_IQ17(230.0), _IQ17(130.0), _IQ17(90.0), _IQ17(90.0)
};
/*
#define SIDE_SENSOR_LENGTH	_IQ17(30.0)
static void _adjust_theta(PositionVariable *sp_pos)
{
	_iq17	theta = _IQ17(0.0),
			sen_dist = _IQ17(0.0),

	Uint16 i = 0;
	BOOL wall_exist[SEN_NUM] = { FALSE, };

	for(i = 0; i < SEN_NUM; i++)
		wall_exist[i] = (g_s_sen[i].s_dist.value_q17 < _wall_exist_criteria[i]);

	// side walls exist
	if((wall_exist[0] || wall_exist[1]) && (wall_exist[6] || wall_exist[7]))
	{
		if(wall_exist[0])
		{
			// R back && L back
			if(wall_exist[7])
				sen_dist = g_s_sen[0].s_dist.value_q17 + g_s_sen[7].s_dist.value_q17;
			// R back && L Front
			else // if(wall_exist[6]
			{
				sen_dist = g_s_sen[0].s_dist.value_q17 + g_s_sen[6].s_dist.value_q17;
				if(sen_dist >= BLOCK_INSIDE_WIDTH)
					sen_dist -= SIDE_SENSOR_LENGTH;
				else //if(sen_dist < BLOCK_INSIDE_WIDTH)
					sen_dist += SIDE_SENSOR_LENGTH;
	
			}
		}
		else // if(wall_exist[1])
		{
			// R Front && L back
			if(wall_exist[7])
			{
				sen_dist = g_s_sen[1].s_dist.value_q17 + g_s_sen[7].s_dist.value_q17;				
				if(sen_dist >= BLOCK_INSIDE_WIDTH)
					sen_dist -= SIDE_SENSOR_LENGTH;
				else //if(sen_dist < BLOCK_INSIDE_WIDTH)
					sen_dist += SIDE_SENSOR_LENGTH;
			}
			// R Front && L Front
			else // if(wall_exist[6]
				sen_dist = g_s_sen[1].s_dist.value_q17 + g_s_sen[6].s_dist.value_q17;
		}

		theta = _IQ17acos(_IQ17div(BLOCK_INSIDE_WIDTH, sen_dist));
	}
	// only one side wall exists
	else if((wall_exist[0] || wall_exist[1]) || (wall_exist[6] || wall_exist[7]))
	{
		if(wall_exist[0] || wall_exist[1])
		{
			// calc possible
			if(wall_exist[0] && wall_exist[1])
				sen_dist = _IQ17abs(wall_exist[0] - wall_exist[1]);
			// calc impossible
			else; // if(wall_exist[0] || wall_exist[1])
		}
		else // if(wall_exist[6] || wall_exist[7])
		{
			// calc possible
			if(wall_exist[6] && wall_exist[7])
			{
				sen_dist = _IQ17abs(wall_exist[6] - wall_exist[7]);
			}
			// calc impossible
			else; // if(wall_exist[0] || wall_exist[1])
		}

		if(sen_dist > _IQ17(0.0))
			theta = _IQ17atan2(sen_dist, SIDE_SENSOR_LENGTH);
	}
	// side walls not exist
	else;

	sp_pos->th_q17 = (theta >> 2) + (sp_pos->th_q17 >> 2) + (sp_pos->th_q17 >> 1);
}
*/
void init_position(void)
{
	memset((void *)&g_s_epi, 0x00, sizeof(g_s_epi));
}

void estimate_position_used_input(PositionVariable *sp_pos)
{
	_iq17 temp;

	temp = (g_s_left_motor.s_speed.curr_vel_q17 + g_s_right_motor.s_speed.curr_vel_q17) >> 1;
	sp_pos->v_q17 = _IQ17mpyIQX(temp, 17, TIME_TICK, 30);

	temp = _IQ17div(g_s_left_motor.s_speed.curr_vel_q17 - g_s_right_motor.s_speed.curr_vel_q17, ROBOT_WIDTH);
	sp_pos->w_q17 = _IQ17mpyIQX(temp, 17, TIME_TICK, 30);

	sp_pos->th_q17 += sp_pos->w_q17;
	if(sp_pos->th_q17 > _IQ17(M_PI))		sp_pos->th_q17 -= _IQ17(M_PI) << 1;
	else if(sp_pos->th_q17 < _IQ17(M_PI))	sp_pos->th_q17 += _IQ17(M_PI) << 1;

	//_adjust_theta(sp_pos);

	sp_pos->x_q17 += _IQ17mpy(_IQ17cos(sp_pos->th_q17), sp_pos->v_q17);
	sp_pos->x_q17 += _IQ17mpy(_IQ17sin(sp_pos->th_q17), sp_pos->v_q17);
}


void adjust_position(void)
{
	

	g_s_left_motor.s_adj.adj_ratio_q17 = 0;
	g_s_right_motor.s_adj.adj_ratio_q17 = 0;
}

