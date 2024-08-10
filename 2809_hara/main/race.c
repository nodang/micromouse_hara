//###########################################################################
//
// FILE		: search.c
//
// TITLE		: _666_ Tracer search source file.
//
// Author	: Yuk Keun Ho
//
// Company	: Maze & Hertz
//
//###########################################################################
// $Release Date: 2009.11.15 $
//###########################################################################


#include "DSP280x_Device.h"     // DSP280x Headerfile Include File
#include "DSP280x_Examples.h"   // DSP280x Examples Include File

#pragma CODE_SECTION(_to_move_if_possible, "ramfuncs2");
#pragma CODE_SECTION(search_race, "ramfuncs2");
#pragma CODE_SECTION(fast_race, "ramfuncs2");
static void _to_move_if_possible()
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
			MoveToMove(BLOCK_WIDTH,_IQ15(3000.0),_IQ17(650.0),_IQ17(650.0));
		}
	}
}

void search_race()
{
	// go to the goal -> search the maze on the way home
	int16 robot_pos, wall_state;
	_iq17 gone_dist;
	
	// go to the goal
	while (1)
	{
		// 종료 확인
		if (goal_node[0] == robot_pos ||
			goal_node[1] == robot_pos ||
			goal_node[2] == robot_pos ||
			goal_node[3] == robot_pos)
			break;

		// 센서값으로 벽 정보 읽기
		_InlineSaveWallData(robot_pos, wall_state, gone_dist);

		// 현재 위치에서 비용 계산 및 경로 계획
		if (path.ind == 0)
			calculate_cost_to_goal();

		// 이동
		_to_move_if_possible();
	}

	// search the maze on the way home
	while (1)
	{
		// 종료 확인
		if (robot_pos == HOME)
			break;
		
		// 센서값으로 벽 정보 읽기
		_InlineSaveWallData(robot_pos, wall_state, gone_dist);

		// 현재 위치에서 비용 계산 및 경로 계획
		if (path.ind == 0)
			calculate_cost_to_home();

		// 이동
		_to_move_if_possible();
	}
}

void fast_race()
{
	// go to the goal quickly -> go home quickly
	// just follow the conmposed path before race is started
	int16 robot_pos, wall_state;
	_iq17 gone_dist;

	// go to the goal as soon as possible.
	calculate_cost_to_fast_goal();

	while (1)
	{
		_to_move_if_possible();

		// 모든 경로를 소진하면 도착으로 봄
		if (path.ind == 0)
			break;
	}
	
	// go to home as soon as possible
	while (1)
	{
		// 종료 확인
		if (robot_pos == HOME)
			break;
	
		// 센서값으로 벽 정보 읽기
		_InlineSaveWallData(robot_pos, wall_state, gone_dist);

		// 현재 위치에서 비용 계산 및 경로 계획
		if (path.ind == 0)
			calculate_cost_to_fast_home();
		
		// 이동
		_to_move_if_possible();
	}
}


