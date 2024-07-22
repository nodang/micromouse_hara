//###########################################################################
//
// FILE		: Rom.c
//
// TITLE	: Rom c file.
//
// Author	: Yuk Keun Ho
//
// Company	: Maze & Hz
//
//###########################################################################
// $Release Date: 2011.02.21 $
//###########################################################################

#include "DSP280x_Device.h"     // DSP280x Headerfile Include File
#include "DSP280x_Examples.h"   // DSP280x Examples Include File

typedef enum {
	kPageMaximumSize = 256,
	kSensorArraySize = 256,	// 
	kMotorArraySize = 256,	// TBD
	kRunArraySize = 256,	// TBD
	kMapArraySize = 256,

	kSensorPage = 1,
	kMotorPage,
	kRunPage,
	
	kMapPage1,
	kMapPage2,
	kMapPage3,
	kMapPage4,
	kMapPage5
}eRom;

void WriteSensorData()
{
	Uint16	i = 0, j = 0, write_arr[kSensorArraySize] = { 0, };

	for(j = 0; j < SEN_NUM; j++)
	{
		write_arr[i++] = (g_s_sen[j].s_dist.s_formula.x0 >> 0) & 0xff;
		write_arr[i++] = (g_s_sen[j].s_dist.s_formula.x0 >> 8) & 0xff;
		write_arr[i++] = (g_s_sen[j].s_dist.s_formula.x0 >> 16) & 0xff;
		write_arr[i++] = (g_s_sen[j].s_dist.s_formula.x0 >> 24) & 0xff;

		write_arr[i++] = (g_s_sen[j].s_dist.s_formula.x1 >> 0) & 0xff;
		write_arr[i++] = (g_s_sen[j].s_dist.s_formula.x1 >> 8) & 0xff;
		write_arr[i++] = (g_s_sen[j].s_dist.s_formula.x1 >> 16) & 0xff;
		write_arr[i++] = (g_s_sen[j].s_dist.s_formula.x1 >> 24) & 0xff;

		write_arr[i++] = (g_s_sen[j].s_dist.s_formula.x2 >> 0) & 0xff;
		write_arr[i++] = (g_s_sen[j].s_dist.s_formula.x2 >> 8) & 0xff;
		write_arr[i++] = (g_s_sen[j].s_dist.s_formula.x2 >> 16) & 0xff;
		write_arr[i++] = (g_s_sen[j].s_dist.s_formula.x2 >> 24) & 0xff;
	}

	SpiWriteRom((Uint16)kSensorPage, 0, (Uint16)kSensorArraySize, write_arr);
}

void ReadSensorData()
{
	Uint16	i = 0, j = 0, read_arr[kSensorArraySize] = { 0, };

	SpiReadRom((Uint16)kSensorPage, 0, (Uint16)kSensorArraySize, read_arr);

	for(j = 0; j < SEN_NUM; j++)
	{
		g_s_sen[j].s_dist.s_formula.x0 = read_arr[i++] << 0;
		g_s_sen[j].s_dist.s_formula.x0 |= read_arr[i++] << 8;
		g_s_sen[j].s_dist.s_formula.x0 |= read_arr[i++] << 16;
		g_s_sen[j].s_dist.s_formula.x0 |= read_arr[i++] << 24;

		g_s_sen[j].s_dist.s_formula.x1 = read_arr[i++] << 0;
		g_s_sen[j].s_dist.s_formula.x1 |= read_arr[i++] << 8;
		g_s_sen[j].s_dist.s_formula.x1 |= read_arr[i++] << 16;
		g_s_sen[j].s_dist.s_formula.x1 |= read_arr[i++] << 24;

		g_s_sen[j].s_dist.s_formula.x2 = read_arr[i++] << 0;
		g_s_sen[j].s_dist.s_formula.x2 |= read_arr[i++] << 8;
		g_s_sen[j].s_dist.s_formula.x2 |= read_arr[i++] << 16;
		g_s_sen[j].s_dist.s_formula.x2 |= read_arr[i++] << 24;
	}
}

void WriteMotorData()
{
	Uint16	i = 0, write_arr[kSensorArraySize] = { 0, };

	SpiWriteRom((Uint16)kMotorPage, 0, (Uint16)kMotorArraySize, write_arr);
}

void ReadMotorData()
{
	Uint16	i = 0, read_arr[kSensorArraySize] = { 0, };

	SpiReadRom((Uint16)kSensorPage, 0, (Uint16)kMotorArraySize, read_arr);
}

void WriteRunningData()
{
	Uint16	i = 0, write_arr[kSensorArraySize] = { 0, };

	SpiWriteRom((Uint16)kRunPage, 0, (Uint16)kRunArraySize, write_arr);
}

void ReadRunningData()
{
	Uint16	i = 0, read_arr[kSensorArraySize] = { 0, };

	SpiReadRom((Uint16)kSensorPage, 0, (Uint16)kRunArraySize, read_arr);
}

void WriteMapData(Uint16 number)
{
	Uint16	i = 0,
			write_arr[kMapArraySize] = { 0, },
			map_page_num = kMapPage1 + number;


	SpiWriteRom((Uint16)map_page_num, 0, (Uint16)kMapArraySize, write_arr);
}

void ReadMapData(Uint16 number)
{
	Uint16	i = 0,
			read_arr[kMapArraySize] = { 0, },
			map_page_num = kMapPage1 + number;

	SpiReadRom((Uint16)map_page_num, 0, (Uint16)kMapArraySize, read_arr);

}

