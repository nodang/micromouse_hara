//###########################################################################
//
// FILE		: Variable.h
//
// TITLE	: Variable.h file.
//
// Author	: Yuk Keun Ho
//
// Company	: Maze & Hz
//
//###########################################################################
// $Release Date: 2011.10.6 $
//###########################################################################



#ifdef _MAIN_
	#ifndef __VARIABLE_EXT__
		#define __VARIABLE_EXT__
	#endif
#else
	#ifndef __VARIABLE_EXT__
		#define __VARIABLE_EXT__	extern
	#endif
#endif	

//==========================================================================//
//                                 COMMON                                   //
//==========================================================================//

#define FS_TX_PRINT_FLAG	ON

#define	SW_U	(GpioDataRegs.GPADAT.bit.GPIO13)
#define	SW_D	(GpioDataRegs.GPADAT.bit.GPIO26)
#define	SW_R	(GpioDataRegs.GPADAT.bit.GPIO12)
#define	SW_L	(GpioDataRegs.GPBDAT.bit.GPIO32)

#define F_LED	(GpioDataRegs.GPADAT.bit.GPIO23)
#define R_LED	(GpioDataRegs.GPBDAT.bit.GPIO34)
#define L_LED	(GpioDataRegs.GPADAT.bit.GPIO27)

#define BUZZ	(GpioDataRegs.GPBDAT.bit.GPIO33)

#define SW_DELAY	125000

#define SCIA_ISR_ON		do {										\
							SciaRegs.SCICTL2.bit.RXBKINTENA = ON;	\
						}while(0)
#define SCIA_ISR_OFF 	do {										\
							SciaRegs.SCICTL2.bit.RXBKINTENA = ON;	\
						}while(0)

typedef volatile struct
{
	Uint16	sensor_ir_b:1,
			motor_pwm_b:1,
			adj_pos_b:1;
}Flags;

__VARIABLE_EXT__ Flags g_s_flags;

//==========================================================================//
//                                 SENSOR                                   //
//==========================================================================//

#define RBS		g_s_sen[0]	// right back side sensor
#define RFS		g_s_sen[1]	// right front side sensor
#define R45		g_s_sen[2]	// right 45 sensor
#define RF		g_s_sen[3]	// right front sensor
#define LF		g_s_sen[4]	// left front sensor
#define L45		g_s_sen[5]	// left 45 sensor
#define LFS		g_s_sen[6]	// left front side sensor
#define LBS		g_s_sen[7]	// left back side sensor

typedef volatile struct
{
	Uint16	value_u16;

	_iq17	position_q17,
			position_yet_q17,
			position_diff_q17,
			high_coefficient_q17,
			low_coefficient_q17,
			max_val_q17,
			min_val_q17,
			mid_val_q17,
			lpf_out_data_yet_q17,
			lpf_out_data_q17,
			lpf_in_data_q17,
			lpf_out_data_diff_q17,
			lpf_in_data_diff_q17,
			lpf_in_data_diff_yet_q17;
}SensorVariable;

__VARIABLE_EXT__ SensorVariable	g_s_sen[8];

__VARIABLE_EXT__ SensorVariable	*g_sp_sen_rbs,
								*g_sp_sen_rfs,
								*g_sp_sen_r45,
								*g_sp_sen_rf,
								*g_sp_sen_lf,
								*g_sp_sen_l45,
								*g_sp_sen_lfs,
								*g_sp_sen_lbs;

__VARIABLE_EXT__ volatile Uint16	g_sensor_num_u16,
									g_sci_on_u16;

//==========================================================================//
//                                 MOTOR                                    //
//==========================================================================//

#define STANDBY_ON 	do {										\
						GpioDataRegs.GPADAT.bit.GPIO22 = ON;	\
					}while(0)
#define STANDBY_OFF do {										\
						GpioDataRegs.GPADAT.bit.GPIO22 = OFF;	\
					}while(0)

typedef volatile struct
{
	Uint16	sample_u16;
	int16	sample_i16;
	_iq21	sample_q21;
}QEPVariable;

typedef volatile struct
{
	_iq27	tick_q27;

	_iq17	gone_q17,
			target_q17,
			remaining_q17,
			decel_point_q17;
}DistanceVariable;

typedef volatile struct
{
	_iq15	accel_q15;

	_iq17	curr_vel_q17,
			next_vel_q17,
			target_vel_q17,
			decel_vel_q17;
}SpeedVariable;

typedef volatile struct
{
	_iq17	adj_ratio_q17;
}AdjustPositionVariable;

typedef volatile struct
{
	QEPVariable s_qep;
	SpeedVariable s_speed;
	DistanceVariable s_dist;
	AdjustPositionVariable s_adj;
	
	_iq17	kp_q17,
			ki_q17,
			kd_q17,
			err_vel_q17[4],
			err_vel_sum_q17,
			proportional_term_q17,
			derivative_term_q17,
			integral_term_q17,
			pid_output_q17;
}MotorVariable;

typedef volatile struct
{
	_iq17	linear_q17,
			angular_q17;
}CommandVelocityVariable;

__VARIABLE_EXT__ MotorVariable	g_s_left_motor,
								g_s_right_motor;

__VARIABLE_EXT__ CommandVelocityVariable	g_s_cmd_vel;

//==========================================================================//
//                                POSITION                                  //
//==========================================================================//

typedef volatile struct
{
	_iq17	x_q17,
			y_q17,
			th_q17,
			v_q17,
			w_q17;
}PositionVariable;

__VARIABLE_EXT__ PositionVariable	g_s_epi,
									g_s_eps;




