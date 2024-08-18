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

inline void _InlineSaveWallData(int16 robot_pos)
{
	int16 i, next_pos, wall_dir, wall_state;
	_iq17 gone_dist = (g_s_left_motor.s_dist.gone_q17 + g_s_left_motor.s_dist.gone_q17) >> 1;

	if (visit[robot_pos] == 0 && gone_dist > (BLOCK_WIDTH_DIV2 + _IQ17(10.0)))
	{
		visit[robot_pos] = 1;

		/* 센서 데이터 기반 벽 정보 */
		wall_state = 0x0;
		
		/* 센서 데이터에 따른 벽 저장*/		
		map[robot_pos].all = wall_state; //origin_map[robot_pos].all;

		/* 벽너머 노드의 벽 정보도 업데이트 */
		for (i = 0; i < 4; i++)
		{
			next_pos = robot_pos + diff[i];
			wall_dir = (1 << i);

			if (next_pos < 0 || next_pos >= MAP_SIZE)
				continue;

			if (map[robot_pos].all & wall_dir)
				map[next_pos].all |= (wall_dir << 2) % 15;
		}
	}
}

inline void _InlineMoveIfRobotCanMove()
{
	// decide direction from position difference
	int16 pos_diff = path.arr[0] - robot.pos;
	int16 should_go_dir = 0xf;
	
	if (pos_diff == diff[0])	should_go_dir = NORTH;
	if (pos_diff == diff[1])	should_go_dir = EAST;
	if (pos_diff == diff[2])	should_go_dir = SOUTH;
	if (pos_diff == diff[3])	should_go_dir = WEST;

	// check the possibility of movement
	// check the possibility of path tracking
	if ((should_go_dir & map[robot.pos].all) == 0)
	{
		// if the directions is different, adapt direction
		if (should_go_dir != robot.dir)
		{
			robot.dir = should_go_dir;
		}
		// if not, move the next position
		else
		{
			robot.pos = queue_pop(&path);
			//MoveToMove(BLOCK_WIDTH, 3000,_IQ17(650.0),_IQ17(650.0));
		}
	}
}

extern void SearchRace();
extern void FastRace();

#endif
