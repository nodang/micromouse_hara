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

#define	SW_U	(GpioDataRegs.GPADAT.bit.GPIO13)
#define	SW_D	(GpioDataRegs.GPADAT.bit.GPIO26)
#define	SW_R	(GpioDataRegs.GPADAT.bit.GPIO12)
#define	SW_L	(GpioDataRegs.GPBDAT.bit.GPIO32)

#define F_LED	(GpioDataRegs.GPADAT.bit.GPIO23)
#define R_LED	(GpioDataRegs.GPBDAT.bit.GPIO34)
#define L_LED	(GpioDataRegs.GPADAT.bit.GPIO27)

#define BUZZ	(GpioDataRegs.GPBDAT.bit.GPIO33)

#define SW_DELAY	125000

typedef volatile struct
{
	Uint16 motor_pwm_flag_u16:1;
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

#define SCIA_ISR_ON		do {										\
							SciaRegs.SCICTL2.bit.RXBKINTENA = ON;	\
						}while(0)
#define SCIA_ISR_OFF 	do {										\
							SciaRegs.SCICTL2.bit.RXBKINTENA = ON;	\
						}while(0)

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
}SensorVal;

__VARIABLE_EXT__ SensorVal g_s_sen[8];

__VARIABLE_EXT__ SensorVal* g_p_sen_rbs,
							g_p_sen_rfs,
							g_p_sen_r45,
							g_p_sen_rf,
							g_p_sen_lf,
							g_p_sen_l45,
							g_p_sen_lfs,
							g_p_sen_lbs;

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
	Uint16	qep_sample_u16,
			tick_u16,
			dong;
	
	int16	qep_val_i16,
			stop_flag_i16;

	Uint32	accel_u32;

	_iq27	tick_distance_q27;
	
	_iq17	distance_sum_q17,
			kp_q17,
			ki_q17,
			kd_q17,
			user_distance_q17,
			remaining_distance_q17,
			current_velocity_q17,
			stop_distance_q17,
			decel_velocity_q17,
			next_velocity_q17,
			user_velocity_q17,
			err_velocity_q17[4],
			err_velocity_sum_q17,
			proportional_term_q17,
			derivative_term_q17,
			integral_term_q17,
			pid_out_term_q17;
	
	_iq26	pos_adjrate_q26;
}MotorVariable;

__VARIABLE_EXT__ MotorVariable	g_s_left_motor, g_s_right_motor;

typedef volatile struct
{
	_iq17	linear_q17,
			angular_q17;
}CommandVelocity;

__VARIABLE_EXT__ CommandVelocity g_s_cmd_vel;




