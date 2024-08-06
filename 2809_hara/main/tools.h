//###########################################################################
//
// FILE		: tools.h
//
// TITLE	: tools h file
//
// Author	: Ho Jin Roh
//
// Company	: Maze & Hz
//
//###########################################################################
// $Release Date: 2024.08.05 $
//###########################################################################

#ifndef __TOOLS_H__
#define __TOOLS_H__

extern void queue_push(QueueType* queue, int val);
extern int queue_pop(QueueType* queue);

extern void heap_push(HeapType* h, int node, int item);
extern int heap_pop(HeapType* h);

#endif /* __TOOLS_H */
