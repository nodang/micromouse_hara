//###########################################################################
//
// FILE		: senser.h
//
// TITLE	: senser h file
//
// Author	: Yuk Keun Ho
//
// Company	: Maze & Hz
//
//###########################################################################
// $Release Date: 2011.10.10 $
//###########################################################################


#ifndef __SENSOR_H__
#define __SENSOR_H__

inline void _InlineNewtonInterpolationFormula(NewtonInterpolationVariable *sp_formula)
{
	_iq17 temp0, temp1;

	sp_formula->a0 = sp_formula->y0;
	sp_formula->a1 = _IQ17div(sp_formula->y1 - sp_formula->y0, sp_formula->x1 - sp_formula->x0);
	
	temp0 = _IQ17div(sp_formula->y2 - sp_formula->y1, sp_formula->x2 - sp_formula->x1);
	temp1 = _IQ17div(sp_formula->y1 - sp_formula->y0, sp_formula->x1 - sp_formula->x0);
	sp_formula->a2 = _IQ17div(temp0 - temp1, sp_formula->x2 - sp_formula->x0);
}

extern void InitSensor(void);
extern interrupt void IsrTimer0ForSensor(void);
extern interrupt void IsrAdc(void);
extern void CalibrateSensorValue(void);

#endif
