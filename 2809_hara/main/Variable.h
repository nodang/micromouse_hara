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
//                           ROBOT ENVIROMENT                               //
//==========================================================================//

#define BLOCK_WIDTH			_IQ17(180.0)
#define HALF_BLOCK_WIDTH	_IQ17(90.0)

// width = 81, length 108
#define ROBOT_WIDTH_DIV2	_IQ17(40.5)

//==========================================================================//
//                                 COMMON                                   //
//==========================================================================//

#define FS_TX_PRINT_FLAG	ON

#define	SW_U	(GpioDataRegs.GPADAT.bit.GPIO13)
#define	SW_D	(GpioDataRegs.GPADAT.bit.GPIO26)
#define	SW_R	(GpioDataRegs.GPADAT.bit.GPIO12)
#define	SW_L	(GpioDataRegs.GPBDAT.bit.GPIO32)

#define SW_DELAY		125000
#define SW_DELAY_HALF	62500

/*
#define LED_F	(GpioDataRegs.GPADAT.bit.GPIO23)
#define LED_R	(GpioDataRegs.GPBDAT.bit.GPIO34)
#define LED_L	(GpioDataRegs.GPADAT.bit.GPIO27)

#define BUZZ	(GpioDataRegs.GPBDAT.bit.GPIO33)
*/

#define LED_F_ON 	do {										\
						GpioDataRegs.GPADAT.bit.GPIO23 = ON;	\
					}while(0)
#define LED_F_OFF 	do {										\
						GpioDataRegs.GPADAT.bit.GPIO23 = OFF;	\
					}while(0)
#define LED_R_ON 	do {										\
						GpioDataRegs.GPBDAT.bit.GPIO34 = ON;	\
					}while(0)
#define LED_R_OFF 	do {										\
						GpioDataRegs.GPBDAT.bit.GPIO34 = OFF;	\
					}while(0)
#define LED_L_ON 	do {										\
						GpioDataRegs.GPADAT.bit.GPIO27 = ON;	\
					}while(0)
#define LED_L_OFF 	do {										\
						GpioDataRegs.GPADAT.bit.GPIO27 = OFF;	\
					}while(0)
#define BUZZ_ON 	do {										\
						GpioDataRegs.GPBDAT.bit.GPIO33 = ON;	\
					}while(0)
#define BUZZ_OFF 	do {										\
						GpioDataRegs.GPBDAT.bit.GPIO33 = OFF;	\
					}while(0)

#define SCIA_ISR_ON		do {										\
							SciaRegs.SCICTL2.bit.RXBKINTENA = ON;	\
						}while(0)
#define SCIA_ISR_OFF 	do {										\
							SciaRegs.SCICTL2.bit.RXBKINTENA = OFF;	\
						}while(0)

typedef volatile struct
{
	Uint16	sensor_ir_b	:1,
			est_dist_b	:1,
			motor_pwm_b	:1,
			adj_pos_b	:1;
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
	_iq17	input_q17,
			input_previous_q17,
			output_previous_q17,
			output_q17;			// filtered data
			
}SensorFilterVariable;

typedef volatile struct
{
	_iq17	a0, a1, a2,		// gain
			x0, x1, x2,		// sensor data set
			y0, y1, y2,		// distance set
			x;	// input
}NewtonInterpolationVariable;

typedef volatile struct
{
	NewtonInterpolationVariable s_formula;
	SensorFilterVariable s_filter;

	_iq17 value_q17;	// output
	
}DistanceEstimationVariable;

typedef volatile struct
{
	Uint16	value_u16;

	SensorFilterVariable	s_lpf,
							s_lpf_diff;
	DistanceEstimationVariable	s_dist;
/*
	_iq17	dist_q17,
			dist_yet_q17,
			dist_diff_q17,
			high_coefficient_q17,
			low_coefficient_q17,
			max_val_q17,
			min_val_q17,
			mid_val_q17;
*/
}SensorVariable;

__VARIABLE_EXT__ SensorVariable	g_s_sen[8];

__VARIABLE_EXT__ volatile Uint16	g_sensor_num_u16,
									g_sci_on_u16;

//==========================================================================//
//                                 MOTOR                                    //
//==========================================================================//

#define MAX_VELO	4000
#define MIN_VELO	-MAX_VELO

#define STANDBY_ON 	do {										\
						GpioDataRegs.GPADAT.bit.GPIO22 = ON;	\
					}while(0)
#define STANDBY_OFF do {										\
						GpioDataRegs.GPADAT.bit.GPIO22 = OFF;	\
					}while(0)

#define ACTIVATE_MOTOR		do {								\
								g_s_flags.motor_pwm_b = ON;		\
								STANDBY_ON;						\
								StartCpuTimer2();				\
							}while(0)

#define DEACTIVATE_MOTOR	do {								\
								StopCpuTimer2();				\
								STANDBY_OFF;					\
								g_s_flags.motor_pwm_b = OFF;	\
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


// Do not reset
__VARIABLE_EXT__ int32	g_ref_vel_i32;

__VARIABLE_EXT__ Uint16	g_accel_u16;
__VARIABLE_EXT__ Uint32	g_motor_kp_u32,
						g_motor_ki_u32,
						g_motor_kd_u32;
// until here

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




