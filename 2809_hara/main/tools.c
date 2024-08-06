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

#include "DSP280x_Device.h"     // DSP280x Headerfile Include File

void queue_push(QueueType* queue, int16 val)
{
	queue->arr[queue->ind] = val;
	queue->ind++;
}

int16 queue_pop(QueueType* queue)
{
	int16 cnt, rtn = queue->arr[0];

	if (queue->ind >= 0)
	{
		if (queue->ind > 2)
		{
			for (cnt = 0; cnt < queue->ind - 1; cnt++)
				queue->arr[cnt] = queue->arr[cnt + 1];
			
			queue->arr[queue->ind - 1] = 0;
		}
		else if (queue->ind == 2)
		{
			queue->arr[0] = queue->arr[1];
			queue->arr[1] = 0;
		}
		else if (queue->ind == 1)
			queue->arr[0] = 0;

		queue->ind--;
	}

	return rtn;
}

// 1. 히프의 크기를 하나 증가시켜서 노드 위치를 확장하고 확장한 노드 번호가 현재의 삽입 위치 i가 된다.
// 2. 삽입할 원소 item과 부모노드 heap[i/2]를 비교하여 item이 부모 노드보다 작거나 같으면 현재의 삽입 위치 i를 삽입 원소의 위치로 확정한다.
// 3. 만약 삽입할 원소 item이 부모 노드보다 크면, 부모 노드와 자식 노드의 자리를 바꾸어 최대 히프의 관계를 만들어야 하므로 부모 노드 heap[i/2]를 현재의 삽입 위치 heap[i]에 저장한다.
// 4. i/2를 삽입 위치 i로 하고 2~4를 반복하면서 item을 삽입할 위치를 찾는다. 
// 5. 찾은 위치에서 삽입할 노드 item을 저장하면 최대 히프의 재구성 작업이 완성되므로 삽입 연산을 종료한다. 
void heap_push(HeapType* h, int16 node, int16 item)
{
	int16 i = ++h->heap_size;

	while ((i != 1) && (item < h->cost[i >> 1]))
	{
		h->cost[i] = h->cost[i >> 1];
		h->node[i] = h->node[i >> 1];
		i >>= 1;
	}
	h->cost[i] = item;
	h->node[i] = node;
}

//1. 루트 노드 heap[1]을 itemp 에 저장하고.
//2. 마지막 노드의 원소 heap[h->heap_size]를 temp에 임시 저장한 후에 
//3. 전체 노드의 개수가 줄어든 히프가 되도록 하기 위하여 노드의 개수를 1 감소시킨다.
//4. 마지막 노드의 원소였던 temp의 임시 저장 위치 parent는 루트 노드 자리인 1번이 된다.
//5. 현재 저장 위치에서 자식 노드 heap[child]와 heap[child + 1]이 있을 때, 둘 중에서 키값이 큰 자식 노드의 키값과 temp를 비교하여 temp가 크거나 같으면 현재 위치가 temp의 자리로 확정된다.
//6. 만약 temp가 자식 노드보다 작으면 자식 노드와 자리를 바꾸고 다시 5~6을 반복하면서 temp의 자리를 찾는다.
//7. 찾은 위치에 temp를 저장하여 최대힙 잭성 작업을 완료시키고 루트 노드를 저장한 item을 반환하는 것으로 삭제 연산을 종료한다.
int heap_pop(HeapType* h)
{
	int16 parent = 1, child = 2;
	int16 node = h->node[1];
	int16 temp_c = h->cost[h->heap_size], temp_n = h->node[h->heap_size];

	h->heap_size--;
	while (child <= h->heap_size)
	{
		if ((child < h->heap_size) && (h->cost[child]) > h->cost[child + 1])
			child++;

		if (temp_c <= h->cost[child])
			break;

		h->cost[parent] = h->cost[child];
		h->node[parent] = h->node[child];
		parent = child;
		child <<= 1;
	}
	h->cost[parent] = temp_c;
	h->node[parent] = temp_n;

	return node;
}

