;***************************************************************
;* TMS320C2000 C/C++ Codegen                         PC v4.1.3 *
;* Date/Time created: Tue Nov 28 13:29:21 2023                 *
;***************************************************************
	.compiler_opts --mem_model:code=flat --mem_model:data=large --silicon_version=28 
FP	.set	XAR2

DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_producer("TMS320C2000 C/C++ Codegen PC v4.1.3 Copyright (c) 1996-2006 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)

DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("vsprintf"), DW_AT_symbol_name("_vsprintf")
	.dwattr DW$1, DW_AT_type(*DW$T$10)
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$31)
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$39)
DW$4	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
	.dwendtag DW$1

_Buff$1$0:	.usect	".ebss",20,1,0
DW$5	.dwtag  DW_TAG_variable, DW_AT_name("GpioDataRegs"), DW_AT_symbol_name("_GpioDataRegs")
	.dwattr DW$5, DW_AT_type(*DW$T$55)
	.dwattr DW$5, DW_AT_declaration(0x01)
	.dwattr DW$5, DW_AT_external(0x01)
	.global	_FontData
	.sect	"VFD_FONT"
	.align	1
_FontData:
	.field  	0,16			; _FontData[0][0] @ 0
	.field  	0,16			; _FontData[0][1] @ 16
	.field  	0,16			; _FontData[0][2] @ 32
	.field  	0,16			; _FontData[0][3] @ 48
	.field  	0,16			; _FontData[0][4] @ 64
	.field  	0,16			; _FontData[1][0] @ 80
	.field  	0,16			; _FontData[1][1] @ 96
	.field  	0,16			; _FontData[1][2] @ 112
	.field  	0,16			; _FontData[1][3] @ 128
	.field  	0,16			; _FontData[1][4] @ 144
	.field  	0,16			; _FontData[2][0] @ 160
	.field  	0,16			; _FontData[2][1] @ 176
	.field  	0,16			; _FontData[2][2] @ 192
	.field  	0,16			; _FontData[2][3] @ 208
	.field  	0,16			; _FontData[2][4] @ 224
	.field  	0,16			; _FontData[3][0] @ 240
	.field  	0,16			; _FontData[3][1] @ 256
	.field  	0,16			; _FontData[3][2] @ 272
	.field  	0,16			; _FontData[3][3] @ 288
	.field  	0,16			; _FontData[3][4] @ 304
	.field  	0,16			; _FontData[4][0] @ 320
	.field  	0,16			; _FontData[4][1] @ 336
	.field  	0,16			; _FontData[4][2] @ 352
	.field  	0,16			; _FontData[4][3] @ 368
	.field  	0,16			; _FontData[4][4] @ 384
	.field  	0,16			; _FontData[5][0] @ 400
	.field  	0,16			; _FontData[5][1] @ 416
	.field  	0,16			; _FontData[5][2] @ 432
	.field  	0,16			; _FontData[5][3] @ 448
	.field  	0,16			; _FontData[5][4] @ 464
	.field  	0,16			; _FontData[6][0] @ 480
	.field  	0,16			; _FontData[6][1] @ 496
	.field  	0,16			; _FontData[6][2] @ 512
	.field  	0,16			; _FontData[6][3] @ 528
	.field  	0,16			; _FontData[6][4] @ 544
	.field  	0,16			; _FontData[7][0] @ 560
	.field  	0,16			; _FontData[7][1] @ 576
	.field  	0,16			; _FontData[7][2] @ 592
	.field  	0,16			; _FontData[7][3] @ 608
	.field  	0,16			; _FontData[7][4] @ 624
	.field  	0,16			; _FontData[8][0] @ 640
	.field  	0,16			; _FontData[8][1] @ 656
	.field  	0,16			; _FontData[8][2] @ 672
	.field  	0,16			; _FontData[8][3] @ 688
	.field  	0,16			; _FontData[8][4] @ 704
	.field  	0,16			; _FontData[9][0] @ 720
	.field  	0,16			; _FontData[9][1] @ 736
	.field  	0,16			; _FontData[9][2] @ 752
	.field  	0,16			; _FontData[9][3] @ 768
	.field  	0,16			; _FontData[9][4] @ 784
	.field  	0,16			; _FontData[10][0] @ 800
	.field  	0,16			; _FontData[10][1] @ 816
	.field  	0,16			; _FontData[10][2] @ 832
	.field  	0,16			; _FontData[10][3] @ 848
	.field  	0,16			; _FontData[10][4] @ 864
	.field  	0,16			; _FontData[11][0] @ 880
	.field  	0,16			; _FontData[11][1] @ 896
	.field  	0,16			; _FontData[11][2] @ 912
	.field  	0,16			; _FontData[11][3] @ 928
	.field  	0,16			; _FontData[11][4] @ 944
	.field  	0,16			; _FontData[12][0] @ 960
	.field  	0,16			; _FontData[12][1] @ 976
	.field  	0,16			; _FontData[12][2] @ 992
	.field  	0,16			; _FontData[12][3] @ 1008
	.field  	0,16			; _FontData[12][4] @ 1024
	.field  	0,16			; _FontData[13][0] @ 1040
	.field  	0,16			; _FontData[13][1] @ 1056
	.field  	0,16			; _FontData[13][2] @ 1072
	.field  	0,16			; _FontData[13][3] @ 1088
	.field  	0,16			; _FontData[13][4] @ 1104
	.field  	0,16			; _FontData[14][0] @ 1120
	.field  	0,16			; _FontData[14][1] @ 1136
	.field  	0,16			; _FontData[14][2] @ 1152
	.field  	0,16			; _FontData[14][3] @ 1168
	.field  	0,16			; _FontData[14][4] @ 1184
	.field  	0,16			; _FontData[15][0] @ 1200
	.field  	0,16			; _FontData[15][1] @ 1216
	.field  	0,16			; _FontData[15][2] @ 1232
	.field  	0,16			; _FontData[15][3] @ 1248
	.field  	0,16			; _FontData[15][4] @ 1264
	.field  	0,16			; _FontData[16][0] @ 1280
	.field  	0,16			; _FontData[16][1] @ 1296
	.field  	0,16			; _FontData[16][2] @ 1312
	.field  	0,16			; _FontData[16][3] @ 1328
	.field  	0,16			; _FontData[16][4] @ 1344
	.field  	0,16			; _FontData[17][0] @ 1360
	.field  	0,16			; _FontData[17][1] @ 1376
	.field  	0,16			; _FontData[17][2] @ 1392
	.field  	0,16			; _FontData[17][3] @ 1408
	.field  	0,16			; _FontData[17][4] @ 1424
	.field  	0,16			; _FontData[18][0] @ 1440
	.field  	0,16			; _FontData[18][1] @ 1456
	.field  	0,16			; _FontData[18][2] @ 1472
	.field  	0,16			; _FontData[18][3] @ 1488
	.field  	0,16			; _FontData[18][4] @ 1504
	.field  	0,16			; _FontData[19][0] @ 1520
	.field  	0,16			; _FontData[19][1] @ 1536
	.field  	0,16			; _FontData[19][2] @ 1552
	.field  	0,16			; _FontData[19][3] @ 1568
	.field  	0,16			; _FontData[19][4] @ 1584
	.field  	0,16			; _FontData[20][0] @ 1600
	.field  	0,16			; _FontData[20][1] @ 1616
	.field  	0,16			; _FontData[20][2] @ 1632
	.field  	0,16			; _FontData[20][3] @ 1648
	.field  	0,16			; _FontData[20][4] @ 1664
	.field  	0,16			; _FontData[21][0] @ 1680
	.field  	0,16			; _FontData[21][1] @ 1696
	.field  	0,16			; _FontData[21][2] @ 1712
	.field  	0,16			; _FontData[21][3] @ 1728
	.field  	0,16			; _FontData[21][4] @ 1744
	.field  	0,16			; _FontData[22][0] @ 1760
	.field  	0,16			; _FontData[22][1] @ 1776
	.field  	0,16			; _FontData[22][2] @ 1792
	.field  	0,16			; _FontData[22][3] @ 1808
	.field  	0,16			; _FontData[22][4] @ 1824
	.field  	0,16			; _FontData[23][0] @ 1840
	.field  	0,16			; _FontData[23][1] @ 1856
	.field  	0,16			; _FontData[23][2] @ 1872
	.field  	0,16			; _FontData[23][3] @ 1888
	.field  	0,16			; _FontData[23][4] @ 1904
	.field  	0,16			; _FontData[24][0] @ 1920
	.field  	0,16			; _FontData[24][1] @ 1936
	.field  	0,16			; _FontData[24][2] @ 1952
	.field  	0,16			; _FontData[24][3] @ 1968
	.field  	0,16			; _FontData[24][4] @ 1984
	.field  	0,16			; _FontData[25][0] @ 2000
	.field  	0,16			; _FontData[25][1] @ 2016
	.field  	0,16			; _FontData[25][2] @ 2032
	.field  	0,16			; _FontData[25][3] @ 2048
	.field  	0,16			; _FontData[25][4] @ 2064
	.field  	0,16			; _FontData[26][0] @ 2080
	.field  	0,16			; _FontData[26][1] @ 2096
	.field  	0,16			; _FontData[26][2] @ 2112
	.field  	0,16			; _FontData[26][3] @ 2128
	.field  	0,16			; _FontData[26][4] @ 2144
	.field  	0,16			; _FontData[27][0] @ 2160
	.field  	0,16			; _FontData[27][1] @ 2176
	.field  	0,16			; _FontData[27][2] @ 2192
	.field  	0,16			; _FontData[27][3] @ 2208
	.field  	0,16			; _FontData[27][4] @ 2224
	.field  	0,16			; _FontData[28][0] @ 2240
	.field  	0,16			; _FontData[28][1] @ 2256
	.field  	0,16			; _FontData[28][2] @ 2272
	.field  	0,16			; _FontData[28][3] @ 2288
	.field  	0,16			; _FontData[28][4] @ 2304
	.field  	0,16			; _FontData[29][0] @ 2320
	.field  	0,16			; _FontData[29][1] @ 2336
	.field  	0,16			; _FontData[29][2] @ 2352
	.field  	0,16			; _FontData[29][3] @ 2368
	.field  	0,16			; _FontData[29][4] @ 2384
	.field  	0,16			; _FontData[30][0] @ 2400
	.field  	0,16			; _FontData[30][1] @ 2416
	.field  	0,16			; _FontData[30][2] @ 2432
	.field  	0,16			; _FontData[30][3] @ 2448
	.field  	0,16			; _FontData[30][4] @ 2464
	.field  	0,16			; _FontData[31][0] @ 2480
	.field  	0,16			; _FontData[31][1] @ 2496
	.field  	0,16			; _FontData[31][2] @ 2512
	.field  	0,16			; _FontData[31][3] @ 2528
	.field  	0,16			; _FontData[31][4] @ 2544
	.field  	0,16			; _FontData[32][0] @ 2560
	.field  	0,16			; _FontData[32][1] @ 2576
	.field  	0,16			; _FontData[32][2] @ 2592
	.field  	0,16			; _FontData[32][3] @ 2608
	.field  	0,16			; _FontData[32][4] @ 2624
	.field  	0,16			; _FontData[33][0] @ 2640
	.field  	0,16			; _FontData[33][1] @ 2656
	.field  	123,16			; _FontData[33][2] @ 2672
	.field  	0,16			; _FontData[33][3] @ 2688
	.field  	0,16			; _FontData[33][4] @ 2704
	.field  	0,16			; _FontData[34][0] @ 2720
	.field  	112,16			; _FontData[34][1] @ 2736
	.field  	0,16			; _FontData[34][2] @ 2752
	.field  	112,16			; _FontData[34][3] @ 2768
	.field  	0,16			; _FontData[34][4] @ 2784
	.field  	20,16			; _FontData[35][0] @ 2800
	.field  	127,16			; _FontData[35][1] @ 2816
	.field  	20,16			; _FontData[35][2] @ 2832
	.field  	127,16			; _FontData[35][3] @ 2848
	.field  	20,16			; _FontData[35][4] @ 2864
	.field  	36,16			; _FontData[36][0] @ 2880
	.field  	42,16			; _FontData[36][1] @ 2896
	.field  	127,16			; _FontData[36][2] @ 2912
	.field  	42,16			; _FontData[36][3] @ 2928
	.field  	18,16			; _FontData[36][4] @ 2944
	.field  	35,16			; _FontData[37][0] @ 2960
	.field  	19,16			; _FontData[37][1] @ 2976
	.field  	8,16			; _FontData[37][2] @ 2992
	.field  	100,16			; _FontData[37][3] @ 3008
	.field  	98,16			; _FontData[37][4] @ 3024
	.field  	5,16			; _FontData[38][0] @ 3040
	.field  	34,16			; _FontData[38][1] @ 3056
	.field  	85,16			; _FontData[38][2] @ 3072
	.field  	73,16			; _FontData[38][3] @ 3088
	.field  	54,16			; _FontData[38][4] @ 3104
	.field  	0,16			; _FontData[39][0] @ 3120
	.field  	0,16			; _FontData[39][1] @ 3136
	.field  	96,16			; _FontData[39][2] @ 3152
	.field  	80,16			; _FontData[39][3] @ 3168
	.field  	0,16			; _FontData[39][4] @ 3184
	.field  	0,16			; _FontData[40][0] @ 3200
	.field  	65,16			; _FontData[40][1] @ 3216
	.field  	34,16			; _FontData[40][2] @ 3232
	.field  	28,16			; _FontData[40][3] @ 3248
	.field  	0,16			; _FontData[40][4] @ 3264
	.field  	0,16			; _FontData[41][0] @ 3280
	.field  	28,16			; _FontData[41][1] @ 3296
	.field  	34,16			; _FontData[41][2] @ 3312
	.field  	65,16			; _FontData[41][3] @ 3328
	.field  	0,16			; _FontData[41][4] @ 3344
	.field  	20,16			; _FontData[42][0] @ 3360
	.field  	8,16			; _FontData[42][1] @ 3376
	.field  	62,16			; _FontData[42][2] @ 3392
	.field  	8,16			; _FontData[42][3] @ 3408
	.field  	20,16			; _FontData[42][4] @ 3424
	.field  	8,16			; _FontData[43][0] @ 3440
	.field  	8,16			; _FontData[43][1] @ 3456
	.field  	62,16			; _FontData[43][2] @ 3472
	.field  	8,16			; _FontData[43][3] @ 3488
	.field  	8,16			; _FontData[43][4] @ 3504
	.field  	0,16			; _FontData[44][0] @ 3520
	.field  	0,16			; _FontData[44][1] @ 3536
	.field  	6,16			; _FontData[44][2] @ 3552
	.field  	5,16			; _FontData[44][3] @ 3568
	.field  	0,16			; _FontData[44][4] @ 3584
	.field  	8,16			; _FontData[45][0] @ 3600
	.field  	8,16			; _FontData[45][1] @ 3616
	.field  	8,16			; _FontData[45][2] @ 3632
	.field  	8,16			; _FontData[45][3] @ 3648
	.field  	8,16			; _FontData[45][4] @ 3664
	.field  	0,16			; _FontData[46][0] @ 3680
	.field  	0,16			; _FontData[46][1] @ 3696
	.field  	3,16			; _FontData[46][2] @ 3712
	.field  	3,16			; _FontData[46][3] @ 3728
	.field  	0,16			; _FontData[46][4] @ 3744
	.field  	32,16			; _FontData[47][0] @ 3760
	.field  	16,16			; _FontData[47][1] @ 3776
	.field  	8,16			; _FontData[47][2] @ 3792
	.field  	4,16			; _FontData[47][3] @ 3808
	.field  	2,16			; _FontData[47][4] @ 3824
	.field  	62,16			; _FontData[48][0] @ 3840
	.field  	81,16			; _FontData[48][1] @ 3856
	.field  	73,16			; _FontData[48][2] @ 3872
	.field  	69,16			; _FontData[48][3] @ 3888
	.field  	62,16			; _FontData[48][4] @ 3904
	.field  	0,16			; _FontData[49][0] @ 3920
	.field  	1,16			; _FontData[49][1] @ 3936
	.field  	127,16			; _FontData[49][2] @ 3952
	.field  	33,16			; _FontData[49][3] @ 3968
	.field  	0,16			; _FontData[49][4] @ 3984
	.field  	49,16			; _FontData[50][0] @ 4000
	.field  	73,16			; _FontData[50][1] @ 4016
	.field  	69,16			; _FontData[50][2] @ 4032
	.field  	67,16			; _FontData[50][3] @ 4048
	.field  	33,16			; _FontData[50][4] @ 4064
	.field  	70,16			; _FontData[51][0] @ 4080
	.field  	105,16			; _FontData[51][1] @ 4096
	.field  	81,16			; _FontData[51][2] @ 4112
	.field  	65,16			; _FontData[51][3] @ 4128
	.field  	66,16			; _FontData[51][4] @ 4144
	.field  	4,16			; _FontData[52][0] @ 4160
	.field  	127,16			; _FontData[52][1] @ 4176
	.field  	36,16			; _FontData[52][2] @ 4192
	.field  	20,16			; _FontData[52][3] @ 4208
	.field  	12,16			; _FontData[52][4] @ 4224
	.field  	78,16			; _FontData[53][0] @ 4240
	.field  	81,16			; _FontData[53][1] @ 4256
	.field  	81,16			; _FontData[53][2] @ 4272
	.field  	81,16			; _FontData[53][3] @ 4288
	.field  	114,16			; _FontData[53][4] @ 4304
	.field  	6,16			; _FontData[54][0] @ 4320
	.field  	73,16			; _FontData[54][1] @ 4336
	.field  	73,16			; _FontData[54][2] @ 4352
	.field  	41,16			; _FontData[54][3] @ 4368
	.field  	30,16			; _FontData[54][4] @ 4384
	.field  	112,16			; _FontData[55][0] @ 4400
	.field  	72,16			; _FontData[55][1] @ 4416
	.field  	71,16			; _FontData[55][2] @ 4432
	.field  	64,16			; _FontData[55][3] @ 4448
	.field  	64,16			; _FontData[55][4] @ 4464
	.field  	54,16			; _FontData[56][0] @ 4480
	.field  	73,16			; _FontData[56][1] @ 4496
	.field  	73,16			; _FontData[56][2] @ 4512
	.field  	73,16			; _FontData[56][3] @ 4528
	.field  	54,16			; _FontData[56][4] @ 4544
	.field  	60,16			; _FontData[57][0] @ 4560
	.field  	74,16			; _FontData[57][1] @ 4576
	.field  	73,16			; _FontData[57][2] @ 4592
	.field  	73,16			; _FontData[57][3] @ 4608
	.field  	48,16			; _FontData[57][4] @ 4624
	.field  	0,16			; _FontData[58][0] @ 4640
	.field  	0,16			; _FontData[58][1] @ 4656
	.field  	54,16			; _FontData[58][2] @ 4672
	.field  	54,16			; _FontData[58][3] @ 4688
	.field  	0,16			; _FontData[58][4] @ 4704
	.field  	0,16			; _FontData[59][0] @ 4720
	.field  	0,16			; _FontData[59][1] @ 4736
	.field  	54,16			; _FontData[59][2] @ 4752
	.field  	53,16			; _FontData[59][3] @ 4768
	.field  	0,16			; _FontData[59][4] @ 4784
	.field  	0,16			; _FontData[60][0] @ 4800
	.field  	65,16			; _FontData[60][1] @ 4816
	.field  	34,16			; _FontData[60][2] @ 4832
	.field  	20,16			; _FontData[60][3] @ 4848
	.field  	8,16			; _FontData[60][4] @ 4864
	.field  	20,16			; _FontData[61][0] @ 4880
	.field  	20,16			; _FontData[61][1] @ 4896
	.field  	20,16			; _FontData[61][2] @ 4912
	.field  	20,16			; _FontData[61][3] @ 4928
	.field  	20,16			; _FontData[61][4] @ 4944
	.field  	8,16			; _FontData[62][0] @ 4960
	.field  	20,16			; _FontData[62][1] @ 4976
	.field  	34,16			; _FontData[62][2] @ 4992
	.field  	65,16			; _FontData[62][3] @ 5008
	.field  	0,16			; _FontData[62][4] @ 5024
	.field  	48,16			; _FontData[63][0] @ 5040
	.field  	72,16			; _FontData[63][1] @ 5056
	.field  	68,16			; _FontData[63][2] @ 5072
	.field  	69,16			; _FontData[63][3] @ 5088
	.field  	32,16			; _FontData[63][4] @ 5104
	.field  	50,16			; _FontData[64][0] @ 5120
	.field  	73,16			; _FontData[64][1] @ 5136
	.field  	121,16			; _FontData[64][2] @ 5152
	.field  	65,16			; _FontData[64][3] @ 5168
	.field  	62,16			; _FontData[64][4] @ 5184
	.field  	63,16			; _FontData[65][0] @ 5200
	.field  	68,16			; _FontData[65][1] @ 5216
	.field  	68,16			; _FontData[65][2] @ 5232
	.field  	68,16			; _FontData[65][3] @ 5248
	.field  	63,16			; _FontData[65][4] @ 5264
	.field  	54,16			; _FontData[66][0] @ 5280
	.field  	73,16			; _FontData[66][1] @ 5296
	.field  	73,16			; _FontData[66][2] @ 5312
	.field  	73,16			; _FontData[66][3] @ 5328
	.field  	127,16			; _FontData[66][4] @ 5344
	.field  	34,16			; _FontData[67][0] @ 5360
	.field  	65,16			; _FontData[67][1] @ 5376
	.field  	65,16			; _FontData[67][2] @ 5392
	.field  	65,16			; _FontData[67][3] @ 5408
	.field  	62,16			; _FontData[67][4] @ 5424
	.field  	28,16			; _FontData[68][0] @ 5440
	.field  	34,16			; _FontData[68][1] @ 5456
	.field  	65,16			; _FontData[68][2] @ 5472
	.field  	65,16			; _FontData[68][3] @ 5488
	.field  	127,16			; _FontData[68][4] @ 5504
	.field  	65,16			; _FontData[69][0] @ 5520
	.field  	73,16			; _FontData[69][1] @ 5536
	.field  	73,16			; _FontData[69][2] @ 5552
	.field  	73,16			; _FontData[69][3] @ 5568
	.field  	127,16			; _FontData[69][4] @ 5584
	.field  	64,16			; _FontData[70][0] @ 5600
	.field  	72,16			; _FontData[70][1] @ 5616
	.field  	72,16			; _FontData[70][2] @ 5632
	.field  	72,16			; _FontData[70][3] @ 5648
	.field  	127,16			; _FontData[70][4] @ 5664
	.field  	47,16			; _FontData[71][0] @ 5680
	.field  	73,16			; _FontData[71][1] @ 5696
	.field  	73,16			; _FontData[71][2] @ 5712
	.field  	65,16			; _FontData[71][3] @ 5728
	.field  	62,16			; _FontData[71][4] @ 5744
	.field  	127,16			; _FontData[72][0] @ 5760
	.field  	8,16			; _FontData[72][1] @ 5776
	.field  	8,16			; _FontData[72][2] @ 5792
	.field  	8,16			; _FontData[72][3] @ 5808
	.field  	127,16			; _FontData[72][4] @ 5824
	.field  	0,16			; _FontData[73][0] @ 5840
	.field  	65,16			; _FontData[73][1] @ 5856
	.field  	127,16			; _FontData[73][2] @ 5872
	.field  	65,16			; _FontData[73][3] @ 5888
	.field  	0,16			; _FontData[73][4] @ 5904
	.field  	64,16			; _FontData[74][0] @ 5920
	.field  	126,16			; _FontData[74][1] @ 5936
	.field  	65,16			; _FontData[74][2] @ 5952
	.field  	1,16			; _FontData[74][3] @ 5968
	.field  	2,16			; _FontData[74][4] @ 5984
	.field  	65,16			; _FontData[75][0] @ 6000
	.field  	34,16			; _FontData[75][1] @ 6016
	.field  	20,16			; _FontData[75][2] @ 6032
	.field  	8,16			; _FontData[75][3] @ 6048
	.field  	127,16			; _FontData[75][4] @ 6064
	.field  	1,16			; _FontData[76][0] @ 6080
	.field  	1,16			; _FontData[76][1] @ 6096
	.field  	1,16			; _FontData[76][2] @ 6112
	.field  	1,16			; _FontData[76][3] @ 6128
	.field  	127,16			; _FontData[76][4] @ 6144
	.field  	127,16			; _FontData[77][0] @ 6160
	.field  	32,16			; _FontData[77][1] @ 6176
	.field  	24,16			; _FontData[77][2] @ 6192
	.field  	32,16			; _FontData[77][3] @ 6208
	.field  	127,16			; _FontData[77][4] @ 6224
	.field  	127,16			; _FontData[78][0] @ 6240
	.field  	4,16			; _FontData[78][1] @ 6256
	.field  	8,16			; _FontData[78][2] @ 6272
	.field  	16,16			; _FontData[78][3] @ 6288
	.field  	127,16			; _FontData[78][4] @ 6304
	.field  	62,16			; _FontData[79][0] @ 6320
	.field  	65,16			; _FontData[79][1] @ 6336
	.field  	65,16			; _FontData[79][2] @ 6352
	.field  	65,16			; _FontData[79][3] @ 6368
	.field  	62,16			; _FontData[79][4] @ 6384
	.field  	48,16			; _FontData[80][0] @ 6400
	.field  	72,16			; _FontData[80][1] @ 6416
	.field  	72,16			; _FontData[80][2] @ 6432
	.field  	72,16			; _FontData[80][3] @ 6448
	.field  	127,16			; _FontData[80][4] @ 6464
	.field  	61,16			; _FontData[81][0] @ 6480
	.field  	66,16			; _FontData[81][1] @ 6496
	.field  	69,16			; _FontData[81][2] @ 6512
	.field  	65,16			; _FontData[81][3] @ 6528
	.field  	62,16			; _FontData[81][4] @ 6544
	.field  	49,16			; _FontData[82][0] @ 6560
	.field  	74,16			; _FontData[82][1] @ 6576
	.field  	76,16			; _FontData[82][2] @ 6592
	.field  	72,16			; _FontData[82][3] @ 6608
	.field  	127,16			; _FontData[82][4] @ 6624
	.field  	70,16			; _FontData[83][0] @ 6640
	.field  	73,16			; _FontData[83][1] @ 6656
	.field  	73,16			; _FontData[83][2] @ 6672
	.field  	73,16			; _FontData[83][3] @ 6688
	.field  	49,16			; _FontData[83][4] @ 6704
	.field  	64,16			; _FontData[84][0] @ 6720
	.field  	64,16			; _FontData[84][1] @ 6736
	.field  	127,16			; _FontData[84][2] @ 6752
	.field  	64,16			; _FontData[84][3] @ 6768
	.field  	64,16			; _FontData[84][4] @ 6784
	.field  	126,16			; _FontData[85][0] @ 6800
	.field  	1,16			; _FontData[85][1] @ 6816
	.field  	1,16			; _FontData[85][2] @ 6832
	.field  	1,16			; _FontData[85][3] @ 6848
	.field  	126,16			; _FontData[85][4] @ 6864
	.field  	124,16			; _FontData[86][0] @ 6880
	.field  	2,16			; _FontData[86][1] @ 6896
	.field  	1,16			; _FontData[86][2] @ 6912
	.field  	2,16			; _FontData[86][3] @ 6928
	.field  	124,16			; _FontData[86][4] @ 6944
	.field  	126,16			; _FontData[87][0] @ 6960
	.field  	1,16			; _FontData[87][1] @ 6976
	.field  	14,16			; _FontData[87][2] @ 6992
	.field  	1,16			; _FontData[87][3] @ 7008
	.field  	126,16			; _FontData[87][4] @ 7024
	.field  	99,16			; _FontData[88][0] @ 7040
	.field  	20,16			; _FontData[88][1] @ 7056
	.field  	8,16			; _FontData[88][2] @ 7072
	.field  	20,16			; _FontData[88][3] @ 7088
	.field  	99,16			; _FontData[88][4] @ 7104
	.field  	112,16			; _FontData[89][0] @ 7120
	.field  	8,16			; _FontData[89][1] @ 7136
	.field  	7,16			; _FontData[89][2] @ 7152
	.field  	8,16			; _FontData[89][3] @ 7168
	.field  	112,16			; _FontData[89][4] @ 7184
	.field  	97,16			; _FontData[90][0] @ 7200
	.field  	81,16			; _FontData[90][1] @ 7216
	.field  	73,16			; _FontData[90][2] @ 7232
	.field  	69,16			; _FontData[90][3] @ 7248
	.field  	67,16			; _FontData[90][4] @ 7264
	.field  	0,16			; _FontData[91][0] @ 7280
	.field  	65,16			; _FontData[91][1] @ 7296
	.field  	65,16			; _FontData[91][2] @ 7312
	.field  	127,16			; _FontData[91][3] @ 7328
	.field  	0,16			; _FontData[91][4] @ 7344
	.field  	84,16			; _FontData[92][0] @ 7360
	.field  	52,16			; _FontData[92][1] @ 7376
	.field  	31,16			; _FontData[92][2] @ 7392
	.field  	52,16			; _FontData[92][3] @ 7408
	.field  	84,16			; _FontData[92][4] @ 7424
	.field  	0,16			; _FontData[93][0] @ 7440
	.field  	127,16			; _FontData[93][1] @ 7456
	.field  	65,16			; _FontData[93][2] @ 7472
	.field  	65,16			; _FontData[93][3] @ 7488
	.field  	0,16			; _FontData[93][4] @ 7504
	.field  	16,16			; _FontData[94][0] @ 7520
	.field  	32,16			; _FontData[94][1] @ 7536
	.field  	64,16			; _FontData[94][2] @ 7552
	.field  	32,16			; _FontData[94][3] @ 7568
	.field  	16,16			; _FontData[94][4] @ 7584
	.field  	1,16			; _FontData[95][0] @ 7600
	.field  	1,16			; _FontData[95][1] @ 7616
	.field  	1,16			; _FontData[95][2] @ 7632
	.field  	1,16			; _FontData[95][3] @ 7648
	.field  	1,16			; _FontData[95][4] @ 7664
	.field  	0,16			; _FontData[96][0] @ 7680
	.field  	16,16			; _FontData[96][1] @ 7696
	.field  	32,16			; _FontData[96][2] @ 7712
	.field  	64,16			; _FontData[96][3] @ 7728
	.field  	0,16			; _FontData[96][4] @ 7744
	.field  	15,16			; _FontData[97][0] @ 7760
	.field  	21,16			; _FontData[97][1] @ 7776
	.field  	21,16			; _FontData[97][2] @ 7792
	.field  	21,16			; _FontData[97][3] @ 7808
	.field  	2,16			; _FontData[97][4] @ 7824
	.field  	14,16			; _FontData[98][0] @ 7840
	.field  	17,16			; _FontData[98][1] @ 7856
	.field  	17,16			; _FontData[98][2] @ 7872
	.field  	9,16			; _FontData[98][3] @ 7888
	.field  	127,16			; _FontData[98][4] @ 7904
	.field  	2,16			; _FontData[99][0] @ 7920
	.field  	17,16			; _FontData[99][1] @ 7936
	.field  	17,16			; _FontData[99][2] @ 7952
	.field  	17,16			; _FontData[99][3] @ 7968
	.field  	14,16			; _FontData[99][4] @ 7984
	.field  	127,16			; _FontData[100][0] @ 8000
	.field  	9,16			; _FontData[100][1] @ 8016
	.field  	17,16			; _FontData[100][2] @ 8032
	.field  	17,16			; _FontData[100][3] @ 8048
	.field  	14,16			; _FontData[100][4] @ 8064
	.field  	12,16			; _FontData[101][0] @ 8080
	.field  	21,16			; _FontData[101][1] @ 8096
	.field  	21,16			; _FontData[101][2] @ 8112
	.field  	21,16			; _FontData[101][3] @ 8128
	.field  	14,16			; _FontData[101][4] @ 8144
	.field  	32,16			; _FontData[102][0] @ 8160
	.field  	64,16			; _FontData[102][1] @ 8176
	.field  	72,16			; _FontData[102][2] @ 8192
	.field  	63,16			; _FontData[102][3] @ 8208
	.field  	8,16			; _FontData[102][4] @ 8224
	.field  	62,16			; _FontData[103][0] @ 8240
	.field  	37,16			; _FontData[103][1] @ 8256
	.field  	37,16			; _FontData[103][2] @ 8272
	.field  	37,16			; _FontData[103][3] @ 8288
	.field  	24,16			; _FontData[103][4] @ 8304
	.field  	15,16			; _FontData[104][0] @ 8320
	.field  	16,16			; _FontData[104][1] @ 8336
	.field  	16,16			; _FontData[104][2] @ 8352
	.field  	8,16			; _FontData[104][3] @ 8368
	.field  	127,16			; _FontData[104][4] @ 8384
	.field  	0,16			; _FontData[105][0] @ 8400
	.field  	1,16			; _FontData[105][1] @ 8416
	.field  	95,16			; _FontData[105][2] @ 8432
	.field  	17,16			; _FontData[105][3] @ 8448
	.field  	0,16			; _FontData[105][4] @ 8464
	.field  	0,16			; _FontData[106][0] @ 8480
	.field  	94,16			; _FontData[106][1] @ 8496
	.field  	17,16			; _FontData[106][2] @ 8512
	.field  	1,16			; _FontData[106][3] @ 8528
	.field  	2,16			; _FontData[106][4] @ 8544
	.field  	0,16			; _FontData[107][0] @ 8560
	.field  	17,16			; _FontData[107][1] @ 8576
	.field  	10,16			; _FontData[107][2] @ 8592
	.field  	4,16			; _FontData[107][3] @ 8608
	.field  	127,16			; _FontData[107][4] @ 8624
	.field  	0,16			; _FontData[108][0] @ 8640
	.field  	1,16			; _FontData[108][1] @ 8656
	.field  	127,16			; _FontData[108][2] @ 8672
	.field  	65,16			; _FontData[108][3] @ 8688
	.field  	0,16			; _FontData[108][4] @ 8704
	.field  	15,16			; _FontData[109][0] @ 8720
	.field  	16,16			; _FontData[109][1] @ 8736
	.field  	12,16			; _FontData[109][2] @ 8752
	.field  	16,16			; _FontData[109][3] @ 8768
	.field  	31,16			; _FontData[109][4] @ 8784
	.field  	15,16			; _FontData[110][0] @ 8800
	.field  	16,16			; _FontData[110][1] @ 8816
	.field  	16,16			; _FontData[110][2] @ 8832
	.field  	8,16			; _FontData[110][3] @ 8848
	.field  	31,16			; _FontData[110][4] @ 8864
	.field  	14,16			; _FontData[111][0] @ 8880
	.field  	17,16			; _FontData[111][1] @ 8896
	.field  	17,16			; _FontData[111][2] @ 8912
	.field  	17,16			; _FontData[111][3] @ 8928
	.field  	14,16			; _FontData[111][4] @ 8944
	.field  	8,16			; _FontData[112][0] @ 8960
	.field  	20,16			; _FontData[112][1] @ 8976
	.field  	20,16			; _FontData[112][2] @ 8992
	.field  	20,16			; _FontData[112][3] @ 9008
	.field  	31,16			; _FontData[112][4] @ 9024
	.field  	31,16			; _FontData[113][0] @ 9040
	.field  	12,16			; _FontData[113][1] @ 9056
	.field  	20,16			; _FontData[113][2] @ 9072
	.field  	20,16			; _FontData[113][3] @ 9088
	.field  	8,16			; _FontData[113][4] @ 9104
	.field  	8,16			; _FontData[114][0] @ 9120
	.field  	16,16			; _FontData[114][1] @ 9136
	.field  	16,16			; _FontData[114][2] @ 9152
	.field  	8,16			; _FontData[114][3] @ 9168
	.field  	31,16			; _FontData[114][4] @ 9184
	.field  	2,16			; _FontData[115][0] @ 9200
	.field  	21,16			; _FontData[115][1] @ 9216
	.field  	21,16			; _FontData[115][2] @ 9232
	.field  	21,16			; _FontData[115][3] @ 9248
	.field  	9,16			; _FontData[115][4] @ 9264
	.field  	2,16			; _FontData[116][0] @ 9280
	.field  	1,16			; _FontData[116][1] @ 9296
	.field  	17,16			; _FontData[116][2] @ 9312
	.field  	126,16			; _FontData[116][3] @ 9328
	.field  	16,16			; _FontData[116][4] @ 9344
	.field  	31,16			; _FontData[117][0] @ 9360
	.field  	2,16			; _FontData[117][1] @ 9376
	.field  	1,16			; _FontData[117][2] @ 9392
	.field  	1,16			; _FontData[117][3] @ 9408
	.field  	30,16			; _FontData[117][4] @ 9424
	.field  	28,16			; _FontData[118][0] @ 9440
	.field  	2,16			; _FontData[118][1] @ 9456
	.field  	1,16			; _FontData[118][2] @ 9472
	.field  	2,16			; _FontData[118][3] @ 9488
	.field  	28,16			; _FontData[118][4] @ 9504
	.field  	30,16			; _FontData[119][0] @ 9520
	.field  	1,16			; _FontData[119][1] @ 9536
	.field  	14,16			; _FontData[119][2] @ 9552
	.field  	1,16			; _FontData[119][3] @ 9568
	.field  	30,16			; _FontData[119][4] @ 9584
	.field  	17,16			; _FontData[120][0] @ 9600
	.field  	10,16			; _FontData[120][1] @ 9616
	.field  	4,16			; _FontData[120][2] @ 9632
	.field  	10,16			; _FontData[120][3] @ 9648
	.field  	17,16			; _FontData[120][4] @ 9664
	.field  	30,16			; _FontData[121][0] @ 9680
	.field  	5,16			; _FontData[121][1] @ 9696
	.field  	5,16			; _FontData[121][2] @ 9712
	.field  	5,16			; _FontData[121][3] @ 9728
	.field  	24,16			; _FontData[121][4] @ 9744
	.field  	17,16			; _FontData[122][0] @ 9760
	.field  	25,16			; _FontData[122][1] @ 9776
	.field  	21,16			; _FontData[122][2] @ 9792
	.field  	19,16			; _FontData[122][3] @ 9808
	.field  	17,16			; _FontData[122][4] @ 9824
	.field  	0,16			; _FontData[123][0] @ 9840
	.field  	65,16			; _FontData[123][1] @ 9856
	.field  	54,16			; _FontData[123][2] @ 9872
	.field  	8,16			; _FontData[123][3] @ 9888
	.field  	0,16			; _FontData[123][4] @ 9904
	.field  	0,16			; _FontData[124][0] @ 9920
	.field  	0,16			; _FontData[124][1] @ 9936
	.field  	127,16			; _FontData[124][2] @ 9952
	.field  	0,16			; _FontData[124][3] @ 9968
	.field  	0,16			; _FontData[124][4] @ 9984
	.field  	0,16			; _FontData[125][0] @ 10000
	.field  	8,16			; _FontData[125][1] @ 10016
	.field  	54,16			; _FontData[125][2] @ 10032
	.field  	65,16			; _FontData[125][3] @ 10048
	.field  	0,16			; _FontData[125][4] @ 10064
	.field  	0,16			; _FontData[126][0] @ 10080
	.field  	0,16			; _FontData[126][1] @ 10096
	.field  	0,16			; _FontData[126][2] @ 10112
	.field  	0,16			; _FontData[126][3] @ 10128
	.field  	0,16			; _FontData[126][4] @ 10144
	.field  	0,16			; _FontData[127][0] @ 10160
	.field  	0,16			; _FontData[127][1] @ 10176
	.field  	0,16			; _FontData[127][2] @ 10192
	.field  	0,16			; _FontData[127][3] @ 10208
	.field  	0,16			; _FontData[127][4] @ 10224

DW$6	.dwtag  DW_TAG_variable, DW_AT_name("FontData"), DW_AT_symbol_name("_FontData")
	.dwattr DW$6, DW_AT_location[DW_OP_addr _FontData]
	.dwattr DW$6, DW_AT_type(*DW$T$58)
	.dwattr DW$6, DW_AT_external(0x01)
;	..\Compiler\bin\opt2000.exe C:\Users\노호진\AppData\Local\Temp\TI59610 C:\Users\노호진\AppData\Local\Temp\TI5964 
;	..\Compiler\bin\ac2000.exe --keep_unneeded_types -D_INLINE -DLARGE_MODEL -I..\include --version=28 --keep_unneeded_types --mem_model:code=flat --mem_model:data=large -m --i_output_file C:\Users\노호진\AppData\Local\Temp\TI5962 --template_info_file C:\Users\노호진\AppData\Local\Temp\TI5966 --object_file VFD.obj --embed_opts 10 --call_assumptions=0 --mem_model:code=flat --mem_model:data=large --opt_for_speed --opt_level=3 --optimizer_comments --optimizer_interlist --program_level_compile 
	.sect	".text"
	.global	_VfdCtlRegInit

DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("VfdCtlRegInit"), DW_AT_symbol_name("_VfdCtlRegInit")
	.dwattr DW$7, DW_AT_low_pc(_VfdCtlRegInit)
	.dwattr DW$7, DW_AT_high_pc(0x00)
	.dwattr DW$7, DW_AT_begin_file("VFD.c")
	.dwattr DW$7, DW_AT_begin_line(0xa5)
	.dwattr DW$7, DW_AT_begin_column(0x06)
	.dwpsn	"VFD.c",166,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _VfdCtlRegInit                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************


;***************************************************************
;*                                                             *
;* Using -g (debug) with optimization (-o3) may disable key op *
;*                                                             *
;***************************************************************
_VfdCtlRegInit:
;*** 170	-----------------------    C$3 = &GpioDataRegs;
;*** 170	-----------------------    ((volatile unsigned *)C$3)[4] |= 0x4000u;
;*** 171	-----------------------    ((volatile unsigned *)C$3)[2] |= 0x8000u;
;*** 172	-----------------------    ((volatile unsigned *)C$3)[3] |= 0x8000u;
;*** 173	-----------------------    *(&GpioDataRegs+2L) |= 0x4000u;
;*** 174	-----------------------    ((volatile unsigned *)C$3)[5] |= 0x8000u;
;***  	-----------------------    #pragma MUST_ITERATE(8, 8, 8)
;***  	-----------------------    #pragma LOOP_FLAGS(4096u)
;*** 177	-----------------------    Cnt = 7;
;***  	-----------------------    L$1 = 7;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
;* AL    assigned to _CrlReg
DW$8	.dwtag  DW_TAG_formal_parameter, DW_AT_name("CrlReg"), DW_AT_symbol_name("_CrlReg")
	.dwattr DW$8, DW_AT_type(*DW$T$19)
	.dwattr DW$8, DW_AT_location[DW_OP_reg0]
;* AR4   assigned to C$1
DW$9	.dwtag  DW_TAG_variable, DW_AT_name("C$1"), DW_AT_symbol_name("C$1")
	.dwattr DW$9, DW_AT_type(*DW$T$54)
	.dwattr DW$9, DW_AT_location[DW_OP_reg12]
;* AR4   assigned to C$2
DW$10	.dwtag  DW_TAG_variable, DW_AT_name("C$2"), DW_AT_symbol_name("C$2")
	.dwattr DW$10, DW_AT_type(*DW$T$54)
	.dwattr DW$10, DW_AT_location[DW_OP_reg12]
;* AR4   assigned to C$3
DW$11	.dwtag  DW_TAG_variable, DW_AT_name("C$3"), DW_AT_symbol_name("C$3")
	.dwattr DW$11, DW_AT_type(*DW$T$54)
	.dwattr DW$11, DW_AT_location[DW_OP_reg12]
;* AR7   assigned to _CrlReg
DW$12	.dwtag  DW_TAG_variable, DW_AT_name("CrlReg"), DW_AT_symbol_name("_CrlReg")
	.dwattr DW$12, DW_AT_type(*DW$T$49)
	.dwattr DW$12, DW_AT_location[DW_OP_reg18]
;* AH    assigned to _Cnt
DW$13	.dwtag  DW_TAG_variable, DW_AT_name("Cnt"), DW_AT_symbol_name("_Cnt")
	.dwattr DW$13, DW_AT_type(*DW$T$10)
	.dwattr DW$13, DW_AT_location[DW_OP_reg1]
;* AR6   assigned to L$1
DW$14	.dwtag  DW_TAG_variable, DW_AT_name("L$1"), DW_AT_symbol_name("L$1")
	.dwattr DW$14, DW_AT_type(*DW$T$10)
	.dwattr DW$14, DW_AT_location[DW_OP_reg16]
        MOVZ      AR7,AL                ; |166| 
	.dwpsn	"VFD.c",170,2
        MOVL      XAR4,#_GpioDataRegs   ; |170| 
        OR        *+XAR4[4],#0x4000     ; |170| 
	.dwpsn	"VFD.c",171,2
        OR        *+XAR4[2],#0x8000     ; |171| 
	.dwpsn	"VFD.c",172,2
        OR        *+XAR4[3],#0x8000     ; |172| 
	.dwpsn	"VFD.c",173,2
        MOVW      DP,#_GpioDataRegs+2
        OR        @_GpioDataRegs+2,#0x4000 ; |173| 
	.dwpsn	"VFD.c",174,2
        OR        *+XAR4[5],#0x8000     ; |174| 
	.dwpsn	"VFD.c",177,6
        MOVB      XAR6,#7
        MOVB      AH,#7                 ; |177| 
L1:    
DW$L$_VfdCtlRegInit$2$B:
;***	-----------------------g2:
;*** 179	-----------------------    C$2 = &GpioDataRegs;
;*** 179	-----------------------    ((volatile unsigned *)C$2)[4] |= 0x4000u;
;*** 180	-----------------------    if ( CrlReg&1<<Cnt ) goto g4;
	.dwpsn	"VFD.c",179,3
        OR        *+XAR4[4],#0x4000     ; |179| 
	.dwpsn	"VFD.c",180,3
        MOVB      AL,#1                 ; |180| 
        MOV       T,AH                  ; |180| 
        LSL       AL,T                  ; |180| 
        AND       AL,AR7                ; |180| 
        BF        L2,NEQ                ; |180| 
        ; branchcc occurs ; |180| 
DW$L$_VfdCtlRegInit$2$E:
DW$L$_VfdCtlRegInit$3$B:
;*** 186	-----------------------    ((volatile unsigned *)C$2)[5] |= 0x4000u;
;*** 186	-----------------------    goto g5;
	.dwpsn	"VFD.c",186,4
        OR        *+XAR4[5],#0x4000     ; |186| 
        BF        L3,UNC                ; |186| 
        ; branch occurs ; |186| 
DW$L$_VfdCtlRegInit$3$E:
L2:    
DW$L$_VfdCtlRegInit$4$B:
;***	-----------------------g4:
;*** 182	-----------------------    *(&GpioDataRegs+3L) |= 0x4000u;
	.dwpsn	"VFD.c",182,4
        OR        @_GpioDataRegs+3,#0x4000 ; |182| 
DW$L$_VfdCtlRegInit$4$E:
L3:    
DW$L$_VfdCtlRegInit$5$B:
;***	-----------------------g5:
;*** 188	-----------------------    *(&GpioDataRegs+2L) |= 0x4000u;
;*** 177	-----------------------    --Cnt;
;*** 177	-----------------------    if ( (--L$1) != (-1) ) goto g2;
	.dwpsn	"VFD.c",188,3
        OR        @_GpioDataRegs+2,#0x4000 ; |188| 
	.dwpsn	"VFD.c",177,24
        ADDB      AH,#-1
	.dwpsn	"VFD.c",177,14
        BANZ      L1,AR6--              ; |177| 
        ; branchcc occurs ; |177| 
DW$L$_VfdCtlRegInit$5$E:
;*** 191	-----------------------    C$1 = &GpioDataRegs;
;*** 191	-----------------------    ((volatile unsigned *)C$1)[3] |= 0x8000u;
;*** 192	-----------------------    ((volatile unsigned *)C$1)[4] |= 0x4000u;
;*** 192	-----------------------    return;
	.dwpsn	"VFD.c",191,2
        OR        *+XAR4[3],#0x8000     ; |191| 
	.dwpsn	"VFD.c",192,2
        OR        *+XAR4[4],#0x4000     ; |192| 
	.dwpsn	"VFD.c",194,1
        LRETR
        ; return occurs

DW$15	.dwtag  DW_TAG_loop
	.dwattr DW$15, DW_AT_name("C:\Users\노호진\Desktop\2809_MICROMOUSE\2809_hara\main\VFD.asm:L1:1:1701145761")
	.dwattr DW$15, DW_AT_begin_file("VFD.c")
	.dwattr DW$15, DW_AT_begin_line(0xb1)
	.dwattr DW$15, DW_AT_end_line(0xbd)
DW$16	.dwtag  DW_TAG_loop_range
	.dwattr DW$16, DW_AT_low_pc(DW$L$_VfdCtlRegInit$2$B)
	.dwattr DW$16, DW_AT_high_pc(DW$L$_VfdCtlRegInit$2$E)
DW$17	.dwtag  DW_TAG_loop_range
	.dwattr DW$17, DW_AT_low_pc(DW$L$_VfdCtlRegInit$3$B)
	.dwattr DW$17, DW_AT_high_pc(DW$L$_VfdCtlRegInit$3$E)
DW$18	.dwtag  DW_TAG_loop_range
	.dwattr DW$18, DW_AT_low_pc(DW$L$_VfdCtlRegInit$4$B)
	.dwattr DW$18, DW_AT_high_pc(DW$L$_VfdCtlRegInit$4$E)
DW$19	.dwtag  DW_TAG_loop_range
	.dwattr DW$19, DW_AT_low_pc(DW$L$_VfdCtlRegInit$5$B)
	.dwattr DW$19, DW_AT_high_pc(DW$L$_VfdCtlRegInit$5$E)
	.dwendtag DW$15

	.dwattr DW$7, DW_AT_end_file("VFD.c")
	.dwattr DW$7, DW_AT_end_line(0xc2)
	.dwattr DW$7, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$7

	.sect	".text"
	.global	_VfdInit

DW$20	.dwtag  DW_TAG_subprogram, DW_AT_name("VfdInit"), DW_AT_symbol_name("_VfdInit")
	.dwattr DW$20, DW_AT_low_pc(_VfdInit)
	.dwattr DW$20, DW_AT_high_pc(0x00)
	.dwattr DW$20, DW_AT_begin_file("VFD.c")
	.dwattr DW$20, DW_AT_begin_line(0xc3)
	.dwattr DW$20, DW_AT_begin_column(0x06)
	.dwpsn	"VFD.c",196,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _VfdInit                      FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************


;***************************************************************
;*                                                             *
;* Using -g (debug) with optimization (-o3) may disable key op *
;*                                                             *
;***************************************************************
_VfdInit:
;*** 197	-----------------------    C$1 = &GpioDataRegs;
;*** 197	-----------------------    ((volatile unsigned *)C$1)[5] |= 0x8000u;
;*** 198	-----------------------    ((volatile unsigned *)C$1)[4] |= 0x4000u;
;*** 199	-----------------------    *(&GpioDataRegs+5L) |= 0x4000u;
;*** 200	-----------------------    *(&GpioDataRegs+4L) |= 0x8000u;
;*** 201	-----------------------    VfdCtlRegInit(129u);
;*** 202	-----------------------    VfdCtlRegInit(77u);
;*** 202	-----------------------    return;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
;* AR4   assigned to C$1
DW$21	.dwtag  DW_TAG_variable, DW_AT_name("C$1"), DW_AT_symbol_name("C$1")
	.dwattr DW$21, DW_AT_type(*DW$T$54)
	.dwattr DW$21, DW_AT_location[DW_OP_reg12]
	.dwpsn	"VFD.c",197,2
        MOVL      XAR4,#_GpioDataRegs   ; |197| 
        OR        *+XAR4[5],#0x8000     ; |197| 
	.dwpsn	"VFD.c",198,2
        OR        *+XAR4[4],#0x4000     ; |198| 
	.dwpsn	"VFD.c",199,2
        MOVW      DP,#_GpioDataRegs+5
        OR        @_GpioDataRegs+5,#0x4000 ; |199| 
	.dwpsn	"VFD.c",200,2
        OR        @_GpioDataRegs+4,#0x8000 ; |200| 
	.dwpsn	"VFD.c",201,2
        MOVB      AL,#129               ; |201| 
        LCR       #_VfdCtlRegInit       ; |201| 
        ; call occurs [#_VfdCtlRegInit] ; |201| 
	.dwpsn	"VFD.c",202,2
        MOVB      AL,#77                ; |202| 
        LCR       #_VfdCtlRegInit       ; |202| 
        ; call occurs [#_VfdCtlRegInit] ; |202| 
	.dwpsn	"VFD.c",203,1
        LRETR
        ; return occurs
	.dwattr DW$20, DW_AT_end_file("VFD.c")
	.dwattr DW$20, DW_AT_end_line(0xcb)
	.dwattr DW$20, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$20

	.sect	".text"
	.global	_VfdDataLoad

DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("VfdDataLoad"), DW_AT_symbol_name("_VfdDataLoad")
	.dwattr DW$22, DW_AT_low_pc(_VfdDataLoad)
	.dwattr DW$22, DW_AT_high_pc(0x00)
	.dwattr DW$22, DW_AT_begin_file("VFD.c")
	.dwattr DW$22, DW_AT_begin_line(0xcd)
	.dwattr DW$22, DW_AT_begin_column(0x06)
	.dwpsn	"VFD.c",206,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _VfdDataLoad                  FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************


;***************************************************************
;*                                                             *
;* Using -g (debug) with optimization (-o3) may disable key op *
;*                                                             *
;***************************************************************
_VfdDataLoad:
;*** 215	-----------------------    K$2 = &GpioDataRegs+2L;
;*** 215	-----------------------    ((volatile unsigned *)K$2)[2] |= 0x4000u;
;*** 216	-----------------------    ((volatile unsigned *)K$2)[2] |= 0x8000u;
;*** 217	-----------------------    ((volatile unsigned *)K$2)[1] |= 0x8000u;
;*** 218	-----------------------    *(volatile unsigned *)K$2 |= 0x4000u;
;*** 219	-----------------------    ((volatile unsigned *)K$2)[3] |= 0x8000u;
;***  	-----------------------    #pragma MUST_ITERATE(8, 8, 8)
;***  	-----------------------    #pragma LOOP_FLAGS(4096u)
;***  	-----------------------    K$24 = (char *)(&FontData);
;*** 211	-----------------------    ConverData = 0;
;***  	-----------------------    L$1 = 7;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        MOVL      *SP++,XAR1
	.dwcfa	0x80, 7, 2
	.dwcfa	0x1d, -4
        MOVL      *SP++,XAR3
	.dwcfa	0x80, 11, 4
	.dwcfa	0x1d, -6
;* AR4   assigned to _Buff
DW$23	.dwtag  DW_TAG_formal_parameter, DW_AT_name("Buff"), DW_AT_symbol_name("_Buff")
	.dwattr DW$23, DW_AT_type(*DW$T$31)
	.dwattr DW$23, DW_AT_location[DW_OP_reg12]
;* PH    assigned to U$26
DW$24	.dwtag  DW_TAG_variable, DW_AT_name("U$26"), DW_AT_symbol_name("U$26")
	.dwattr DW$24, DW_AT_type(*DW$T$5)
	.dwattr DW$24, DW_AT_location[DW_OP_reg3]
;* AR7   assigned to K$24
DW$25	.dwtag  DW_TAG_variable, DW_AT_name("K$24"), DW_AT_symbol_name("K$24")
	.dwattr DW$25, DW_AT_type(*DW$T$35)
	.dwattr DW$25, DW_AT_location[DW_OP_reg18]
;* AR4   assigned to L$1
DW$26	.dwtag  DW_TAG_variable, DW_AT_name("L$1"), DW_AT_symbol_name("L$1")
	.dwattr DW$26, DW_AT_type(*DW$T$10)
	.dwattr DW$26, DW_AT_location[DW_OP_reg12]
;* AR6   assigned to L$3
DW$27	.dwtag  DW_TAG_variable, DW_AT_name("L$3"), DW_AT_symbol_name("L$3")
	.dwattr DW$27, DW_AT_type(*DW$T$10)
	.dwattr DW$27, DW_AT_location[DW_OP_reg16]
;* AR6   assigned to L$4
DW$28	.dwtag  DW_TAG_variable, DW_AT_name("L$4"), DW_AT_symbol_name("L$4")
	.dwattr DW$28, DW_AT_type(*DW$T$10)
	.dwattr DW$28, DW_AT_location[DW_OP_reg16]
;* PL    assigned to _ConverData
DW$29	.dwtag  DW_TAG_variable, DW_AT_name("ConverData"), DW_AT_symbol_name("_ConverData")
	.dwattr DW$29, DW_AT_type(*DW$T$10)
	.dwattr DW$29, DW_AT_location[DW_OP_reg2]
;* AL    assigned to _y
DW$30	.dwtag  DW_TAG_variable, DW_AT_name("y"), DW_AT_symbol_name("_y")
	.dwattr DW$30, DW_AT_type(*DW$T$10)
	.dwattr DW$30, DW_AT_location[DW_OP_reg0]
;* AR0   assigned to _i
DW$31	.dwtag  DW_TAG_variable, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$31, DW_AT_type(*DW$T$10)
	.dwattr DW$31, DW_AT_location[DW_OP_reg4]
;* AL    assigned to _x
DW$32	.dwtag  DW_TAG_variable, DW_AT_name("x"), DW_AT_symbol_name("_x")
	.dwattr DW$32, DW_AT_type(*DW$T$10)
	.dwattr DW$32, DW_AT_location[DW_OP_reg0]
;* AR5   assigned to _Buff
DW$33	.dwtag  DW_TAG_variable, DW_AT_name("Buff"), DW_AT_symbol_name("_Buff")
	.dwattr DW$33, DW_AT_type(*DW$T$31)
	.dwattr DW$33, DW_AT_location[DW_OP_reg14]
;* AR6   assigned to K$2
DW$34	.dwtag  DW_TAG_variable, DW_AT_name("K$2"), DW_AT_symbol_name("K$2")
	.dwattr DW$34, DW_AT_type(*DW$T$54)
	.dwattr DW$34, DW_AT_location[DW_OP_reg16]
;* AR3   assigned to K$2
DW$35	.dwtag  DW_TAG_variable, DW_AT_name("K$2"), DW_AT_symbol_name("K$2")
	.dwattr DW$35, DW_AT_type(*DW$T$54)
	.dwattr DW$35, DW_AT_location[DW_OP_reg10]
;* AR3   assigned to K$2
DW$36	.dwtag  DW_TAG_variable, DW_AT_name("K$2"), DW_AT_symbol_name("K$2")
	.dwattr DW$36, DW_AT_type(*DW$T$54)
	.dwattr DW$36, DW_AT_location[DW_OP_reg10]
        MOVL      XAR5,XAR4             ; |206| 
	.dwpsn	"VFD.c",215,2
        MOVL      XAR6,#_GpioDataRegs+2 ; |215| 
        OR        *+XAR6[2],#0x4000     ; |215| 
	.dwpsn	"VFD.c",216,2
        OR        *+XAR6[2],#0x8000     ; |216| 
	.dwpsn	"VFD.c",217,2
        OR        *+XAR6[1],#0x8000     ; |217| 
	.dwpsn	"VFD.c",218,2
        OR        *+XAR6[0],#0x4000     ; |218| 
	.dwpsn	"VFD.c",219,2
        OR        *+XAR6[3],#0x8000     ; |219| 
        MOVL      XAR7,#_FontData
	.dwpsn	"VFD.c",211,6
        SETC      SXM
        MOV       PL,#0                 ; |211| 
        MOVB      XAR4,#7
L4:    
DW$L$_VfdDataLoad$2$B:
;***	-----------------------g2:
;***  	-----------------------    #pragma MUST_ITERATE(5, 5, 5)
;***  	-----------------------    #pragma LOOP_FLAGS(4096u)
;*** 224	-----------------------    i = 4;
	.dwpsn	"VFD.c",224,7
        MOVB      XAR0,#4               ; |224| 
DW$L$_VfdDataLoad$2$E:
L5:    
DW$L$_VfdDataLoad$3$B:
;***	-----------------------g3:
;***  	-----------------------    #pragma MUST_ITERATE(7, 7, 7)
;***  	-----------------------    #pragma LOOP_FLAGS(4096u)
;***  	-----------------------    U$26 = K$24[(long)*Buff*5L+i];
;*** 226	-----------------------    y = 6;
;***  	-----------------------    L$3 = 6;
        MOVL      XAR6,XAR7
        MOV       T,*+XAR5[0]
        MPYB      ACC,T,#5
        ADD       ACC,AR0
        ADDL      XAR6,ACC
        MOV       PH,*+XAR6[0]
	.dwpsn	"VFD.c",226,8
        MOVB      AL,#6                 ; |226| 
        MOVB      XAR6,#6
DW$L$_VfdDataLoad$3$E:
L6:    
DW$L$_VfdDataLoad$4$B:
;***	-----------------------g4:
;*** 227	-----------------------    ConverData |= (U$26>>y&1)<<6-y;
;*** 226	-----------------------    --y;
;*** 226	-----------------------    if ( (--L$3) != (-1) ) goto g4;
	.dwpsn	"VFD.c",227,5
        MOVB      XAR1,#6               ; |227| 
        MOV       T,AL                  ; |227| 
        SUB       AR1,AL                ; |227| 
        MOV       AH,PH                 ; |227| 
        ASR       AH,T                  ; |227| 
        ANDB      AH,#0x01              ; |227| 
        MOV       T,AR1                 ; |227| 
        LSL       AH,T                  ; |227| 
        OR        PL,AH                 ; |227| 
	.dwpsn	"VFD.c",226,23
        ADDB      AL,#-1
	.dwpsn	"VFD.c",226,15
        BANZ      L6,AR6--              ; |226| 
        ; branchcc occurs ; |226| 
DW$L$_VfdDataLoad$4$E:
DW$L$_VfdDataLoad$5$B:
;***  	-----------------------    #pragma MUST_ITERATE(8, 8, 8)
;***  	-----------------------    #pragma LOOP_FLAGS(4096u)
;*** 229	-----------------------    x = 7;
;***  	-----------------------    L$4 = 7;
	.dwpsn	"VFD.c",229,8
        MOVB      XAR6,#7
        MOVB      AL,#7                 ; |229| 
DW$L$_VfdDataLoad$5$E:
L7:    
DW$L$_VfdDataLoad$6$B:
;***	-----------------------g6:
;*** 231	-----------------------    K$2 = &GpioDataRegs+4L;
;*** 231	-----------------------    *(volatile unsigned *)K$2 |= 0x4000u;
;*** 232	-----------------------    if ( ConverData&1<<x ) goto g8;
	.dwpsn	"VFD.c",231,5
        MOVL      XAR3,#_GpioDataRegs+4 ; |231| 
        OR        *+XAR3[0],#0x4000     ; |231| 
	.dwpsn	"VFD.c",232,5
        MOVB      AH,#1                 ; |232| 
        MOV       T,AL                  ; |232| 
        LSL       AH,T                  ; |232| 
        AND       AH,PL                 ; |232| 
        BF        L8,NEQ                ; |232| 
        ; branchcc occurs ; |232| 
DW$L$_VfdDataLoad$6$E:
DW$L$_VfdDataLoad$7$B:
;*** 238	-----------------------    ((volatile unsigned *)K$2)[1] |= 0x4000u;
;*** 238	-----------------------    goto g9;
	.dwpsn	"VFD.c",238,6
        OR        *+XAR3[1],#0x4000     ; |238| 
        BF        L9,UNC                ; |238| 
        ; branch occurs ; |238| 
DW$L$_VfdDataLoad$7$E:
L8:    
DW$L$_VfdDataLoad$8$B:
;***	-----------------------g8:
;*** 234	-----------------------    *(&GpioDataRegs+3L) |= 0x4000u;
	.dwpsn	"VFD.c",234,6
        MOVW      DP,#_GpioDataRegs+3
        OR        @_GpioDataRegs+3,#0x4000 ; |234| 
DW$L$_VfdDataLoad$8$E:
L9:    
DW$L$_VfdDataLoad$9$B:
;***	-----------------------g9:
;*** 240	-----------------------    K$2 = &GpioDataRegs+2L;
;*** 240	-----------------------    *(volatile unsigned *)K$2 |= 0x4000u;
;*** 229	-----------------------    --x;
;*** 229	-----------------------    if ( (--L$4) != (-1) ) goto g6;
	.dwpsn	"VFD.c",240,5
        MOVL      XAR3,#_GpioDataRegs+2 ; |240| 
        OR        *+XAR3[0],#0x4000     ; |240| 
	.dwpsn	"VFD.c",229,23
        ADDB      AL,#-1
	.dwpsn	"VFD.c",229,15
        BANZ      L7,AR6--              ; |229| 
        ; branchcc occurs ; |229| 
DW$L$_VfdDataLoad$9$E:
DW$L$_VfdDataLoad$10$B:
;*** 242	-----------------------    ConverData = 0;
;*** 224	-----------------------    if ( (--i) >= 0 ) goto g3;
	.dwpsn	"VFD.c",242,4
        MOV       PL,#0                 ; |242| 
	.dwpsn	"VFD.c",224,23
        MOV       AL,AR0
        ADDB      AL,#-1
        MOVZ      AR0,AL                ; |224| 
        BF        L5,GEQ                ; |224| 
        ; branchcc occurs ; |224| 
DW$L$_VfdDataLoad$10$E:
DW$L$_VfdDataLoad$11$B:
;*** 244	-----------------------    ++Buff;
;*** 222	-----------------------    if ( (--L$1) != (-1) ) goto g2;
	.dwpsn	"VFD.c",244,3
        MOVL      ACC,XAR5              ; |244| 
        MOVB      XAR6,#1               ; |244| 
        ADDU      ACC,AR6               ; |244| 
        MOVL      XAR5,ACC              ; |244| 
	.dwpsn	"VFD.c",222,13
        BANZ      L4,AR4--              ; |222| 
        ; branchcc occurs ; |222| 
DW$L$_VfdDataLoad$11$E:
;*** 246	-----------------------    ((volatile unsigned *)K$2)[1] |= 0x8000u;
;*** 247	-----------------------    ((volatile unsigned *)K$2)[2] |= 0x4000u;
;*** 247	-----------------------    return;
	.dwpsn	"VFD.c",246,2
        OR        *+XAR3[1],#0x8000     ; |246| 
	.dwpsn	"VFD.c",247,2
        OR        *+XAR3[2],#0x4000     ; |247| 
	.dwpsn	"VFD.c",249,1
	.dwcfa	0x1d, -6
        MOVL      XAR3,*--SP
	.dwcfa	0x1d, -4
	.dwcfa	0xc0, 11
        MOVL      XAR1,*--SP
	.dwcfa	0x1d, -2
	.dwcfa	0xc0, 7
        LRETR
        ; return occurs

DW$37	.dwtag  DW_TAG_loop
	.dwattr DW$37, DW_AT_name("C:\Users\노호진\Desktop\2809_MICROMOUSE\2809_hara\main\VFD.asm:L4:1:1701145761")
	.dwattr DW$37, DW_AT_begin_file("VFD.c")
	.dwattr DW$37, DW_AT_begin_line(0xde)
	.dwattr DW$37, DW_AT_end_line(0xf5)
DW$38	.dwtag  DW_TAG_loop_range
	.dwattr DW$38, DW_AT_low_pc(DW$L$_VfdDataLoad$2$B)
	.dwattr DW$38, DW_AT_high_pc(DW$L$_VfdDataLoad$2$E)
DW$39	.dwtag  DW_TAG_loop_range
	.dwattr DW$39, DW_AT_low_pc(DW$L$_VfdDataLoad$11$B)
	.dwattr DW$39, DW_AT_high_pc(DW$L$_VfdDataLoad$11$E)

DW$40	.dwtag  DW_TAG_loop
	.dwattr DW$40, DW_AT_name("C:\Users\노호진\Desktop\2809_MICROMOUSE\2809_hara\main\VFD.asm:L5:2:1701145761")
	.dwattr DW$40, DW_AT_begin_file("VFD.c")
	.dwattr DW$40, DW_AT_begin_line(0xe0)
	.dwattr DW$40, DW_AT_end_line(0xf3)
DW$41	.dwtag  DW_TAG_loop_range
	.dwattr DW$41, DW_AT_low_pc(DW$L$_VfdDataLoad$3$B)
	.dwattr DW$41, DW_AT_high_pc(DW$L$_VfdDataLoad$3$E)
DW$42	.dwtag  DW_TAG_loop_range
	.dwattr DW$42, DW_AT_low_pc(DW$L$_VfdDataLoad$5$B)
	.dwattr DW$42, DW_AT_high_pc(DW$L$_VfdDataLoad$5$E)
DW$43	.dwtag  DW_TAG_loop_range
	.dwattr DW$43, DW_AT_low_pc(DW$L$_VfdDataLoad$10$B)
	.dwattr DW$43, DW_AT_high_pc(DW$L$_VfdDataLoad$10$E)

DW$44	.dwtag  DW_TAG_loop
	.dwattr DW$44, DW_AT_name("C:\Users\노호진\Desktop\2809_MICROMOUSE\2809_hara\main\VFD.asm:L6:3:1701145761")
	.dwattr DW$44, DW_AT_begin_file("VFD.c")
	.dwattr DW$44, DW_AT_begin_line(0xe2)
	.dwattr DW$44, DW_AT_end_line(0xe3)
DW$45	.dwtag  DW_TAG_loop_range
	.dwattr DW$45, DW_AT_low_pc(DW$L$_VfdDataLoad$4$B)
	.dwattr DW$45, DW_AT_high_pc(DW$L$_VfdDataLoad$4$E)
	.dwendtag DW$44


DW$46	.dwtag  DW_TAG_loop
	.dwattr DW$46, DW_AT_name("C:\Users\노호진\Desktop\2809_MICROMOUSE\2809_hara\main\VFD.asm:L7:3:1701145761")
	.dwattr DW$46, DW_AT_begin_file("VFD.c")
	.dwattr DW$46, DW_AT_begin_line(0xe5)
	.dwattr DW$46, DW_AT_end_line(0xf1)
DW$47	.dwtag  DW_TAG_loop_range
	.dwattr DW$47, DW_AT_low_pc(DW$L$_VfdDataLoad$6$B)
	.dwattr DW$47, DW_AT_high_pc(DW$L$_VfdDataLoad$6$E)
DW$48	.dwtag  DW_TAG_loop_range
	.dwattr DW$48, DW_AT_low_pc(DW$L$_VfdDataLoad$7$B)
	.dwattr DW$48, DW_AT_high_pc(DW$L$_VfdDataLoad$7$E)
DW$49	.dwtag  DW_TAG_loop_range
	.dwattr DW$49, DW_AT_low_pc(DW$L$_VfdDataLoad$8$B)
	.dwattr DW$49, DW_AT_high_pc(DW$L$_VfdDataLoad$8$E)
DW$50	.dwtag  DW_TAG_loop_range
	.dwattr DW$50, DW_AT_low_pc(DW$L$_VfdDataLoad$9$B)
	.dwattr DW$50, DW_AT_high_pc(DW$L$_VfdDataLoad$9$E)
	.dwendtag DW$46

	.dwendtag DW$40

	.dwendtag DW$37

	.dwattr DW$22, DW_AT_end_file("VFD.c")
	.dwattr DW$22, DW_AT_end_line(0xf9)
	.dwattr DW$22, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$22

	.sect	".text"
	.global	_VFDPrintf

DW$51	.dwtag  DW_TAG_subprogram, DW_AT_name("VFDPrintf"), DW_AT_symbol_name("_VFDPrintf")
	.dwattr DW$51, DW_AT_low_pc(_VFDPrintf)
	.dwattr DW$51, DW_AT_high_pc(0x00)
	.dwattr DW$51, DW_AT_begin_file("VFD.c")
	.dwattr DW$51, DW_AT_begin_line(0xfb)
	.dwattr DW$51, DW_AT_begin_column(0x06)
	.dwpsn	"VFD.c",252,1

	.dwfde DW$CIE
DW$52	.dwtag  DW_TAG_variable, DW_AT_name("Buff"), DW_AT_symbol_name("_Buff$1$0")
	.dwattr DW$52, DW_AT_type(*DW$T$59)
	.dwattr DW$52, DW_AT_location[DW_OP_addr _Buff$1$0]

;***************************************************************
;* FNAME: _VFDPrintf                    FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  2 SOE     *
;***************************************************************


;***************************************************************
;*                                                             *
;* Using -g (debug) with optimization (-o3) may disable key op *
;*                                                             *
;***************************************************************
_VFDPrintf:
;*** 256	-----------------------    C$1 = &Buff[0];
;*** 256	-----------------------    vsprintf(C$1, (char *)Form, (char *)(&Form));
;*** 258	-----------------------    VfdDataLoad(C$1);
;*** 258	-----------------------    return;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        MOVL      *SP++,XAR3
	.dwcfa	0x80, 11, 2
	.dwcfa	0x1d, -4
        ADDB      SP,#2
	.dwcfa	0x1d, -6
DW$53	.dwtag  DW_TAG_formal_parameter, DW_AT_name("Form"), DW_AT_symbol_name("_Form")
	.dwattr DW$53, DW_AT_type(*DW$T$31)
	.dwattr DW$53, DW_AT_location[DW_OP_breg20 -8]
DW$54	.dwtag  DW_TAG_unspecified_parameters
;* AR3   assigned to C$1
DW$55	.dwtag  DW_TAG_variable, DW_AT_name("C$1"), DW_AT_symbol_name("C$1")
	.dwattr DW$55, DW_AT_type(*DW$T$36)
	.dwattr DW$55, DW_AT_location[DW_OP_reg10]
	.dwpsn	"VFD.c",256,5
        MOVZ      AR4,SP                ; |256| 
        SUBB      XAR4,#8               ; |256| 
        MOVL      *-SP[2],XAR4          ; |256| 
        MOVL      XAR5,*-SP[8]          ; |256| 
        MOVL      XAR3,#_Buff$1$0       ; |256| 
        MOVL      XAR4,XAR3             ; |256| 
        LCR       #_vsprintf            ; |256| 
        ; call occurs [#_vsprintf] ; |256| 
	.dwpsn	"VFD.c",258,5
        MOVL      XAR4,XAR3             ; |258| 
        LCR       #_VfdDataLoad         ; |258| 
        ; call occurs [#_VfdDataLoad] ; |258| 
	.dwpsn	"VFD.c",259,1
        SUBB      SP,#2
	.dwcfa	0x1d, -4
        MOVL      XAR3,*--SP
	.dwcfa	0x1d, -2
	.dwcfa	0xc0, 11
        LRETR
        ; return occurs
	.dwattr DW$51, DW_AT_end_file("VFD.c")
	.dwattr DW$51, DW_AT_end_line(0x103)
	.dwattr DW$51, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$51

;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_vsprintf
	.global	_GpioDataRegs

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

DW$T$27	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$27, DW_AT_language(DW_LANG_C)
DW$56	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$T$27


DW$T$29	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$29, DW_AT_language(DW_LANG_C)

DW$T$32	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$32, DW_AT_language(DW_LANG_C)
DW$57	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$31)
	.dwendtag DW$T$32


DW$T$34	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$34, DW_AT_language(DW_LANG_C)
DW$58	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$31)
DW$59	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$T$34

DW$T$5	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$5, DW_AT_byte_size(0x01)
DW$T$35	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$5)
	.dwattr DW$T$35, DW_AT_address_class(0x16)
DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x01)
DW$T$36	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$36, DW_AT_address_class(0x16)

DW$T$41	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$41, DW_AT_language(DW_LANG_C)
DW$60	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$31)
DW$61	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$39)
DW$62	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
	.dwendtag DW$T$41

DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)
DW$63	.dwtag  DW_TAG_far_type
	.dwattr DW$63, DW_AT_type(*DW$T$19)
DW$T$49	.dwtag  DW_TAG_const_type
	.dwattr DW$T$49, DW_AT_type(*DW$63)
DW$T$54	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$53)
	.dwattr DW$T$54, DW_AT_address_class(0x16)
DW$64	.dwtag  DW_TAG_far_type
	.dwattr DW$64, DW_AT_type(*DW$T$26)
DW$T$55	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$55, DW_AT_type(*DW$64)
DW$T$31	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$30)
	.dwattr DW$T$31, DW_AT_address_class(0x16)
DW$T$40	.dwtag  DW_TAG_typedef, DW_AT_name("va_list"), DW_AT_type(*DW$T$31)
	.dwattr DW$T$40, DW_AT_language(DW_LANG_C)
DW$T$39	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$38)
	.dwattr DW$T$39, DW_AT_address_class(0x16)

DW$T$58	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$38)
	.dwattr DW$T$58, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$58, DW_AT_byte_size(0x280)
DW$65	.dwtag  DW_TAG_subrange_type
	.dwattr DW$65, DW_AT_upper_bound(0x7f)
DW$66	.dwtag  DW_TAG_subrange_type
	.dwattr DW$66, DW_AT_upper_bound(0x04)
	.dwendtag DW$T$58


DW$T$59	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$30)
	.dwattr DW$T$59, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$59, DW_AT_byte_size(0x14)
DW$67	.dwtag  DW_TAG_subrange_type
	.dwattr DW$67, DW_AT_upper_bound(0x13)
	.dwendtag DW$T$59

DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x01)
DW$68	.dwtag  DW_TAG_far_type
	.dwattr DW$68, DW_AT_type(*DW$T$20)
DW$T$53	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$53, DW_AT_type(*DW$68)

DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$26, DW_AT_name("GPIO_DATA_REGS")
	.dwattr DW$T$26, DW_AT_byte_size(0x20)
DW$69	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$69, DW_AT_name("GPADAT"), DW_AT_symbol_name("_GPADAT")
	.dwattr DW$69, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$69, DW_AT_accessibility(DW_ACCESS_public)
DW$70	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$70, DW_AT_name("GPASET"), DW_AT_symbol_name("_GPASET")
	.dwattr DW$70, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$70, DW_AT_accessibility(DW_ACCESS_public)
DW$71	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$71, DW_AT_name("GPACLEAR"), DW_AT_symbol_name("_GPACLEAR")
	.dwattr DW$71, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$71, DW_AT_accessibility(DW_ACCESS_public)
DW$72	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$72, DW_AT_name("GPATOGGLE"), DW_AT_symbol_name("_GPATOGGLE")
	.dwattr DW$72, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$72, DW_AT_accessibility(DW_ACCESS_public)
DW$73	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$73, DW_AT_name("GPBDAT"), DW_AT_symbol_name("_GPBDAT")
	.dwattr DW$73, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$73, DW_AT_accessibility(DW_ACCESS_public)
DW$74	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$74, DW_AT_name("GPBSET"), DW_AT_symbol_name("_GPBSET")
	.dwattr DW$74, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$74, DW_AT_accessibility(DW_ACCESS_public)
DW$75	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$75, DW_AT_name("GPBCLEAR"), DW_AT_symbol_name("_GPBCLEAR")
	.dwattr DW$75, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$75, DW_AT_accessibility(DW_ACCESS_public)
DW$76	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$76, DW_AT_name("GPBTOGGLE"), DW_AT_symbol_name("_GPBTOGGLE")
	.dwattr DW$76, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$76, DW_AT_accessibility(DW_ACCESS_public)
DW$77	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$77, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$77, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$77, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$26

DW$T$30	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$30, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$30, DW_AT_byte_size(0x01)
DW$78	.dwtag  DW_TAG_far_type
	.dwattr DW$78, DW_AT_type(*DW$T$30)
DW$T$38	.dwtag  DW_TAG_const_type
	.dwattr DW$T$38, DW_AT_type(*DW$78)

DW$T$25	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$25, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$25, DW_AT_byte_size(0x10)
DW$79	.dwtag  DW_TAG_subrange_type
	.dwattr DW$79, DW_AT_upper_bound(0x0f)
	.dwendtag DW$T$25


DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$20, DW_AT_name("GPADAT_BITS")
	.dwattr DW$T$20, DW_AT_byte_size(0x02)
DW$80	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$80, DW_AT_name("GPIO0"), DW_AT_symbol_name("_GPIO0")
	.dwattr DW$80, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$80, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$80, DW_AT_accessibility(DW_ACCESS_public)
DW$81	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$81, DW_AT_name("GPIO1"), DW_AT_symbol_name("_GPIO1")
	.dwattr DW$81, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$81, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$81, DW_AT_accessibility(DW_ACCESS_public)
DW$82	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$82, DW_AT_name("GPIO2"), DW_AT_symbol_name("_GPIO2")
	.dwattr DW$82, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$82, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$82, DW_AT_accessibility(DW_ACCESS_public)
DW$83	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$83, DW_AT_name("GPIO3"), DW_AT_symbol_name("_GPIO3")
	.dwattr DW$83, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$83, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$83, DW_AT_accessibility(DW_ACCESS_public)
DW$84	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$84, DW_AT_name("GPIO4"), DW_AT_symbol_name("_GPIO4")
	.dwattr DW$84, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$84, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$84, DW_AT_accessibility(DW_ACCESS_public)
DW$85	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$85, DW_AT_name("GPIO5"), DW_AT_symbol_name("_GPIO5")
	.dwattr DW$85, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$85, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$85, DW_AT_accessibility(DW_ACCESS_public)
DW$86	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$86, DW_AT_name("GPIO6"), DW_AT_symbol_name("_GPIO6")
	.dwattr DW$86, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$86, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$86, DW_AT_accessibility(DW_ACCESS_public)
DW$87	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$87, DW_AT_name("GPIO7"), DW_AT_symbol_name("_GPIO7")
	.dwattr DW$87, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$87, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$87, DW_AT_accessibility(DW_ACCESS_public)
DW$88	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$88, DW_AT_name("GPIO8"), DW_AT_symbol_name("_GPIO8")
	.dwattr DW$88, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$88, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$88, DW_AT_accessibility(DW_ACCESS_public)
DW$89	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$89, DW_AT_name("GPIO9"), DW_AT_symbol_name("_GPIO9")
	.dwattr DW$89, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$89, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$89, DW_AT_accessibility(DW_ACCESS_public)
DW$90	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$90, DW_AT_name("GPIO10"), DW_AT_symbol_name("_GPIO10")
	.dwattr DW$90, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$90, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$90, DW_AT_accessibility(DW_ACCESS_public)
DW$91	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$91, DW_AT_name("GPIO11"), DW_AT_symbol_name("_GPIO11")
	.dwattr DW$91, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$91, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$91, DW_AT_accessibility(DW_ACCESS_public)
DW$92	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$92, DW_AT_name("GPIO12"), DW_AT_symbol_name("_GPIO12")
	.dwattr DW$92, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$92, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$92, DW_AT_accessibility(DW_ACCESS_public)
DW$93	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$93, DW_AT_name("GPIO13"), DW_AT_symbol_name("_GPIO13")
	.dwattr DW$93, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$93, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$93, DW_AT_accessibility(DW_ACCESS_public)
DW$94	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$94, DW_AT_name("GPIO14"), DW_AT_symbol_name("_GPIO14")
	.dwattr DW$94, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$94, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$94, DW_AT_accessibility(DW_ACCESS_public)
DW$95	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$95, DW_AT_name("GPIO15"), DW_AT_symbol_name("_GPIO15")
	.dwattr DW$95, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$95, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$95, DW_AT_accessibility(DW_ACCESS_public)
DW$96	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$96, DW_AT_name("GPIO16"), DW_AT_symbol_name("_GPIO16")
	.dwattr DW$96, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$96, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$96, DW_AT_accessibility(DW_ACCESS_public)
DW$97	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$97, DW_AT_name("GPIO17"), DW_AT_symbol_name("_GPIO17")
	.dwattr DW$97, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$97, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$97, DW_AT_accessibility(DW_ACCESS_public)
DW$98	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$98, DW_AT_name("GPIO18"), DW_AT_symbol_name("_GPIO18")
	.dwattr DW$98, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$98, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$98, DW_AT_accessibility(DW_ACCESS_public)
DW$99	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$99, DW_AT_name("GPIO19"), DW_AT_symbol_name("_GPIO19")
	.dwattr DW$99, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$99, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$99, DW_AT_accessibility(DW_ACCESS_public)
DW$100	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$100, DW_AT_name("GPIO20"), DW_AT_symbol_name("_GPIO20")
	.dwattr DW$100, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$100, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$100, DW_AT_accessibility(DW_ACCESS_public)
DW$101	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$101, DW_AT_name("GPIO21"), DW_AT_symbol_name("_GPIO21")
	.dwattr DW$101, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$101, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$101, DW_AT_accessibility(DW_ACCESS_public)
DW$102	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$102, DW_AT_name("GPIO22"), DW_AT_symbol_name("_GPIO22")
	.dwattr DW$102, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$102, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$102, DW_AT_accessibility(DW_ACCESS_public)
DW$103	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$103, DW_AT_name("GPIO23"), DW_AT_symbol_name("_GPIO23")
	.dwattr DW$103, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$103, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$103, DW_AT_accessibility(DW_ACCESS_public)
DW$104	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$104, DW_AT_name("GPIO24"), DW_AT_symbol_name("_GPIO24")
	.dwattr DW$104, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$104, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$104, DW_AT_accessibility(DW_ACCESS_public)
DW$105	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$105, DW_AT_name("GPIO25"), DW_AT_symbol_name("_GPIO25")
	.dwattr DW$105, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$105, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$105, DW_AT_accessibility(DW_ACCESS_public)
DW$106	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$106, DW_AT_name("GPIO26"), DW_AT_symbol_name("_GPIO26")
	.dwattr DW$106, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$106, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$106, DW_AT_accessibility(DW_ACCESS_public)
DW$107	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$107, DW_AT_name("GPIO27"), DW_AT_symbol_name("_GPIO27")
	.dwattr DW$107, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$107, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$107, DW_AT_accessibility(DW_ACCESS_public)
DW$108	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$108, DW_AT_name("GPIO28"), DW_AT_symbol_name("_GPIO28")
	.dwattr DW$108, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$108, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$108, DW_AT_accessibility(DW_ACCESS_public)
DW$109	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$109, DW_AT_name("GPIO29"), DW_AT_symbol_name("_GPIO29")
	.dwattr DW$109, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$109, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$109, DW_AT_accessibility(DW_ACCESS_public)
DW$110	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$110, DW_AT_name("GPIO30"), DW_AT_symbol_name("_GPIO30")
	.dwattr DW$110, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$110, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$110, DW_AT_accessibility(DW_ACCESS_public)
DW$111	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$111, DW_AT_name("GPIO31"), DW_AT_symbol_name("_GPIO31")
	.dwattr DW$111, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$111, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$111, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20


DW$T$22	.dwtag  DW_TAG_union_type
	.dwattr DW$T$22, DW_AT_name("GPADAT_REG")
	.dwattr DW$T$22, DW_AT_byte_size(0x02)
DW$112	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$112, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$112, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$112, DW_AT_accessibility(DW_ACCESS_public)
DW$113	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$113, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$113, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$113, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$22


DW$T$24	.dwtag  DW_TAG_union_type
	.dwattr DW$T$24, DW_AT_name("GPBDAT_REG")
	.dwattr DW$T$24, DW_AT_byte_size(0x02)
DW$114	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$114, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$114, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$114, DW_AT_accessibility(DW_ACCESS_public)
DW$115	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$115, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$115, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$115, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$24

DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32"), DW_AT_type(*DW$T$13)
	.dwattr DW$T$21, DW_AT_language(DW_LANG_C)

DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$23, DW_AT_name("GPBDAT_BITS")
	.dwattr DW$T$23, DW_AT_byte_size(0x02)
DW$116	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$116, DW_AT_name("GPIO32"), DW_AT_symbol_name("_GPIO32")
	.dwattr DW$116, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$116, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$116, DW_AT_accessibility(DW_ACCESS_public)
DW$117	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$117, DW_AT_name("GPIO33"), DW_AT_symbol_name("_GPIO33")
	.dwattr DW$117, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$117, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$117, DW_AT_accessibility(DW_ACCESS_public)
DW$118	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$118, DW_AT_name("GPIO34"), DW_AT_symbol_name("_GPIO34")
	.dwattr DW$118, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$118, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$118, DW_AT_accessibility(DW_ACCESS_public)
DW$119	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$119, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$119, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$119, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$119, DW_AT_accessibility(DW_ACCESS_public)
DW$120	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$120, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$120, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0c)
	.dwattr DW$120, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$120, DW_AT_accessibility(DW_ACCESS_public)
DW$121	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$121, DW_AT_name("rsvd3"), DW_AT_symbol_name("_rsvd3")
	.dwattr DW$121, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x10)
	.dwattr DW$121, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$121, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$23

DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x02)

	.dwattr DW$51, DW_AT_external(0x01)
	.dwattr DW$7, DW_AT_external(0x01)
	.dwattr DW$22, DW_AT_external(0x01)
	.dwattr DW$20, DW_AT_external(0x01)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

DW$CIE	.dwcie 1, 40
	.dwcfa	0x0c, 20, 0
	.dwcfa	0x07, 0
	.dwcfa	0x07, 1
	.dwcfa	0x07, 2
	.dwcfa	0x07, 3
	.dwcfa	0x07, 4
	.dwcfa	0x07, 5
	.dwcfa	0x08, 6
	.dwcfa	0x08, 7
	.dwcfa	0x08, 8
	.dwcfa	0x08, 9
	.dwcfa	0x08, 10
	.dwcfa	0x08, 11
	.dwcfa	0x07, 12
	.dwcfa	0x07, 13
	.dwcfa	0x07, 14
	.dwcfa	0x07, 15
	.dwcfa	0x07, 16
	.dwcfa	0x07, 17
	.dwcfa	0x07, 18
	.dwcfa	0x07, 19
	.dwcfa	0x07, 20
	.dwcfa	0x07, 21
	.dwcfa	0x07, 22
	.dwcfa	0x07, 23
	.dwcfa	0x07, 24
	.dwcfa	0x07, 25
	.dwcfa	0x07, 26
	.dwcfa	0x08, 27
	.dwcfa	0x07, 28
	.dwcfa	0x07, 29
	.dwcfa	0x07, 30
	.dwcfa	0x07, 31
	.dwcfa	0x07, 32
	.dwcfa	0x07, 33
	.dwcfa	0x07, 34
	.dwcfa	0x07, 35
	.dwcfa	0x07, 36
	.dwcfa	0x07, 37
	.dwcfa	0x07, 38
	.dwcfa	0x07, 39
	.dwcfa	0x07, 40

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$122	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$122, DW_AT_location[DW_OP_reg0]
DW$123	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$123, DW_AT_location[DW_OP_reg1]
DW$124	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$124, DW_AT_location[DW_OP_reg2]
DW$125	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$125, DW_AT_location[DW_OP_reg3]
DW$126	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$126, DW_AT_location[DW_OP_reg4]
DW$127	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$127, DW_AT_location[DW_OP_reg5]
DW$128	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$128, DW_AT_location[DW_OP_reg6]
DW$129	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$129, DW_AT_location[DW_OP_reg7]
DW$130	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$130, DW_AT_location[DW_OP_reg8]
DW$131	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$131, DW_AT_location[DW_OP_reg9]
DW$132	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$132, DW_AT_location[DW_OP_reg10]
DW$133	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$133, DW_AT_location[DW_OP_reg11]
DW$134	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$134, DW_AT_location[DW_OP_reg12]
DW$135	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$135, DW_AT_location[DW_OP_reg13]
DW$136	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$136, DW_AT_location[DW_OP_reg14]
DW$137	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$137, DW_AT_location[DW_OP_reg15]
DW$138	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$138, DW_AT_location[DW_OP_reg16]
DW$139	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$139, DW_AT_location[DW_OP_reg17]
DW$140	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$140, DW_AT_location[DW_OP_reg18]
DW$141	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$141, DW_AT_location[DW_OP_reg19]
DW$142	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$142, DW_AT_location[DW_OP_reg20]
DW$143	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$143, DW_AT_location[DW_OP_reg21]
DW$144	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$144, DW_AT_location[DW_OP_reg22]
DW$145	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$145, DW_AT_location[DW_OP_reg23]
DW$146	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$146, DW_AT_location[DW_OP_reg24]
DW$147	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$147, DW_AT_location[DW_OP_reg25]
DW$148	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$148, DW_AT_location[DW_OP_reg26]
DW$149	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$149, DW_AT_location[DW_OP_reg27]
DW$150	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$150, DW_AT_location[DW_OP_reg28]
DW$151	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$151, DW_AT_location[DW_OP_reg29]
DW$152	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$152, DW_AT_location[DW_OP_reg30]
DW$153	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$153, DW_AT_location[DW_OP_reg31]
DW$154	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$154, DW_AT_location[DW_OP_regx 0x20]
DW$155	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$155, DW_AT_location[DW_OP_regx 0x21]
DW$156	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$156, DW_AT_location[DW_OP_regx 0x22]
DW$157	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$157, DW_AT_location[DW_OP_regx 0x23]
DW$158	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$158, DW_AT_location[DW_OP_regx 0x24]
DW$159	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$159, DW_AT_location[DW_OP_regx 0x25]
DW$160	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$160, DW_AT_location[DW_OP_regx 0x26]
DW$161	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$161, DW_AT_location[DW_OP_regx 0x27]
DW$162	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$162, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU

