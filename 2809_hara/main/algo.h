//###########################################################################
//
// FILE		: algo.h
//
// TITLE	: algo h file
//
// Author	: Ho Jin Roh
//
// Company	: Maze & Hz
//
//###########################################################################
// $Release Date: 2024.08.05 $
//###########################################################################

#ifndef __ALGO_H__
#define __ALGO_H__

extern void init_map(void);

extern void init_algo();
extern void init_h_func_to_goal();
extern void init_a_star_algo();
extern void init_bfs_algo();

extern int16 a_star_algo_to_goal();

extern void queue_the_path(int16 last_node);
extern void calculate_cost_to_goal();
extern void calculate_cost_to_home();

extern void calculate_cost_to_fast_goal();
extern void calculate_cost_to_fast_home();

#endif
