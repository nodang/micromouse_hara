//###########################################################################
//
// FILE		: Motor.h
//
// TITLE	: Motor h file.
//
// Author	: Yuk Keun Ho
//
// Company	: Maze
//
//###########################################################################
// $Release Date: 2011.11.14 $
//###########################################################################

#ifndef __MOTOR_H__
#define __MOTOR_H__

inline _iq17 _InlineCalcDist(_iq17 tar_vel, _iq17 curr_vel, _iq15 tar_acc)
{
	_iq7 temp0, temp1;
	_iq17 dist;

	temp0 = _IQ7mpyIQX(tar_vel, 17, tar_vel, 17);
	temp1 = _IQ7mpyIQX(curr_vel, 17, curr_vel, 17);
	dist = _IQ17mpyIQX(_IQ7abs(temp0 - temp1), 7, _IQ15div(_IQ15(1.0), tar_acc), 15) >> 1;

	return dist;
}

inline void _InlineCalcDistNVel(_iq17 enter_vel, _iq17 *tar_vel, _iq17 exit_vel, _iq17 tar_dist, _iq17 *dec_dist, _iq15 tar_acc)
{
	_iq5 temp0, temp1, temp2;
	_iq17 acc_dist, tar_dist_abs;

	acc_dist = _InlineCalcDist(*tar_vel, enter_vel, tar_acc);
	*dec_dist = _InlineCalcDist(exit_vel, *tar_vel, tar_acc);

	tar_dist_abs = _IQ17abs(tar_dist);

	if(tar_dist_abs >= (acc_dist + *dec_dist))
	{
		temp0 = _IQ5mpyIQX(enter_vel, 17, enter_vel, 17) >> 1;
		temp1 = _IQ5mpyIQX(exit_vel, 17, exit_vel, 17) >> 1;
		temp2 = _IQ5mpyIQX(tar_acc, 15, tar_dist_abs, 17) + temp0 + temp1;
		
		*tar_vel = _IQ5sqrt(temp2) << 12;
		*dec_dist = _InlineCalcDist(exit_vel, *tar_vel, tar_acc);
	}
}

extern void init_motor(void);
extern interrupt void motor_timer2_ISR(void);

extern void move_to_stop(_iq17 tar_dist, _iq15 tar_acc, _iq17 tar_vel);
extern void move_to_move(_iq17 tar_dist, _iq15 tar_acc, _iq17 tar_vel, _iq17 dec_vel);

#endif

