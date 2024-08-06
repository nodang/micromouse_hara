//###########################################################################
//
// FILE		: search.c
//
// TITLE		: _varhae_ Tracer search source file.
//
// Author	: leejaeseong
//
// Company	: Hertz
//
//###########################################################################
// $Release Date: 2009.11.15 $
//###########################################################################

#ifndef __SEARCH_H__
#define __SEARCH_H__

inline BOOL _InlineCheckWhetherRobotIsReachedToGoal(int16 *robot_pos)
{
	int16 i;

	for (i = 0; i < 4; i++)
	{
		if (*robot_pos == goal_node[i])
			return TRUE;
	}

	return FALSE;
}

inline void _InlineSaveWallData(int16 robot_pos, int16 wall_state, _iq17 gone_dist)
{
	robot_pos = robot.pos;
	gone_dist = (g_s_left_motor.s_dist.gone_q17 + g_s_left_motor.s_dist.gone_q17) >> 1;

	if (visit[robot_pos] == 0 && gone_dist > (BLOCK_WIDTH_DIV2 + _IQ17(10.0)))
	{
		visit[robot_pos] = 1;

		wall_state = 0x0;
		/*센서 데이터에 따른 벽 저장*/
		
		map[robot_pos].all = wall_state; //origin_map[robot_pos].all;
	}
}

extern void search_race();
extern void fast_race();

#endif
