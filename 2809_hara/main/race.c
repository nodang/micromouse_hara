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

static BOOL _to_move_if_possible()
{
	// decide direction from position difference
	int16 pos_diff = path.arr[0] - robot.pos;
	int16 should_go_dir = 0xf;
	
	if (pos_diff == 0x01)	should_go_dir = NORTH;
	if (pos_diff == 0x10)	should_go_dir = EAST;
	if (pos_diff == -0x01)	should_go_dir = SOUTH;
	if (pos_diff == -0x10)	should_go_dir = WEST;

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

		return TRUE;
	}
	else
		return FALSE;
}

void search_race()
{
	// go to the goal -> search the maze on the way home
	int16 robot_pos, wall_state;
	_iq17 gone_dist;
	BOOL end_of_while = FALSE;
	
	// go to the goal
	while (1)
	{
		// 센서값으로 벽 정보 읽기
		_InlineSaveWallData(robot_pos, wall_state, gone_dist);

		// 종료 확인
		end_of_while = _InlineCheckWhetherRobotIsReachedToGoal(&robot_pos);

		if (end_of_while)
		{
			//draw_the_figure(DRAW_DELAY);
			break;
		}
		else if (path.ind == 0)
		{
			// 현재 위치에서 비용 계산 및 경로 계획
			calculate_cost_to_goal();
		}

		// Functions related to drawing
		//draw_the_figure(DRAW_DELAY);

		// 이동
		while (path.ind > 0 && !_to_move_if_possible())
		{
			// 이동할 공간이 없으면
			calculate_cost_to_goal();
			//draw_the_figure(DRAW_DELAY);
		}
	}

	// search the maze on the way home
	while (1)
	{
		// 센서값으로 벽 정보 읽기
		_InlineSaveWallData(robot_pos, wall_state, gone_dist);

		// 종료 확인
		if (robot_pos == HOME)
		{
			//draw_the_figure(DRAW_DELAY);
			break;
		}
		else if (path.ind == 0)
		{
			// 현재 위치에서 비용 계산 및 경로 계획
			calculate_cost_to_home();
		}

		// Functions related to drawing
		//draw_the_figure(DRAW_DELAY);

		// 이동
		while (path.ind > 0 && !_to_move_if_possible())
		{
			// 이동할 공간이 없으면
			calculate_cost_to_home();
			//draw_the_figure(DRAW_DELAY);
		}
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
		// 모든 경로를 소진하면 도착으로 봄
		if (path.ind > 0)
			_to_move_if_possible();

		//draw_the_figure(DRAW_DELAY);

		if (path.ind == 0)
			break;
	}
	/*
	// go to home as soon as possible
	calculate_cost_to_fast_home();

	while (1)
	{
		// 모든 경로를 소진하면 도착으로 봄
		if (path.ind > 0)
			_to_move_if_possible();

		//draw_the_figure(DRAW_DELAY);

		if (path.ind == 0)
			break;
	}
	*/
	while (1)
	{
		// 센서값으로 벽 정보 읽기
		_InlineSaveWallData(robot_pos, wall_state, gone_dist);

		// 종료 확인
		if (robot_pos == HOME)
		{
			//draw_the_figure(DRAW_DELAY);
			break;
		}
		else if (path.ind == 0)
		{
			// 현재 위치에서 비용 계산 및 경로 계획
			calculate_cost_to_fast_home();
		}

		// Functions related to drawing
		//draw_the_figure(DRAW_DELAY);

		// 이동
		while (path.ind > 0 && !_to_move_if_possible())
		{
			// 이동할 공간이 없으면
			calculate_cost_to_fast_home();
			//draw_the_figure(DRAW_DELAY);
		}
	}
}


