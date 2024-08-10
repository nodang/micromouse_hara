//###########################################################################
//
// FILE		: algo.c
//
// TITLE	: algo c file
//
// Author	: Ho Jin Roh
//
// Company	: Maze & Hz
//
//###########################################################################
// $Release Date: 2024.08.05 $
//###########################################################################

#include "DSP280x_Device.h"     // DSP280x Headerfile Include File
#include "DSP280x_Examples.h"   // DSP280x Examples Include File

#pragma CODE_SECTION(init_map, "ramfuncs2");
#pragma CODE_SECTION(init_algo, "ramfuncs2");
#pragma CODE_SECTION(init_h_func_to_goal, "ramfuncs2");
#pragma CODE_SECTION(init_a_star_algo, "ramfuncs2");
#pragma CODE_SECTION(init_bfs_algo, "ramfuncs2");
#pragma CODE_SECTION(a_star_algo_to_goal, "ramfuncs2");
#pragma CODE_SECTION(queue_the_path, "ramfuncs2");
void init_map(void)
{
	int16 i;

	memset(map, 0, sizeof(map));
	memset(visit, 0, sizeof(visit));
	memset(closed, 0, sizeof(closed));
	memset(&queue, 0, sizeof(queue));
	memset(&path, 0, sizeof(path));

	robot.pos = 0x00;
	robot.dir = NORTH;

	goal_node[0] = GOAL_1;
	goal_node[1] = GOAL_2;
	goal_node[2] = GOAL_3;
	goal_node[3] = GOAL_4;

	// the order of diff matches north, east, south, west.
	diff[0] = PLUS_Y;
	diff[1] = PLUS_X;
	diff[2] = MINUS_Y;
	diff[3] = MINUS_X;

	diff_eight[0] = PLUS_Y;
	diff_eight[1] = PLUS_X_Y;
	diff_eight[2] = PLUS_X;
	diff_eight[3] = MINUS_X_PLUS_Y;
	diff_eight[4] = MINUS_Y;
	diff_eight[5] = MINUS_X_Y;
	diff_eight[6] = MINUS_X;
	diff_eight[7] = PLUS_X_MINUS_Y;

	// init_map about side wall
	for (i = 0; i < MAP_SIZE; i++)
	{
		// y
		if ((i & 0x0f) == 0x0f)			map[i].all |= NORTH;
		else if ((i & 0x0f) == 0x00)	map[i].all |= SOUTH;

		// x
		if ((i & 0xf0) == 0xf0)			map[i].all |= EAST;
		else if ((i & 0xf0) == 0x00)	map[i].all |= WEST;
	}
}

void init_algo()
{
	int16 i;
	
	memset(&path, 0, sizeof(path));
	memset(closed, 0, sizeof(closed));
	memset(&queue, 0, sizeof(queue));

	for (i = 0; i < MAP_SIZE; i++)
	{
		cost[i] = g[i] = h[i] = MAX_COST_8UL;
	}
}

void init_h_func_to_goal()
{
	int16 i, node;
	
	for (i = 0; i < 4; i++)
	{
		node = goal_node[i];

		queue_push(&queue, node);
		closed[node] = 1;
		h[node] = 0;
	}
}

void init_a_star_algo()
{
	int16 start_node = robot.pos;

	memset(&pq, 0, sizeof(pq));
	memset(closed, 0, sizeof(closed));
	memset(past_node, 0, sizeof(past_node));

	heap_push(&pq, start_node, g[start_node] + h[start_node]);
	closed[start_node] = 1;
	past_node[start_node] = start_node;
}

void init_bfs_algo()
{
	int16 i, start_node = robot.pos;

	memset(&queue, 0, sizeof(queue));
	memset(&path, 0, sizeof(path));
	memset(closed, 0, sizeof(closed));

	for (i = 0; i < MAP_SIZE; i++)
	{
		cost[i] = MAX_COST_8UL;
	}

	queue_push(&queue, start_node);
	closed[start_node] = 1;
	cost[start_node] = 0;
}

int16 a_star_algo_to_goal()
{
	int16 node, next_node, start_node = pq.node[0];
	int16 i, temp;

	while (pq.heap_size != 0)
	{
		node = heap_pop(&pq);

		for (i = 0; i < 4; i++)
			if (node == goal_node[i])
				return node;

		for (i = 0; i < 4; i++)
		{
			if (map[node].all & (1 << i))
				continue;

			next_node = node + diff[i];

			//if (next_node < 0 || next_node >= MAP_SIZE || closed[next_node] == 1)
			if (next_node < 0 || next_node >= MAP_SIZE)
				continue;

			// 목표에서부터 탐색하기 때문에 너머의 벽도 확인해야함
			//((i + 2) & 3)) == ((i + 2) % 4))
			if (map[next_node].all & (1 << ((i + 2) & 3)))
				continue;

			if (g[next_node] > g[node])
			{
				g[next_node] = g[node] + 1;

				temp = g[next_node] + h[next_node];
				cost[next_node] = temp;
				heap_push(&pq, next_node, temp);
				closed[next_node] = 1;
				past_node[next_node] = node;
			}
		}
	}

	return start_node;
}

void queue_the_path(int16 last_node)
{
	int16 i, start_node = robot.pos;
	QueueType _path = { { 0, }, 0 };
	
	while (last_node != start_node)
	{
		_path.arr[_path.ind++] = last_node;
		last_node = past_node[last_node];
	}
	for (i = 1; i <= _path.ind; i++)
	{
		queue_push(&path, _path.arr[_path.ind - i]);
	}
}

//==========================================================================//
//                                SEARCH                                    //
//==========================================================================//

#pragma CODE_SECTION(_heuristics_func_to_goal, "ramfuncs2");
#pragma CODE_SECTION(_search_with_bfs_to_home, "ramfuncs2");
#pragma CODE_SECTION(calculate_cost_to_goal, "ramfuncs2");
#pragma CODE_SECTION(calculate_cost_to_home, "ramfuncs2");
static void _heuristics_func_to_goal()
{
	int16 i, node, next_dir, next_node;

	while (queue.ind > 0 && queue.ind < MAP_SIZE)
	{
		node = queue_pop(&queue);

		for (i = 0; i < 4; i++)
		{
			next_dir = (1 << i);

			if (map[node].all & next_dir)
				continue;

			next_node = node + diff[i];

			if (next_node < 0 || next_node >= MAP_SIZE || closed[next_node] == 1)
				continue;

			// 목표에서부터 탐색하기 때문에 너머의 벽도 확인해야함
			if (map[next_node].all & (1 << ((i + 2) & 3)))
				continue;

			queue_push(&queue, next_node);
			closed[next_node] = 1;

			h[next_node] = h[node] + 1;
		}
	}
}
static int16 _search_with_bfs_to_home()
{
	int16 node, next_node, start_node = robot.dir;
	int16 i, inside_cnt, outside_cnt, next_dir;

	while (queue.ind > 0 && queue.ind < MAP_SIZE)
	{
		node = queue_pop(&queue);

		if (visit[node] == 0)
		{
			inside_cnt = 0, outside_cnt = 0;

			for (i = 0; i < 4; i++)
			{
				next_dir = (1 << i);

				if (map[node].all & next_dir)
					inside_cnt++;

				next_node = node + diff[i];

				if (next_node < 0 || next_node >= MAP_SIZE)
					outside_cnt++;
				else if (map[next_node].all & (1 << ((i + 2) & 3)))
					outside_cnt++;;
			}

			// 3면이 벽이면 안간다 == 3면이 벽이 아니면 간다
			if (outside_cnt < 3 && inside_cnt < 3)
				return node;
		}
		else if (node == HOME)
			return node;

		for (i = 0; i < 4; i++)
		{
			next_dir = (1 << i);

			if (map[node].all & next_dir)
				continue;

			next_node = node + diff[i];

			if (next_node < 0 || next_node >= MAP_SIZE || closed[next_node] == 1)
				continue;

			// 목표에서부터 탐색하기 때문에 너머의 벽도 확인해야함
			if (map[next_node].all & (1 << ((i + 2) & 3)))
				continue;

			queue_push(&queue, next_node);
			closed[next_node] = 1;

			if (cost[next_node] > cost[node])
			{
				cost[next_node] = cost[node] + 1;
				past_node[next_node] = node;
			}
		}
	}

	return start_node;
}

void calculate_cost_to_goal()
{
	init_algo();

	// calculate heuristics cost for a-star
	init_h_func_to_goal();
	_heuristics_func_to_goal();

	// calculate gone cost for a-star
	g[robot.pos] = 0;

	init_a_star_algo();
	queue_the_path(a_star_algo_to_goal());
}

void calculate_cost_to_home()
{
	init_bfs_algo();
	queue_the_path(_search_with_bfs_to_home());
}

//==========================================================================//
//                                FAST RUN                                  //
//==========================================================================//

#pragma CODE_SECTION(_heuristics_func_to_fast_goal, "ramfuncs2");
#pragma CODE_SECTION(_search_with_bfs_to_fast_home, "ramfuncs2");
#pragma CODE_SECTION(calculate_cost_to_fast_goal, "ramfuncs2");
#pragma CODE_SECTION(calculate_cost_to_fast_home, "ramfuncs2");
static void _heuristics_func_to_fast_goal()
{
	int16 i, c, temp, node, dir, next_dir, next_node;

	while (queue.ind > 0 && queue.ind < MAP_SIZE)
	{
		temp = queue_pop(&queue);
		node = temp & 0xff;
		dir = (temp >> 8) & 0xf;

		for (i = 0; i < 4; i++)
		{
			next_dir = (1 << i);

			if (map[node].all & next_dir)
				continue;

			next_node = node + diff[i];

			if (next_node < 0 || next_node >= MAP_SIZE || closed[next_node] == 1)
				continue;

			// 목표에서부터 탐색하기 때문에 너머의 벽도 확인해야함
			if (map[next_node].all & (1 << ((i + 2) & 3)))
				continue;

			queue_push(&queue, (next_dir << 8) | next_node);
			closed[next_node] = 1;

			c = 4;
			if (dir == next_dir)
				c = 1;
			else if (!(((dir + 2) & 3) == next_dir))
				c = 2;

			h[next_node] = c;
		}
	}
}

static int _search_with_bfs_to_fast_home()
{
	int16 node, next_node, start_node = robot.pos;
	int16 i, next_dir;

	while (queue.ind > 0 && queue.ind < MAP_SIZE)
	{
		node = queue_pop(&queue);

		if (node == HOME)
			return HOME;

		for (i = 0; i < 4; i++)
		{
			next_dir = (1 << i);

			if (map[node].all & next_dir)
				continue;

			next_node = node + diff[i];

			if (next_node < 0 || next_node >= MAP_SIZE || closed[next_node] == 1)
				continue;

			// 목표에서부터 탐색하기 때문에 너머의 벽도 확인해야함
			if (map[next_node].all & (1 << ((i + 2) & 3)))
				continue;

			queue_push(&queue, next_node);
			closed[next_node] = 1;

			if (cost[next_node] > cost[node])
			{
				cost[next_node] = cost[node] + 1;
				past_node[next_node] = node;
			}
		}
	}

	return start_node;
}

void calculate_cost_to_fast_goal()
{
	init_algo();

	// calculate heuristics cost for a-star
	init_h_func_to_goal();
	_heuristics_func_to_fast_goal();

	// calculate gone cost for a-star
	g[robot.pos] = 0;

	init_a_star_algo();
	queue_the_path(a_star_algo_to_goal());
}

void calculate_cost_to_fast_home()
{
	init_bfs_algo();
	queue_the_path(_search_with_bfs_to_fast_home());
}


