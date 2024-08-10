//###########################################################################
//
// FILE:    VFD.c
//
// TITLE:   MRSFAF VFD c file..
//
//###########################################################################
// $Release Date: 2006.10.2 $
//###########################################################################

#include "DSP280x_Device.h"     // DSP280x Headerfile Include File
#include "DSP280x_Examples.h"   // DSP280x Examples Include File


#define CON 0
#define DAT 1

//*********** LCD PART ******************

void Data_Input(WORD d)
{

	d = d & 0xff;

	//data input
	if( ( d & 0x80 ) > 0 )	GpioDataRegs.GPASET.bit.GPIO27 = 1;
	else 					GpioDataRegs.GPACLEAR.bit.GPIO27 = 1;
	if( ( d & 0x40 ) > 0 )	GpioDataRegs.GPASET.bit.GPIO23 = 1;
	else 					GpioDataRegs.GPACLEAR.bit.GPIO23 = 1;
	if( ( d & 0x20 ) > 0 )	GpioDataRegs.GPASET.bit.GPIO11 = 1;
	else 					GpioDataRegs.GPACLEAR.bit.GPIO11 = 1;
	if( ( d & 0x10 ) > 0 )	GpioDataRegs.GPASET.bit.GPIO10 = 1;
	else 					GpioDataRegs.GPACLEAR.bit.GPIO10 = 1;

	//rs
	if( ( d & 0x01 ) > 0 )	GpioDataRegs.GPASET.bit.GPIO7 = 1;
	else 					GpioDataRegs.GPACLEAR.bit.GPIO7 = 1;

	//Enable
	if( ( d & 0x04 ) > 0 )	GpioDataRegs.GPASET.bit.GPIO6 = 1;
	else 					GpioDataRegs.GPACLEAR.bit.GPIO6 = 1;

}


//-------------- LCD ---------------
void LCD_out(char data )
{
	char d;
	d = data << 4;
	Data_Input(d);			// RS=0, E=0
	Data_Input(d | 0x04);	// RS=0, E=1
	DELAY_US(1);
	Data_Input(d);			// RS=0, E=0
	DELAY_US(1);
}

void LCD_out2(char rs, char data)
{
	char r;
	char d;
	if(rs)	r = 0x01;
	else	r = 0x00;
	DELAY_US(1);
	d = (data & 0xf0) | r;	// upper 4 bit
	Data_Input(d);			// E = 0
	DELAY_US(1);
	Data_Input(d | 0x04);		// E = 1
	DELAY_US(1);
	Data_Input(d);			// E = 0
	DELAY_US(1);

	d = (data<<4) | r;		// lower 4 bit
	Data_Input(d);			// E = 0
	Data_Input(d | 0x04);		// E = 1
	DELAY_US(1);
	Data_Input(d);			// E = 0
	DELAY_US(1);
}

void InitLCD(void)
{
	Data_Input(0);   				// 0x00 out 

	DELAY_US(15000);				// wait 15ms 	
	LCD_out(0x03);				// function set 1 
	DELAY_US(4000);
	LCD_out(0x03);				// function set 2 
	DELAY_US(4000);
	LCD_out(0x03);				// function set 3 
	DELAY_US(4000);
	LCD_out(0x02);				// function set 
	DELAY_US(4000);

	LCD_out2(CON, 0x28);		// function set 
	DELAY_US(40);
	LCD_out2(CON, 0x0c);		// display on : Disp=ON, Cursor=OFF, Cursor_Blink=OFF 
	DELAY_US(40);
	LCD_out2(CON, 0x06);		// entry mode 
	DELAY_US(40);
	LCD_out2(CON, 0x01);		// clear display 
	DELAY_US(2000);

}

void	LCDGotoXY(int x, int y)
{
	int	pos;
	switch(y)
	{
	case 0:	// 1st line
		pos = 0x80 | (x & 0x7f);
		break;
	case 1:	// 2nd line
		pos = 0x80 | ((0x40 + x) & 0x7f);
		break;
	case 2:	// 3rd line
		pos = 0x80 | ((0x14 + x) & 0x7f);
		break;
	case 3:	// 4th line
		pos = 0x80 | ((0x54 + x) & 0x7f);
		break;
	default:	break;
	}
	LCD_out2(CON,pos);
	DELAY_US(40);
}          

void	LCDClear(void){
	LCD_out2(CON, 0x01);			/* clear display */
	DELAY_US(2000);
}             

void	LCDPutStr(char *str)
{

	while(*str)
	{
		if(*str == '\n'){
            LCDGotoXY(0, 1);
			*str++;
        }
		else
		{
			LCD_out2(DAT, *str++);
			DELAY_US(40);
		}
	}
} 

void LCDPrintf(char *form, ... )
{
	va_list argptr;
    static char buff[100] ;
	LCDClear( );
	LCDGotoXY(0, 0);
    va_start(argptr,form);
    vsprintf(buff,form,argptr);
    va_end(argptr);
    LCDPutStr(buff);
}



