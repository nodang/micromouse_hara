//###########################################################################
//
// FILE		: Race.c
//
// TITLE	: race c file.
//
// Author	: Ho Jin Roh
//
// Company	: Maze & Hertz
//
//###########################################################################
// $Release Date: 2024.05.26 $
//###########################################################################


#include "DSP280x_Device.h"     // DSP280x Headerfile Include File
#include "DSP280x_Examples.h"   // DSP280x Examples Include File

#pragma CODE_SECTION(SearchRace, "ramfuncs2");
#pragma CODE_SECTION(FastRace, "ramfuncs2");

void SearchRace()
{
	// go to the goal -> search the maze on the way home
	int16 robot_pos;
	
	// go to the goal
	while (1)
	{
		robot_pos = robot.pos;
		
		// ���� Ȯ��
		if (goal_node[0] == robot_pos ||
			goal_node[1] == robot_pos ||
			goal_node[2] == robot_pos ||
			goal_node[3] == robot_pos)
			break;

		// ���������� �� ���� �б�
		_InlineSaveWallData(robot_pos);

		// ���� ��ġ���� ��� ��� �� ��� ��ȹ
		if (path.ind == 0)
			calculate_cost_to_goal();

		// �̵�
		_InlineMoveIfRobotCanMove();
	}

	// search the maze on the way home
	while (1)
	{
		robot_pos = robot.pos;
		
		// ���� Ȯ��
		if (robot_pos == HOME)
			break;
		
		// ���������� �� ���� �б�
		_InlineSaveWallData(robot_pos);

		// ���� ��ġ���� ��� ��� �� ��� ��ȹ
		if (path.ind == 0)
			calculate_cost_to_home();

		// �̵�
		_InlineMoveIfRobotCanMove();
	}
}

void FastRace()
{
	// go to the goal quickly -> go home quickly
	// just follow the conmposed path before race is started
	int16 robot_pos;

	// go to the goal as soon as possible.
	calculate_cost_to_fast_goal();

	while (1)
	{
		_InlineMoveIfRobotCanMove();

		// ��� ��θ� �����ϸ� �������� ��
		if (path.ind == 0)
			break;
	}
	
	// go to home as soon as possible
	while (1)
	{
		robot_pos = robot.pos;
		
		// ���� Ȯ��
		if (robot_pos == HOME)
			break;
	
		// ���������� �� ���� �б�
		_InlineSaveWallData(robot_pos);

		// ���� ��ġ���� ��� ��� �� ��� ��ȹ
		if (path.ind == 0)
			calculate_cost_to_fast_home();
		
		// �̵�
		_InlineMoveIfRobotCanMove();
	}
}


