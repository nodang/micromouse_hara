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

typedef volatile struct
{
	Uint16 u16_motor_pwm_flag:1;
}Flags;

__VARIABLE_EXT__ Flags s_flags;

//==========================================================================//
//                                 SENSOR                                   //
//==========================================================================//

#define RBS		s_sen[0]	// right back side sensor
#define RFS		s_sen[1]	// right front side sensor
#define R45		s_sen[2]	// right 45 sensor
#define RF		s_sen[3]	// right front sensor
#define LF		s_sen[4]	// left front sensor
#define L45		s_sen[5]	// left 45 sensor
#define LFS		s_sen[6]	// left front side sensor
#define LBS		s_sen[7]	// left back side sensor

#define SCIA_ISR_ON		do {										\
							SciaRegs.SCICTL2.bit.RXBKINTENA = ON;	\
						}while(0)
#define SCIA_ISR_OFF 	do {										\
							SciaRegs.SCICTL2.bit.RXBKINTENA = ON;	\
						}while(0)

typedef volatile struct
{
	Uint16	u16_value;

	_iq17	q17_position,
			q17_position_yet,
			q17_position_diff,
			q17_high_coefficient,
			q17_low_coefficient,
			q17_max_val,
			q17_min_val,
			q17_mid_val,
			q17_lpf_out_data_yet,
			q17_lpf_out_data,
			q17_lpf_in_data,
			q17_lpf_out_data_diff,
			q17_lpf_in_data_diff,
			q17_lpf_in_data_diff_yet;
}SensorVal;

__VARIABLE_EXT__ SensorVal s_sen[8];

__VARIABLE_EXT__ volatile Uint16	g_u16_sensor_num,
									g_u16_sci_on;

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
	Uint16	u16_qep_sample,
			u16_tick,
			dong;
	
	int16	i16_qep_val,
			stop_flag;

	Uint32	i32_accel;

	_iq27	q27_tick_distance;
	
	_iq17	q17_distance_sum,
			q17_kp,
			q17_ki,
			q17_kd,
			q17_user_distance,
			q17_remaining_distance,
			q17_current_velocity,
			q17_stop_distance,
			q17_decel_velocity,
			q17_next_velocity,
			q17_user_velocity,
			q17_err_velocity[4],
			q17_err_velocity_sum,
			q17_proportional_term,
			q17_derivative_term,
			q17_integral_term,
			q17_pid_out_term;
	
	_iq26	q26_pos_adjrate;
}MotorVariable;

__VARIABLE_EXT__ MotorVariable	s_left_motor, s_right_motor;

typedef volatile struct
{
	_iq17	q17_linear,
			q17_angular;
}CommandVelocity;

__VARIABLE_EXT__ CommandVelocity s_cmd_vel;




