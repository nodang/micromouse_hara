;***************************************************************
;* TMS320C2000 C/C++ Codegen                         PC v4.1.3 *
;* Date/Time created: Tue Nov 28 13:29:22 2023                 *
;***************************************************************
	.compiler_opts --mem_model:code=flat --mem_model:data=large --silicon_version=28 
FP	.set	XAR2

DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_producer("TMS320C2000 C/C++ Codegen PC v4.1.3 Copyright (c) 1996-2006 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)
;**************************************************************
;* CINIT RECORDS                                              *
;**************************************************************
	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_ADC_channel_cnt$1$0+0,32
	.field  	0,16			; _ADC_channel_cnt$1$0 @ 0

	.sect	".cinit"
	.align	1
	.field  	-2,16
	.field  	_u32_sen_sum1$3$0+0,32
	.field  	0,32			; _u32_sen_sum1$3$0 @ 0

	.sect	".cinit"
	.align	1
	.field  	-2,16
	.field  	_u32_sen_sum0$2$0+0,32
	.field  	0,32			; _u32_sen_sum0$2$0 @ 0

	.sect	".cinit"
	.align	1
	.field  	-IR_1,16
	.field  	_sensor_shoot_$0+0,32
	.field  	16,16			; _sensor_shoot_$0[0] @ 0
	.field  	32,16			; _sensor_shoot_$0[1] @ 16
	.field  	64,16			; _sensor_shoot_$0[2] @ 32
	.field  	128,16			; _sensor_shoot_$0[3] @ 48
	.field  	256,16			; _sensor_shoot_$0[4] @ 64
	.field  	512,16			; _sensor_shoot_$0[5] @ 80
	.field  	1024,16			; _sensor_shoot_$0[6] @ 96
	.field  	2048,16			; _sensor_shoot_$0[7] @ 112
IR_1:	.set	8

	.sect	".cinit"
	.align	1
	.field  	-IR_2,16
	.field  	_sensor_seq_$0+0,32
	.field  	0,16			; _sensor_seq_$0[0] @ 0
	.field  	4369,16			; _sensor_seq_$0[1] @ 16
	.field  	8738,16			; _sensor_seq_$0[2] @ 32
	.field  	13107,16			; _sensor_seq_$0[3] @ 48
	.field  	17476,16			; _sensor_seq_$0[4] @ 64
	.field  	21845,16			; _sensor_seq_$0[5] @ 80
	.field  	26214,16			; _sensor_seq_$0[6] @ 96
	.field  	30583,16			; _sensor_seq_$0[7] @ 112
IR_2:	.set	8

DW$1	.dwtag  DW_TAG_variable, DW_AT_name("g_u16_sensor_num"), DW_AT_symbol_name("_g_u16_sensor_num")
	.dwattr DW$1, DW_AT_type(*DW$T$81)
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
_ADC_channel_cnt$1$0:	.usect	".ebss",1,1,0
DW$2	.dwtag  DW_TAG_variable, DW_AT_name("p_r_back_side_sen"), DW_AT_symbol_name("_p_r_back_side_sen")
	.dwattr DW$2, DW_AT_type(*DW$T$116)
	.dwattr DW$2, DW_AT_declaration(0x01)
	.dwattr DW$2, DW_AT_external(0x01)
_u32_sen_sum1$3$0:	.usect	".ebss",2,1,1
DW$3	.dwtag  DW_TAG_variable, DW_AT_name("p_r_front_side_sen"), DW_AT_symbol_name("_p_r_front_side_sen")
	.dwattr DW$3, DW_AT_type(*DW$T$116)
	.dwattr DW$3, DW_AT_declaration(0x01)
	.dwattr DW$3, DW_AT_external(0x01)
DW$4	.dwtag  DW_TAG_variable, DW_AT_name("p_r_front_sen"), DW_AT_symbol_name("_p_r_front_sen")
	.dwattr DW$4, DW_AT_type(*DW$T$116)
	.dwattr DW$4, DW_AT_declaration(0x01)
	.dwattr DW$4, DW_AT_external(0x01)
DW$5	.dwtag  DW_TAG_variable, DW_AT_name("p_r_45_sen"), DW_AT_symbol_name("_p_r_45_sen")
	.dwattr DW$5, DW_AT_type(*DW$T$116)
	.dwattr DW$5, DW_AT_declaration(0x01)
	.dwattr DW$5, DW_AT_external(0x01)
DW$6	.dwtag  DW_TAG_variable, DW_AT_name("p_l_front_sen"), DW_AT_symbol_name("_p_l_front_sen")
	.dwattr DW$6, DW_AT_type(*DW$T$116)
	.dwattr DW$6, DW_AT_declaration(0x01)
	.dwattr DW$6, DW_AT_external(0x01)

DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("memset"), DW_AT_symbol_name("_memset")
	.dwattr DW$7, DW_AT_type(*DW$T$3)
	.dwattr DW$7, DW_AT_declaration(0x01)
	.dwattr DW$7, DW_AT_external(0x01)
DW$8	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$9	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$10	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$76)
	.dwendtag DW$7

_u32_sen_sum0$2$0:	.usect	".ebss",2,1,1
DW$11	.dwtag  DW_TAG_variable, DW_AT_name("p_l_45_sen"), DW_AT_symbol_name("_p_l_45_sen")
	.dwattr DW$11, DW_AT_type(*DW$T$116)
	.dwattr DW$11, DW_AT_declaration(0x01)
	.dwattr DW$11, DW_AT_external(0x01)
DW$12	.dwtag  DW_TAG_variable, DW_AT_name("p_l_back_side_sen"), DW_AT_symbol_name("_p_l_back_side_sen")
	.dwattr DW$12, DW_AT_type(*DW$T$116)
	.dwattr DW$12, DW_AT_declaration(0x01)
	.dwattr DW$12, DW_AT_external(0x01)

DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("__IQxmpy"), DW_AT_symbol_name("___IQxmpy")
	.dwattr DW$13, DW_AT_type(*DW$T$12)
	.dwattr DW$13, DW_AT_declaration(0x01)
	.dwattr DW$13, DW_AT_external(0x01)
DW$14	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$15	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$16	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$13

DW$17	.dwtag  DW_TAG_variable, DW_AT_name("p_l_front_side_sen"), DW_AT_symbol_name("_p_l_front_side_sen")
	.dwattr DW$17, DW_AT_type(*DW$T$116)
	.dwattr DW$17, DW_AT_declaration(0x01)
	.dwattr DW$17, DW_AT_external(0x01)
_sensor_shoot_$0:	.usect	".ebss",8,1,0
DW$18	.dwtag  DW_TAG_variable, DW_AT_name("sensor_shoot_"), DW_AT_symbol_name("_sensor_shoot_$0")
	.dwattr DW$18, DW_AT_type(*DW$T$82)
	.dwattr DW$18, DW_AT_location[DW_OP_addr _sensor_shoot_$0]
DW$19	.dwtag  DW_TAG_variable, DW_AT_name("CpuTimer2Regs"), DW_AT_symbol_name("_CpuTimer2Regs")
	.dwattr DW$19, DW_AT_type(*DW$T$108)
	.dwattr DW$19, DW_AT_declaration(0x01)
	.dwattr DW$19, DW_AT_external(0x01)
_sensor_seq_$0:	.usect	".ebss",8,1,0
DW$20	.dwtag  DW_TAG_variable, DW_AT_name("sensor_seq_"), DW_AT_symbol_name("_sensor_seq_$0")
	.dwattr DW$20, DW_AT_type(*DW$T$82)
	.dwattr DW$20, DW_AT_location[DW_OP_addr _sensor_seq_$0]
DW$21	.dwtag  DW_TAG_variable, DW_AT_name("CpuTimer0Regs"), DW_AT_symbol_name("_CpuTimer0Regs")
	.dwattr DW$21, DW_AT_type(*DW$T$108)
	.dwattr DW$21, DW_AT_declaration(0x01)
	.dwattr DW$21, DW_AT_external(0x01)
DW$22	.dwtag  DW_TAG_variable, DW_AT_name("AdcMirror"), DW_AT_symbol_name("_AdcMirror")
	.dwattr DW$22, DW_AT_type(*DW$T$105)
	.dwattr DW$22, DW_AT_declaration(0x01)
	.dwattr DW$22, DW_AT_external(0x01)
DW$23	.dwtag  DW_TAG_variable, DW_AT_name("PieCtrlRegs"), DW_AT_symbol_name("_PieCtrlRegs")
	.dwattr DW$23, DW_AT_type(*DW$T$112)
	.dwattr DW$23, DW_AT_declaration(0x01)
	.dwattr DW$23, DW_AT_external(0x01)
DW$24	.dwtag  DW_TAG_variable, DW_AT_name("AdcRegs"), DW_AT_symbol_name("_AdcRegs")
	.dwattr DW$24, DW_AT_type(*DW$T$103)
	.dwattr DW$24, DW_AT_declaration(0x01)
	.dwattr DW$24, DW_AT_external(0x01)
DW$25	.dwtag  DW_TAG_variable, DW_AT_name("GpioDataRegs"), DW_AT_symbol_name("_GpioDataRegs")
	.dwattr DW$25, DW_AT_type(*DW$T$93)
	.dwattr DW$25, DW_AT_declaration(0x01)
	.dwattr DW$25, DW_AT_external(0x01)
DW$26	.dwtag  DW_TAG_variable, DW_AT_name("s_sen"), DW_AT_symbol_name("_s_sen")
	.dwattr DW$26, DW_AT_type(*DW$T$115)
	.dwattr DW$26, DW_AT_declaration(0x01)
	.dwattr DW$26, DW_AT_external(0x01)
;	..\Compiler\bin\opt2000.exe C:\Users\노호진\AppData\Local\Temp\TI84810 C:\Users\노호진\AppData\Local\Temp\TI8484 
;	..\Compiler\bin\ac2000.exe --keep_unneeded_types -D_INLINE -DLARGE_MODEL -I..\include --version=28 --keep_unneeded_types --mem_model:code=flat --mem_model:data=large -m --i_output_file C:\Users\노호진\AppData\Local\Temp\TI8482 --template_info_file C:\Users\노호진\AppData\Local\Temp\TI8486 --object_file sensor.obj --embed_opts 10 --call_assumptions=0 --mem_model:code=flat --mem_model:data=large --opt_for_speed --opt_level=3 --optimizer_comments --optimizer_interlist --program_level_compile 
	.sect	".text"
	.global	_init_sensor

DW$27	.dwtag  DW_TAG_subprogram, DW_AT_name("init_sensor"), DW_AT_symbol_name("_init_sensor")
	.dwattr DW$27, DW_AT_low_pc(_init_sensor)
	.dwattr DW$27, DW_AT_high_pc(0x00)
	.dwattr DW$27, DW_AT_begin_file("sensor.c")
	.dwattr DW$27, DW_AT_begin_line(0x4f)
	.dwattr DW$27, DW_AT_begin_column(0x06)
	.dwpsn	"sensor.c",80,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _init_sensor                  FR SIZE:   0           *
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
_init_sensor:
;*** 81	-----------------------    p_r_back_side_sen = C$1 = &s_sen[0];
;*** 82	-----------------------    p_r_front_side_sen = &C$1[1];
;*** 83	-----------------------    p_r_45_sen = &C$1[2];
;*** 84	-----------------------    p_r_front_sen = &C$1[3];
;*** 85	-----------------------    p_l_front_sen = &C$1[4];
;*** 86	-----------------------    p_l_45_sen = &C$1[5];
;*** 87	-----------------------    p_l_front_side_sen = &C$1[6];
;*** 88	-----------------------    p_l_back_side_sen = &C$1[7];
;*** 90	-----------------------    memset((void *)C$1, 0, 240uL);
;*** 92	-----------------------    g_u16_sensor_num = 0u;
;*** 92	-----------------------    return;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
;* AR4   assigned to C$1
DW$28	.dwtag  DW_TAG_variable, DW_AT_name("C$1"), DW_AT_symbol_name("C$1")
	.dwattr DW$28, DW_AT_type(*DW$T$118)
	.dwattr DW$28, DW_AT_location[DW_OP_reg12]
	.dwpsn	"sensor.c",81,2
        MOVL      XAR4,#_s_sen          ; |81| 
        MOVW      DP,#_p_r_back_side_sen
        MOVL      @_p_r_back_side_sen,XAR4 ; |81| 
	.dwpsn	"sensor.c",82,2
        MOVB      ACC,#30
        MOVW      DP,#_p_r_front_side_sen
        ADDL      ACC,XAR4
        MOVL      @_p_r_front_side_sen,ACC ; |82| 
	.dwpsn	"sensor.c",83,2
        MOVB      ACC,#60
        MOVW      DP,#_p_r_45_sen
        ADDL      ACC,XAR4
        MOVL      @_p_r_45_sen,ACC      ; |83| 
	.dwpsn	"sensor.c",84,2
        MOVB      ACC,#90
        MOVW      DP,#_p_r_front_sen
        ADDL      ACC,XAR4
        MOVL      @_p_r_front_sen,ACC   ; |84| 
	.dwpsn	"sensor.c",85,2
        MOVB      ACC,#120
        MOVW      DP,#_p_l_front_sen
        ADDL      ACC,XAR4
        MOVL      @_p_l_front_sen,ACC   ; |85| 
	.dwpsn	"sensor.c",86,2
        MOVB      ACC,#150
        MOVW      DP,#_p_l_45_sen
        ADDL      ACC,XAR4
        MOVL      @_p_l_45_sen,ACC      ; |86| 
	.dwpsn	"sensor.c",87,2
        MOVB      ACC,#180
        MOVW      DP,#_p_l_front_side_sen
        ADDL      ACC,XAR4
        MOVL      @_p_l_front_side_sen,ACC ; |87| 
	.dwpsn	"sensor.c",88,2
        MOVB      ACC,#210
        MOVW      DP,#_p_l_back_side_sen
        ADDL      ACC,XAR4
        MOVL      @_p_l_back_side_sen,ACC ; |88| 
	.dwpsn	"sensor.c",90,2
        MOVB      XAR5,#0
        MOVB      ACC,#240
        LCR       #_memset              ; |90| 
        ; call occurs [#_memset] ; |90| 
	.dwpsn	"sensor.c",92,2
        MOVW      DP,#_g_u16_sensor_num
        MOV       @_g_u16_sensor_num,#0 ; |92| 
	.dwpsn	"sensor.c",93,1
        LRETR
        ; return occurs
	.dwattr DW$27, DW_AT_end_file("sensor.c")
	.dwattr DW$27, DW_AT_end_line(0x5d)
	.dwattr DW$27, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$27

	.sect	".text"
	.global	_set_sensor

DW$29	.dwtag  DW_TAG_subprogram, DW_AT_name("set_sensor"), DW_AT_symbol_name("_set_sensor")
	.dwattr DW$29, DW_AT_low_pc(_set_sensor)
	.dwattr DW$29, DW_AT_high_pc(0x00)
	.dwattr DW$29, DW_AT_begin_file("sensor.c")
	.dwattr DW$29, DW_AT_begin_line(0x164)
	.dwattr DW$29, DW_AT_begin_column(0x06)
	.dwpsn	"sensor.c",357,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _set_sensor                   FR SIZE:   0           *
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
_set_sensor:
;*** 358	-----------------------    init_sensor();
;*** 360	-----------------------    *(&CpuTimer2Regs+4L) &= 0xffefu;
;*** 366	-----------------------    *(&CpuTimer2Regs+4L) |= 0x10u;
;*** 366	-----------------------    return;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
	.dwpsn	"sensor.c",358,2
        LCR       #_init_sensor         ; |358| 
        ; call occurs [#_init_sensor] ; |358| 
	.dwpsn	"sensor.c",360,2
        MOVW      DP,#_CpuTimer2Regs+4
        AND       @_CpuTimer2Regs+4,#0xffef ; |360| 
	.dwpsn	"sensor.c",366,2
        OR        @_CpuTimer2Regs+4,#0x0010 ; |366| 
	.dwpsn	"sensor.c",367,1
        LRETR
        ; return occurs
	.dwattr DW$29, DW_AT_end_file("sensor.c")
	.dwattr DW$29, DW_AT_end_line(0x16f)
	.dwattr DW$29, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$29

	.sect	".text"
	.global	_sensor_timer0_ISR

DW$30	.dwtag  DW_TAG_subprogram, DW_AT_name("sensor_timer0_ISR"), DW_AT_symbol_name("_sensor_timer0_ISR")
	.dwattr DW$30, DW_AT_low_pc(_sensor_timer0_ISR)
	.dwattr DW$30, DW_AT_high_pc(0x00)
	.dwattr DW$30, DW_AT_begin_file("sensor.c")
	.dwattr DW$30, DW_AT_begin_line(0xc1)
	.dwattr DW$30, DW_AT_begin_column(0x10)
	.dwattr DW$30, DW_AT_TI_interrupt(0x01)
	.dwpsn	"sensor.c",194,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _sensor_timer0_ISR            FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  6 SOE     *
;***************************************************************


;***************************************************************
;*                                                             *
;* Using -g (debug) with optimization (-o3) may disable key op *
;*                                                             *
;***************************************************************
_sensor_timer0_ISR:
;*** 195	-----------------------    PieCtrlRegs.PIEACK.all = 1u;
;*** 197	-----------------------    *(&GpioDataRegs+3L) |= 0x800u;
;*** 199	-----------------------    C$2 = &sensor_shoot_[0];
;*** 199	-----------------------    GpioDataRegs.GPASET.all = C$2[g_u16_sensor_num]|C$2[-g_u16_sensor_num+7];
;*** 201	-----------------------    C$1 = &sensor_seq_[0];
;*** 201	-----------------------    AdcRegs.ADCCHSELSEQ1.all = C$1[g_u16_sensor_num];
;*** 202	-----------------------    AdcRegs.ADCCHSELSEQ2.all = C$1[-g_u16_sensor_num+7];
;*** 203	-----------------------    AdcRegs.ADCCHSELSEQ3.all = C$1[g_u16_sensor_num];
;*** 204	-----------------------    AdcRegs.ADCCHSELSEQ4.all = C$1[-g_u16_sensor_num+7];
;*** 206	-----------------------    *(&AdcRegs+1L) |= 0x2000u;
;*** 206	-----------------------    return;
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        PUSH      AR1H:AR0H
	.dwcfa	0x80, 5, 2
	.dwcfa	0x80, 7, 3
	.dwcfa	0x1d, -4
        MOVL      *SP++,XAR4
	.dwcfa	0x80, 12, 4
	.dwcfa	0x80, 13, 5
	.dwcfa	0x1d, -6
        MOVL      *SP++,XAR5
	.dwcfa	0x80, 14, 6
	.dwcfa	0x80, 15, 7
	.dwcfa	0x1d, -8
        CLRC      PAGE0,OVM
        CLRC      AMODE
;* AR4   assigned to C$1
DW$31	.dwtag  DW_TAG_variable, DW_AT_name("C$1"), DW_AT_symbol_name("C$1")
	.dwattr DW$31, DW_AT_type(*DW$T$85)
	.dwattr DW$31, DW_AT_location[DW_OP_reg12]
;* AR4   assigned to C$2
DW$32	.dwtag  DW_TAG_variable, DW_AT_name("C$2"), DW_AT_symbol_name("C$2")
	.dwattr DW$32, DW_AT_type(*DW$T$85)
	.dwattr DW$32, DW_AT_location[DW_OP_reg12]
	.dwpsn	"sensor.c",195,2
        MOVW      DP,#_PieCtrlRegs+1
        MOV       @_PieCtrlRegs+1,#1    ; |195| 
	.dwpsn	"sensor.c",197,2
        MOVW      DP,#_GpioDataRegs+3
        OR        @_GpioDataRegs+3,#0x0800 ; |197| 
	.dwpsn	"sensor.c",199,2
        MOVL      XAR4,#_sensor_shoot_$0 ; |199| 
        MOVW      DP,#_g_u16_sensor_num
        MOVL      ACC,XAR4              ; |199| 
        MOVZ      AR0,@_g_u16_sensor_num ; |199| 
        SUBU      ACC,@_g_u16_sensor_num ; |199| 
        MOVL      XAR5,ACC              ; |199| 
        MOV       AL,*+XAR5[7]          ; |199| 
        OR        AL,*+XAR4[AR0]        ; |199| 
        MOVW      DP,#_GpioDataRegs+2
        MOVU      ACC,AL
        MOVL      @_GpioDataRegs+2,ACC  ; |199| 
	.dwpsn	"sensor.c",201,2
        MOVW      DP,#_g_u16_sensor_num
        MOVZ      AR0,@_g_u16_sensor_num ; |201| 
        MOVL      XAR4,#_sensor_seq_$0  ; |201| 
        MOVW      DP,#_AdcRegs+3
        MOV       AL,*+XAR4[AR0]        ; |201| 
        MOV       @_AdcRegs+3,AL        ; |201| 
	.dwpsn	"sensor.c",202,2
        MOVW      DP,#_g_u16_sensor_num
        MOVL      ACC,XAR4              ; |202| 
        SUBU      ACC,@_g_u16_sensor_num ; |202| 
        MOVL      XAR5,ACC              ; |202| 
        MOVW      DP,#_AdcRegs+4
        MOV       AL,*+XAR5[7]          ; |202| 
        MOV       @_AdcRegs+4,AL        ; |202| 
	.dwpsn	"sensor.c",203,2
        MOVW      DP,#_g_u16_sensor_num
        MOVZ      AR0,@_g_u16_sensor_num ; |203| 
        MOVW      DP,#_AdcRegs+5
        MOV       AL,*+XAR4[AR0]        ; |203| 
        MOV       @_AdcRegs+5,AL        ; |203| 
	.dwpsn	"sensor.c",204,2
        MOVW      DP,#_g_u16_sensor_num
        MOVL      ACC,XAR4              ; |204| 
        SUBU      ACC,@_g_u16_sensor_num ; |204| 
        MOVL      XAR4,ACC              ; |204| 
        MOVW      DP,#_AdcRegs+6
        MOV       AL,*+XAR4[7]          ; |204| 
        MOV       @_AdcRegs+6,AL        ; |204| 
	.dwpsn	"sensor.c",206,2
        OR        @_AdcRegs+1,#0x2000   ; |206| 
	.dwpsn	"sensor.c",207,1
	.dwcfa	0x1d, -8
        MOVL      XAR5,*--SP
	.dwcfa	0x1d, -6
	.dwcfa	0xc0, 14
        MOVL      XAR4,*--SP
	.dwcfa	0x1d, -4
	.dwcfa	0xc0, 12
        POP       AR1H:AR0H
	.dwcfa	0x1d, -2
	.dwcfa	0xc0, 5
	.dwcfa	0xc0, 7
        NASP
        IRET
        ; return occurs
	.dwattr DW$30, DW_AT_end_file("sensor.c")
	.dwattr DW$30, DW_AT_end_line(0xcf)
	.dwattr DW$30, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$30

	.sect	".text"
	.global	_adc_ISR

DW$33	.dwtag  DW_TAG_subprogram, DW_AT_name("adc_ISR"), DW_AT_symbol_name("_adc_ISR")
	.dwattr DW$33, DW_AT_low_pc(_adc_ISR)
	.dwattr DW$33, DW_AT_high_pc(0x00)
	.dwattr DW$33, DW_AT_begin_file("sensor.c")
	.dwattr DW$33, DW_AT_begin_line(0xd1)
	.dwattr DW$33, DW_AT_begin_column(0x10)
	.dwattr DW$33, DW_AT_TI_interrupt(0x01)
	.dwpsn	"sensor.c",210,1

	.dwfde DW$CIE
DW$34	.dwtag  DW_TAG_variable, DW_AT_name("ADC_channel_cnt"), DW_AT_symbol_name("_ADC_channel_cnt$1$0")
	.dwattr DW$34, DW_AT_type(*DW$T$19)
	.dwattr DW$34, DW_AT_location[DW_OP_addr _ADC_channel_cnt$1$0]
DW$35	.dwtag  DW_TAG_variable, DW_AT_name("u32_sen_sum1"), DW_AT_symbol_name("_u32_sen_sum1$3$0")
	.dwattr DW$35, DW_AT_type(*DW$T$21)
	.dwattr DW$35, DW_AT_location[DW_OP_addr _u32_sen_sum1$3$0]
DW$36	.dwtag  DW_TAG_variable, DW_AT_name("u32_sen_sum0"), DW_AT_symbol_name("_u32_sen_sum0$2$0")
	.dwattr DW$36, DW_AT_type(*DW$T$21)
	.dwattr DW$36, DW_AT_location[DW_OP_addr _u32_sen_sum0$2$0]

;***************************************************************
;* FNAME: _adc_ISR                      FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto, 10 SOE     *
;***************************************************************


;***************************************************************
;*                                                             *
;* Using -g (debug) with optimization (-o3) may disable key op *
;*                                                             *
;***************************************************************
_adc_ISR:
;*** 215	-----------------------    PieCtrlRegs.PIEACK.all = 1u;
;*** 217	-----------------------    if ( ADC_channel_cnt ) goto g3;
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        PUSH      AR1H:AR0H
	.dwcfa	0x80, 5, 2
	.dwcfa	0x80, 7, 3
	.dwcfa	0x1d, -4
        MOVL      *SP++,XAR4
	.dwcfa	0x80, 12, 4
	.dwcfa	0x80, 13, 5
	.dwcfa	0x1d, -6
        MOVL      *SP++,XAR5
	.dwcfa	0x80, 14, 6
	.dwcfa	0x80, 15, 7
	.dwcfa	0x1d, -8
        MOVL      *SP++,XAR6
	.dwcfa	0x80, 16, 8
	.dwcfa	0x80, 17, 9
	.dwcfa	0x1d, -10
        MOVL      *SP++,XT
	.dwcfa	0x80, 21, 10
	.dwcfa	0x80, 22, 11
	.dwcfa	0x1d, -12
        SPM       0
        CLRC      PAGE0,OVM
        CLRC      AMODE
;* AR4   assigned to C$1
DW$37	.dwtag  DW_TAG_variable, DW_AT_name("C$1"), DW_AT_symbol_name("C$1")
	.dwattr DW$37, DW_AT_type(*DW$T$118)
	.dwattr DW$37, DW_AT_location[DW_OP_reg12]
;* AR6   assigned to C$2
DW$38	.dwtag  DW_TAG_variable, DW_AT_name("C$2"), DW_AT_symbol_name("C$2")
	.dwattr DW$38, DW_AT_type(*DW$T$11)
	.dwattr DW$38, DW_AT_location[DW_OP_reg16]
;* AR4   assigned to C$3
DW$39	.dwtag  DW_TAG_variable, DW_AT_name("C$3"), DW_AT_symbol_name("C$3")
	.dwattr DW$39, DW_AT_type(*DW$T$96)
	.dwattr DW$39, DW_AT_location[DW_OP_reg12]
;* AR4   assigned to C$4
DW$40	.dwtag  DW_TAG_variable, DW_AT_name("C$4"), DW_AT_symbol_name("C$4")
	.dwattr DW$40, DW_AT_type(*DW$T$85)
	.dwattr DW$40, DW_AT_location[DW_OP_reg12]
	.dwpsn	"sensor.c",215,2
        MOVW      DP,#_PieCtrlRegs+1
        MOV       @_PieCtrlRegs+1,#1    ; |215| 
	.dwpsn	"sensor.c",217,2
        MOVW      DP,#_ADC_channel_cnt$1$0
        MOV       AL,@_ADC_channel_cnt$1$0 ; |217| 
        BF        L1,NEQ                ; |217| 
        ; branchcc occurs ; |217| 
;*** 218	-----------------------    C$4 = &sensor_shoot_[0];
;*** 218	-----------------------    GpioDataRegs.GPACLEAR.all = C$4[g_u16_sensor_num]|C$4[-g_u16_sensor_num+7];
	.dwpsn	"sensor.c",218,3
        MOVW      DP,#_g_u16_sensor_num
        MOVL      XAR4,#_sensor_shoot_$0 ; |218| 
        MOVZ      AR0,@_g_u16_sensor_num ; |218| 
        MOVL      ACC,XAR4              ; |218| 
        SUBU      ACC,@_g_u16_sensor_num ; |218| 
        MOVL      XAR5,ACC              ; |218| 
        MOV       AL,*+XAR5[7]          ; |218| 
        MOVW      DP,#_GpioDataRegs+4
        OR        AL,*+XAR4[AR0]        ; |218| 
        MOVU      ACC,AL
        MOVL      @_GpioDataRegs+4,ACC  ; |218| 
L1:    
;***	-----------------------g3:
;*** 220	-----------------------    u32_sen_sum0 += AdcMirror.ADCRESULT0;
;*** 221	-----------------------    u32_sen_sum0 += AdcMirror.ADCRESULT1;
;*** 222	-----------------------    u32_sen_sum0 += AdcMirror.ADCRESULT2;
;*** 223	-----------------------    u32_sen_sum0 += AdcMirror.ADCRESULT3;
;*** 225	-----------------------    u32_sen_sum1 += AdcMirror.ADCRESULT4;
;*** 226	-----------------------    u32_sen_sum1 += AdcMirror.ADCRESULT5;
;*** 227	-----------------------    u32_sen_sum1 += AdcMirror.ADCRESULT6;
;*** 228	-----------------------    u32_sen_sum1 += AdcMirror.ADCRESULT7;
;*** 230	-----------------------    u32_sen_sum0 += AdcMirror.ADCRESULT8;
;*** 231	-----------------------    u32_sen_sum0 += AdcMirror.ADCRESULT9;
;*** 232	-----------------------    u32_sen_sum0 += AdcMirror.ADCRESULT10;
;*** 233	-----------------------    u32_sen_sum0 += AdcMirror.ADCRESULT11;
;*** 235	-----------------------    u32_sen_sum1 += AdcMirror.ADCRESULT12;
;*** 236	-----------------------    u32_sen_sum1 += AdcMirror.ADCRESULT13;
;*** 237	-----------------------    u32_sen_sum1 += AdcMirror.ADCRESULT14;
;*** 238	-----------------------    u32_sen_sum1 += AdcMirror.ADCRESULT15;
;*** 240	-----------------------    C$3 = &AdcRegs;
;*** 240	-----------------------    ((volatile unsigned *)C$3)[1] |= 0x4000u;
;*** 241	-----------------------    *((volatile struct _ADCST_BITS *)C$3+25L) |= 0x10u;
;*** 243	-----------------------    if ( ADC_channel_cnt < 2u ) goto g8;
	.dwpsn	"sensor.c",220,2
        MOVW      DP,#_AdcMirror
        MOVU      ACC,@_AdcMirror
        MOVW      DP,#_u32_sen_sum0$2$0
        ADDL      @_u32_sen_sum0$2$0,ACC ; |220| 
	.dwpsn	"sensor.c",221,2
        MOVW      DP,#_AdcMirror+1
        MOVU      ACC,@_AdcMirror+1
        MOVW      DP,#_u32_sen_sum0$2$0
        ADDL      @_u32_sen_sum0$2$0,ACC ; |221| 
	.dwpsn	"sensor.c",222,2
        MOVW      DP,#_AdcMirror+2
        MOVU      ACC,@_AdcMirror+2
        MOVW      DP,#_u32_sen_sum0$2$0
        ADDL      @_u32_sen_sum0$2$0,ACC ; |222| 
	.dwpsn	"sensor.c",223,2
        MOVW      DP,#_AdcMirror+3
        MOVU      ACC,@_AdcMirror+3
        MOVW      DP,#_u32_sen_sum0$2$0
        ADDL      @_u32_sen_sum0$2$0,ACC ; |223| 
	.dwpsn	"sensor.c",225,2
        MOVW      DP,#_AdcMirror+4
        MOVU      ACC,@_AdcMirror+4
        MOVW      DP,#_u32_sen_sum1$3$0
        ADDL      @_u32_sen_sum1$3$0,ACC ; |225| 
	.dwpsn	"sensor.c",226,2
        MOVW      DP,#_AdcMirror+5
        MOVU      ACC,@_AdcMirror+5
        MOVW      DP,#_u32_sen_sum1$3$0
        ADDL      @_u32_sen_sum1$3$0,ACC ; |226| 
	.dwpsn	"sensor.c",227,2
        MOVW      DP,#_AdcMirror+6
        MOVU      ACC,@_AdcMirror+6
        MOVW      DP,#_u32_sen_sum1$3$0
        ADDL      @_u32_sen_sum1$3$0,ACC ; |227| 
	.dwpsn	"sensor.c",228,2
        MOVW      DP,#_AdcMirror+7
        MOVU      ACC,@_AdcMirror+7
        MOVW      DP,#_u32_sen_sum1$3$0
        ADDL      @_u32_sen_sum1$3$0,ACC ; |228| 
	.dwpsn	"sensor.c",230,2
        MOVW      DP,#_AdcMirror+8
        MOVU      ACC,@_AdcMirror+8
        MOVW      DP,#_u32_sen_sum0$2$0
        ADDL      @_u32_sen_sum0$2$0,ACC ; |230| 
	.dwpsn	"sensor.c",231,2
        MOVW      DP,#_AdcMirror+9
        MOVU      ACC,@_AdcMirror+9
        MOVW      DP,#_u32_sen_sum0$2$0
        ADDL      @_u32_sen_sum0$2$0,ACC ; |231| 
	.dwpsn	"sensor.c",232,2
        MOVW      DP,#_AdcMirror+10
        MOVU      ACC,@_AdcMirror+10
        MOVW      DP,#_u32_sen_sum0$2$0
        ADDL      @_u32_sen_sum0$2$0,ACC ; |232| 
	.dwpsn	"sensor.c",233,2
        MOVW      DP,#_AdcMirror+11
        MOVU      ACC,@_AdcMirror+11
        MOVW      DP,#_u32_sen_sum0$2$0
        ADDL      @_u32_sen_sum0$2$0,ACC ; |233| 
	.dwpsn	"sensor.c",235,2
        MOVW      DP,#_AdcMirror+12
        MOVU      ACC,@_AdcMirror+12
        MOVW      DP,#_u32_sen_sum1$3$0
        ADDL      @_u32_sen_sum1$3$0,ACC ; |235| 
	.dwpsn	"sensor.c",236,2
        MOVW      DP,#_AdcMirror+13
        MOVU      ACC,@_AdcMirror+13
        MOVW      DP,#_u32_sen_sum1$3$0
        ADDL      @_u32_sen_sum1$3$0,ACC ; |236| 
	.dwpsn	"sensor.c",237,2
        MOVW      DP,#_AdcMirror+14
        MOVU      ACC,@_AdcMirror+14
        MOVW      DP,#_u32_sen_sum1$3$0
        ADDL      @_u32_sen_sum1$3$0,ACC ; |237| 
	.dwpsn	"sensor.c",238,2
        MOVW      DP,#_AdcMirror+15
        MOVU      ACC,@_AdcMirror+15
        MOVW      DP,#_u32_sen_sum1$3$0
        ADDL      @_u32_sen_sum1$3$0,ACC ; |238| 
	.dwpsn	"sensor.c",240,2
        MOVL      XAR4,#_AdcRegs        ; |240| 
        OR        *+XAR4[1],#0x4000     ; |240| 
	.dwpsn	"sensor.c",241,2
        MOVB      ACC,#25
        ADDL      ACC,XAR4
        MOVL      XAR4,ACC              ; |241| 
        OR        *+XAR4[0],#0x0010     ; |241| 
	.dwpsn	"sensor.c",243,2
        MOV       AL,@_ADC_channel_cnt$1$0 ; |243| 
        CMPB      AL,#2                 ; |243| 
        BF        L4,LO                 ; |243| 
        ; branchcc occurs ; |243| 
;*** 253	-----------------------    ADC_channel_cnt = 0u;
;*** 254	-----------------------    C$2 = (unsigned)(u32_sen_sum0>>5);
;*** 254	-----------------------    C$1 = &s_sen[0];
;*** 254	-----------------------    (C$1[(long)g_u16_sensor_num]).u16_value = C$2;
;*** 255	-----------------------    (C$1[(long)(7u-g_u16_sensor_num)]).u16_value = C$2;
;*** 256	-----------------------    u32_sen_sum0 = u32_sen_sum1 = 0uL;
;*** 262	-----------------------    (C$1[(long)g_u16_sensor_num]).q17_lpf_out_data_yet = (C$1[(long)g_u16_sensor_num]).q17_lpf_out_data;
;*** 263	-----------------------    (C$1[(long)g_u16_sensor_num]).q17_lpf_out_data = __IQxmpy(32715568L, (C$1[(long)g_u16_sensor_num]).q17_lpf_in_data+((long)(C$1[(long)g_u16_sensor_num]).u16_value<<17), 2)-__IQxmpy((-1008310656L), (C$1[(long)g_u16_sensor_num]).q17_lpf_out_data, 2);
;*** 265	-----------------------    (C$1[(long)g_u16_sensor_num]).q17_lpf_in_data = (long)(C$1[(long)g_u16_sensor_num]).u16_value<<17;
;*** 268	-----------------------    (C$1[(long)g_u16_sensor_num]).q17_lpf_out_data;
;*** 271	-----------------------    (C$1[(long)g_u16_sensor_num]).q17_lpf_in_data_diff = (C$1[(long)g_u16_sensor_num]).q17_lpf_out_data-(C$1[(long)g_u16_sensor_num]).q17_lpf_out_data_yet;
;*** 272	-----------------------    (C$1[(long)g_u16_sensor_num]).q17_lpf_out_data_diff = __IQxmpy(78339832L, (C$1[(long)g_u16_sensor_num]).q17_lpf_in_data_diff+(C$1[(long)g_u16_sensor_num]).q17_lpf_in_data_diff_yet, 2)-__IQxmpy((-917062144L), (C$1[(long)g_u16_sensor_num]).q17_lpf_out_data_diff, 2);
;*** 274	-----------------------    (C$1[(long)g_u16_sensor_num]).q17_lpf_in_data_diff_yet = (C$1[(long)g_u16_sensor_num]).q17_lpf_in_data_diff;
;*** 277	-----------------------    (C$1[(long)(7u-g_u16_sensor_num)]).q17_lpf_out_data_yet = (C$1[(long)(7u-g_u16_sensor_num)]).q17_lpf_out_data;
;*** 278	-----------------------    (C$1[(long)(7u-g_u16_sensor_num)]).q17_lpf_out_data = __IQxmpy(32715568L, (C$1[(long)(7u-g_u16_sensor_num)]).q17_lpf_in_data+((long)(C$1[(long)(7u-g_u16_sensor_num)]).u16_value<<17), 2)-__IQxmpy((-1008310656L), (C$1[(long)(7u-g_u16_sensor_num)]).q17_lpf_out_data, 2);
;*** 280	-----------------------    (C$1[(long)(7u-g_u16_sensor_num)]).q17_lpf_in_data = (long)(C$1[(long)(7u-g_u16_sensor_num)]).u16_value<<17;
;*** 283	-----------------------    (C$1[(long)(7u-g_u16_sensor_num)]).q17_lpf_out_data;
;*** 286	-----------------------    (C$1[(long)(7u-g_u16_sensor_num)]).q17_lpf_in_data_diff = (C$1[(long)(7u-g_u16_sensor_num)]).q17_lpf_out_data-(C$1[(long)(7u-g_u16_sensor_num)]).q17_lpf_out_data_yet;
;*** 287	-----------------------    (C$1[(long)(7u-g_u16_sensor_num)]).q17_lpf_out_data_diff = __IQxmpy(78339832L, (C$1[(long)(7u-g_u16_sensor_num)]).q17_lpf_in_data_diff+(C$1[(long)(7u-g_u16_sensor_num)]).q17_lpf_in_data_diff_yet, 2)-__IQxmpy((-917062144L), (C$1[(long)(7u-g_u16_sensor_num)]).q17_lpf_out_data_diff, 2);
;*** 289	-----------------------    (C$1[(long)(7u-g_u16_sensor_num)]).q17_lpf_in_data_diff_yet = (C$1[(long)(7u-g_u16_sensor_num)]).q17_lpf_in_data_diff;
;*** 326	-----------------------    if ( g_u16_sensor_num < 3u ) goto g6;
	.dwpsn	"sensor.c",253,3
        MOV       @_ADC_channel_cnt$1$0,#0 ; |253| 
	.dwpsn	"sensor.c",254,3
        CLRC      SXM
        MOVL      ACC,@_u32_sen_sum0$2$0 ; |254| 
        MOVL      XAR4,#_s_sen          ; |254| 
        MOV       T,#30                 ; |254| 
        SFR       ACC,5                 ; |254| 
        MOVL      XAR5,XAR4             ; |254| 
        MOVZ      AR6,AL                ; |254| 
        MOVW      DP,#_g_u16_sensor_num
        MPYXU     ACC,T,@_g_u16_sensor_num ; |254| 
        ADDL      XAR5,ACC
        MOV       *+XAR5[0],AR6         ; |254| 
	.dwpsn	"sensor.c",255,3
        MOVB      AH,#7                 ; |255| 
        MOVL      XAR5,XAR4             ; |255| 
        MOV       T,#30                 ; |255| 
        SUB       AH,@_g_u16_sensor_num ; |255| 
        MPYXU     ACC,T,AH              ; |255| 
        ADDL      XAR5,ACC
        MOV       *+XAR5[0],AR6         ; |255| 
	.dwpsn	"sensor.c",256,3
        MOVW      DP,#_u32_sen_sum1$3$0
        MOVB      ACC,#0
        MOVL      @_u32_sen_sum0$2$0,ACC ; |256| 
        MOVL      @_u32_sen_sum1$3$0,ACC ; |256| 
	.dwpsn	"sensor.c",262,3
        MOVL      XAR5,XAR4             ; |262| 
        MOV       T,#30                 ; |262| 
        MOVW      DP,#_g_u16_sensor_num
        MPYXU     ACC,T,@_g_u16_sensor_num ; |262| 
        ADDL      XAR5,ACC
        MOVB      XAR0,#20              ; |262| 
        MOVL      XAR6,*+XAR5[AR0]      ; |262| 
        MOVL      XAR5,XAR4             ; |262| 
        MOV       T,#30                 ; |262| 
        MPYXU     ACC,T,@_g_u16_sensor_num ; |262| 
        ADDL      XAR5,ACC
        MOVB      XAR0,#18              ; |262| 
        MOVL      *+XAR5[AR0],XAR6      ; |262| 
	.dwpsn	"sensor.c",263,3
        MOVL      XAR5,XAR4             ; |263| 
        MOV       T,#30                 ; |263| 
        MPYXU     ACC,T,@_g_u16_sensor_num ; |263| 
        ADDL      XAR5,ACC
        MOVZ      AR6,*+XAR5[0]
        MOV       T,#17                 ; |263| 
        MOVL      ACC,XAR6              ; |263| 
        LSLL      ACC,T                 ; |263| 
        MOV       T,#30                 ; |263| 
        MOVL      XAR5,XAR4             ; |263| 
        MOVL      XAR6,ACC              ; |263| 
        MPYXU     P,T,@_g_u16_sensor_num ; |263| 
        MOVL      ACC,P                 ; |263| 
        ADDL      XAR5,ACC
        MOVB      XAR0,#22              ; |263| 
        MOVL      ACC,XAR6              ; |263| 
        ADDL      ACC,*+XAR5[AR0]       ; |263| 
        MOVL      XAR6,ACC              ; |263| 
        MOV       AH,#499
        MOV       AL,#13104
        MOVL      XT,ACC                ; |263| 
        IMPYL     P,XT,XAR6             ; |263| 
        QMPYL     ACC,XT,XAR6           ; |263| 
        LSL64     ACC:P,#2              ; |263| 
        MOVL      XAR5,XAR4             ; |263| 
        MOV       T,#30                 ; |263| 
        MOVL      XAR6,ACC              ; |263| 
        MPYXU     ACC,T,@_g_u16_sensor_num ; |263| 
        ADDL      XAR5,ACC
        MOV       AH,#50150
        MOV       AL,#26240
        MOVB      XAR0,#20              ; |263| 
        MOVL      XT,ACC                ; |263| 
        IMPYL     P,XT,*+XAR5[AR0]      ; |263| 
        QMPYL     ACC,XT,*+XAR5[AR0]    ; |263| 
        LSL64     ACC:P,#2              ; |263| 
        MOVL      XAR5,XAR4             ; |263| 
        SUBL      XAR6,ACC
        MOV       T,#30                 ; |263| 
        MPYXU     ACC,T,@_g_u16_sensor_num ; |263| 
        ADDL      XAR5,ACC
        MOVL      *+XAR5[AR0],XAR6      ; |263| 
	.dwpsn	"sensor.c",265,3
        MOVL      XAR5,XAR4             ; |265| 
        MOV       T,#30                 ; |265| 
        MPYXU     ACC,T,@_g_u16_sensor_num ; |265| 
        ADDL      XAR5,ACC
        MOVZ      AR6,*+XAR5[0]
        MOV       T,#17                 ; |265| 
        MOVL      ACC,XAR6              ; |265| 
        LSLL      ACC,T                 ; |265| 
        MOV       T,#30                 ; |265| 
        MOVL      XAR5,XAR4             ; |265| 
        MOVL      XAR6,ACC              ; |265| 
        MPYXU     P,T,@_g_u16_sensor_num ; |265| 
        MOVL      ACC,P                 ; |265| 
        ADDL      XAR5,ACC
        MOVB      XAR0,#22              ; |265| 
        MOVL      *+XAR5[AR0],XAR6      ; |265| 
	.dwpsn	"sensor.c",268,3
        MOVL      XAR5,XAR4             ; |268| 
        MOV       T,#30                 ; |268| 
        MPYXU     ACC,T,@_g_u16_sensor_num ; |268| 
        ADDL      XAR5,ACC
        MOVB      XAR0,#20              ; |268| 
        MOVL      ACC,*+XAR5[AR0]       ; |268| 
	.dwpsn	"sensor.c",271,3
        MOV       T,#30                 ; |271| 
        MOVL      XAR5,XAR4             ; |271| 
        MPYXU     ACC,T,@_g_u16_sensor_num ; |271| 
        MOVL      XAR6,XAR4             ; |271| 
        MOV       T,#30                 ; |271| 
        ADDL      XAR5,ACC
        MPYXU     ACC,T,@_g_u16_sensor_num ; |271| 
        ADDL      XAR6,ACC
        MOVB      XAR1,#20              ; |271| 
        MOVB      XAR0,#18              ; |271| 
        MOVL      ACC,*+XAR6[AR1]       ; |271| 
        SUBL      ACC,*+XAR5[AR0]       ; |271| 
        MOV       T,#30                 ; |271| 
        MOVL      XAR5,XAR4             ; |271| 
        MOVL      XAR6,ACC              ; |271| 
        MPYXU     P,T,@_g_u16_sensor_num ; |271| 
        MOVL      ACC,P                 ; |271| 
        ADDL      XAR5,ACC
        MOVB      XAR0,#26              ; |271| 
        MOVL      *+XAR5[AR0],XAR6      ; |271| 
	.dwpsn	"sensor.c",272,3
        MOVL      XAR5,XAR4             ; |272| 
        MOV       T,#30                 ; |272| 
        MPYXU     ACC,T,@_g_u16_sensor_num ; |272| 
        ADDL      XAR5,ACC
        MOVB      XAR0,#28              ; |272| 
        MOVL      XAR6,*+XAR5[AR0]      ; |272| 
        MOVL      XAR5,XAR4             ; |272| 
        MOV       T,#30                 ; |272| 
        MPYXU     P,T,@_g_u16_sensor_num ; |272| 
        MOVL      ACC,P                 ; |272| 
        ADDL      XAR5,ACC
        MOVB      XAR0,#26              ; |272| 
        MOVL      ACC,XAR6              ; |272| 
        ADDL      ACC,*+XAR5[AR0]       ; |272| 
        MOVL      XAR6,ACC              ; |272| 
        MOV       AH,#1195
        MOV       AL,#24312
        MOVL      XT,ACC                ; |272| 
        IMPYL     P,XT,XAR6             ; |272| 
        QMPYL     ACC,XT,XAR6           ; |272| 
        LSL64     ACC:P,#2              ; |272| 
        MOVL      XAR5,XAR4             ; |272| 
        MOV       T,#30                 ; |272| 
        MOVL      XAR6,ACC              ; |272| 
        MPYXU     ACC,T,@_g_u16_sensor_num ; |272| 
        ADDL      XAR5,ACC
        MOV       AH,#51542
        MOV       AL,#48640
        MOVB      XAR0,#24              ; |272| 
        MOVL      XT,ACC                ; |272| 
        IMPYL     P,XT,*+XAR5[AR0]      ; |272| 
        QMPYL     ACC,XT,*+XAR5[AR0]    ; |272| 
        LSL64     ACC:P,#2              ; |272| 
        MOVL      XAR5,XAR4             ; |272| 
        SUBL      XAR6,ACC
        MOV       T,#30                 ; |272| 
        MPYXU     ACC,T,@_g_u16_sensor_num ; |272| 
        ADDL      XAR5,ACC
        MOVL      *+XAR5[AR0],XAR6      ; |272| 
	.dwpsn	"sensor.c",274,3
        MOVL      XAR5,XAR4             ; |274| 
        MOV       T,#30                 ; |274| 
        MPYXU     ACC,T,@_g_u16_sensor_num ; |274| 
        ADDL      XAR5,ACC
        MOVB      XAR0,#26              ; |274| 
        MOVL      XAR6,*+XAR5[AR0]      ; |274| 
        MOVL      XAR5,XAR4             ; |274| 
        MOV       T,#30                 ; |274| 
        MPYXU     ACC,T,@_g_u16_sensor_num ; |274| 
        ADDL      XAR5,ACC
        MOVB      XAR0,#28              ; |274| 
        MOVL      *+XAR5[AR0],XAR6      ; |274| 
	.dwpsn	"sensor.c",277,3
        MOVB      AL,#7                 ; |277| 
        MOVL      XAR5,XAR4             ; |277| 
        MOV       T,#30                 ; |277| 
        SUB       AL,@_g_u16_sensor_num ; |277| 
        MPYXU     ACC,T,AL              ; |277| 
        ADDL      XAR5,ACC
        MOVB      XAR0,#20              ; |277| 
        MOVL      XAR6,*+XAR5[AR0]      ; |277| 
        MOVB      AL,#7                 ; |277| 
        MOVL      XAR5,XAR4             ; |277| 
        MOV       T,#30                 ; |277| 
        SUB       AL,@_g_u16_sensor_num ; |277| 
        MPYXU     ACC,T,AL              ; |277| 
        ADDL      XAR5,ACC
        MOVB      XAR0,#18              ; |277| 
        MOVL      *+XAR5[AR0],XAR6      ; |277| 
	.dwpsn	"sensor.c",278,3
        MOVB      AL,#7                 ; |278| 
        MOVL      XAR5,XAR4             ; |278| 
        MOV       T,#30                 ; |278| 
        SUB       AL,@_g_u16_sensor_num ; |278| 
        MPYXU     ACC,T,AL              ; |278| 
        ADDL      XAR5,ACC
        MOVZ      AR6,*+XAR5[0]
        MOV       T,#17                 ; |278| 
        MOVL      ACC,XAR6              ; |278| 
        LSLL      ACC,T                 ; |278| 
        MOVL      XAR6,ACC              ; |278| 
        MOVB      AL,#7                 ; |278| 
        MOVL      XAR5,XAR4             ; |278| 
        MOV       T,#30                 ; |278| 
        SUB       AL,@_g_u16_sensor_num ; |278| 
        MPYXU     ACC,T,AL              ; |278| 
        ADDL      XAR5,ACC
        MOVB      XAR0,#22              ; |278| 
        MOVL      ACC,XAR6              ; |278| 
        ADDL      ACC,*+XAR5[AR0]       ; |278| 
        MOVL      XAR6,ACC              ; |278| 
        MOV       AH,#499
        MOV       AL,#13104
        MOVL      XT,ACC                ; |278| 
        IMPYL     P,XT,XAR6             ; |278| 
        QMPYL     ACC,XT,XAR6           ; |278| 
        LSL64     ACC:P,#2              ; |278| 
        MOVL      XAR6,ACC              ; |278| 
        MOVB      AL,#7                 ; |278| 
        MOVL      XAR5,XAR4             ; |278| 
        MOV       T,#30                 ; |278| 
        SUB       AL,@_g_u16_sensor_num ; |278| 
        MPYXU     ACC,T,AL              ; |278| 
        ADDL      XAR5,ACC
        MOV       AH,#50150
        MOV       AL,#26240
        MOVB      XAR0,#20              ; |278| 
        MOVL      XT,ACC                ; |278| 
        IMPYL     P,XT,*+XAR5[AR0]      ; |278| 
        QMPYL     ACC,XT,*+XAR5[AR0]    ; |278| 
        LSL64     ACC:P,#2              ; |278| 
        SUBL      XAR6,ACC
        MOVB      AL,#7                 ; |278| 
        MOVL      XAR5,XAR4             ; |278| 
        MOV       T,#30                 ; |278| 
        SUB       AL,@_g_u16_sensor_num ; |278| 
        MPYXU     ACC,T,AL              ; |278| 
        ADDL      XAR5,ACC
        MOVL      *+XAR5[AR0],XAR6      ; |278| 
	.dwpsn	"sensor.c",280,3
        MOVB      AL,#7                 ; |280| 
        MOVL      XAR5,XAR4             ; |280| 
        MOV       T,#30                 ; |280| 
        SUB       AL,@_g_u16_sensor_num ; |280| 
        MPYXU     ACC,T,AL              ; |280| 
        ADDL      XAR5,ACC
        MOVZ      AR6,*+XAR5[0]
        MOV       T,#17                 ; |280| 
        MOVL      ACC,XAR6              ; |280| 
        LSLL      ACC,T                 ; |280| 
        MOVL      XAR6,ACC              ; |280| 
        MOVB      AL,#7                 ; |280| 
        MOVL      XAR5,XAR4             ; |280| 
        MOV       T,#30                 ; |280| 
        SUB       AL,@_g_u16_sensor_num ; |280| 
        MPYXU     ACC,T,AL              ; |280| 
        ADDL      XAR5,ACC
        MOVB      XAR0,#22              ; |280| 
        MOVL      *+XAR5[AR0],XAR6      ; |280| 
	.dwpsn	"sensor.c",283,3
        MOVB      AL,#7                 ; |283| 
        MOVL      XAR5,XAR4             ; |283| 
        MOV       T,#30                 ; |283| 
        SUB       AL,@_g_u16_sensor_num ; |283| 
        MPYXU     ACC,T,AL              ; |283| 
        ADDL      XAR5,ACC
        MOVB      XAR0,#20              ; |283| 
        MOVL      ACC,*+XAR5[AR0]       ; |283| 
	.dwpsn	"sensor.c",286,3
        MOVB      AL,#7                 ; |286| 
        MOVL      XAR5,XAR4             ; |286| 
        MOV       T,#30                 ; |286| 
        SUB       AL,@_g_u16_sensor_num ; |286| 
        MPYXU     ACC,T,AL              ; |286| 
        ADDL      XAR5,ACC
        MOVB      AL,#7                 ; |286| 
        MOVL      XAR6,XAR4             ; |286| 
        MOV       T,#30                 ; |286| 
        SUB       AL,@_g_u16_sensor_num ; |286| 
        MPYXU     ACC,T,AL              ; |286| 
        ADDL      XAR6,ACC
        MOVB      XAR0,#18              ; |286| 
        MOVL      ACC,*+XAR6[AR1]       ; |286| 
        SUBL      ACC,*+XAR5[AR0]       ; |286| 
        MOVL      XAR6,ACC              ; |286| 
        MOVB      AL,#7                 ; |286| 
        MOVL      XAR5,XAR4             ; |286| 
        MOV       T,#30                 ; |286| 
        SUB       AL,@_g_u16_sensor_num ; |286| 
        MPYXU     ACC,T,AL              ; |286| 
        ADDL      XAR5,ACC
        MOVB      XAR0,#26              ; |286| 
        MOVL      *+XAR5[AR0],XAR6      ; |286| 
	.dwpsn	"sensor.c",287,3
        MOVB      AL,#7                 ; |287| 
        MOVL      XAR5,XAR4             ; |287| 
        MOV       T,#30                 ; |287| 
        SUB       AL,@_g_u16_sensor_num ; |287| 
        MPYXU     ACC,T,AL              ; |287| 
        ADDL      XAR5,ACC
        MOVB      XAR0,#28              ; |287| 
        MOVL      XAR6,*+XAR5[AR0]      ; |287| 
        MOVB      AL,#7                 ; |287| 
        MOVL      XAR5,XAR4             ; |287| 
        MOV       T,#30                 ; |287| 
        SUB       AL,@_g_u16_sensor_num ; |287| 
        MPYXU     ACC,T,AL              ; |287| 
        ADDL      XAR5,ACC
        MOVB      XAR0,#26              ; |287| 
        MOVL      ACC,XAR6              ; |287| 
        ADDL      ACC,*+XAR5[AR0]       ; |287| 
        MOVL      XAR6,ACC              ; |287| 
        MOV       AH,#1195
        MOV       AL,#24312
        MOVL      XT,ACC                ; |287| 
        IMPYL     P,XT,XAR6             ; |287| 
        QMPYL     ACC,XT,XAR6           ; |287| 
        LSL64     ACC:P,#2              ; |287| 
        MOVL      XAR6,ACC              ; |287| 
        MOVB      AL,#7                 ; |287| 
        MOVL      XAR5,XAR4             ; |287| 
        MOV       T,#30                 ; |287| 
        SUB       AL,@_g_u16_sensor_num ; |287| 
        MPYXU     ACC,T,AL              ; |287| 
        ADDL      XAR5,ACC
        MOV       AH,#51542
        MOV       AL,#48640
        MOVB      XAR0,#24              ; |287| 
        MOVL      XT,ACC                ; |287| 
        IMPYL     P,XT,*+XAR5[AR0]      ; |287| 
        QMPYL     ACC,XT,*+XAR5[AR0]    ; |287| 
        LSL64     ACC:P,#2              ; |287| 
        SUBL      XAR6,ACC
        MOVB      AL,#7                 ; |287| 
        MOVL      XAR5,XAR4             ; |287| 
        MOV       T,#30                 ; |287| 
        SUB       AL,@_g_u16_sensor_num ; |287| 
        MPYXU     ACC,T,AL              ; |287| 
        ADDL      XAR5,ACC
        MOVL      *+XAR5[AR0],XAR6      ; |287| 
	.dwpsn	"sensor.c",289,3
        MOVB      AL,#7                 ; |289| 
        MOVL      XAR5,XAR4             ; |289| 
        MOV       T,#30                 ; |289| 
        SUB       AL,@_g_u16_sensor_num ; |289| 
        MPYXU     ACC,T,AL              ; |289| 
        ADDL      XAR5,ACC
        MOVB      XAR0,#26              ; |289| 
        MOVB      AL,#7                 ; |289| 
        MOVL      XAR6,*+XAR5[AR0]      ; |289| 
        MOV       T,#30                 ; |289| 
        SUB       AL,@_g_u16_sensor_num ; |289| 
        MPYXU     ACC,T,AL              ; |289| 
        ADDL      XAR4,ACC
        MOVB      XAR0,#28              ; |289| 
        MOVL      *+XAR4[AR0],XAR6      ; |289| 
	.dwpsn	"sensor.c",326,3
        MOV       AL,@_g_u16_sensor_num ; |326| 
        CMPB      AL,#3                 ; |326| 
        BF        L2,LO                 ; |326| 
        ; branchcc occurs ; |326| 
;*** 330	-----------------------    g_u16_sensor_num = 0u;
;*** 331	-----------------------    *(&CpuTimer0Regs+4L) |= 0x10u;
;*** 331	-----------------------    goto g7;
	.dwpsn	"sensor.c",330,4
        MOV       @_g_u16_sensor_num,#0 ; |330| 
	.dwpsn	"sensor.c",331,4
        MOVW      DP,#_CpuTimer0Regs+4
        OR        @_CpuTimer0Regs+4,#0x0010 ; |331| 
        BF        L3,UNC                ; |331| 
        ; branch occurs ; |331| 
L2:    
;***	-----------------------g6:
;*** 327	-----------------------    ++g_u16_sensor_num;
	.dwpsn	"sensor.c",327,4
        INC       @_g_u16_sensor_num    ; |327| 
L3:    
;***	-----------------------g7:
;*** 334	-----------------------    *(&GpioDataRegs+5L) |= 0x800u;
;*** 334	-----------------------    goto g9;
	.dwpsn	"sensor.c",334,3
        MOVW      DP,#_GpioDataRegs+5
        OR        @_GpioDataRegs+5,#0x0800 ; |334| 
        BF        L5,UNC                ; |334| 
        ; branch occurs ; |334| 
L4:    
;***	-----------------------g8:
;*** 245	-----------------------    ++ADC_channel_cnt;
;*** 247	-----------------------    *(&GpioDataRegs+7L) |= 0x800u;
;*** 249	-----------------------    *(&AdcRegs+1L) |= 0x2000u;
;***	-----------------------g9:
;***  	-----------------------    return;
	.dwpsn	"sensor.c",245,3
        INC       @_ADC_channel_cnt$1$0 ; |245| 
	.dwpsn	"sensor.c",247,3
        MOVW      DP,#_GpioDataRegs+7
        OR        @_GpioDataRegs+7,#0x0800 ; |247| 
	.dwpsn	"sensor.c",249,3
        MOVW      DP,#_AdcRegs+1
        OR        @_AdcRegs+1,#0x2000   ; |249| 
L5:    
	.dwpsn	"sensor.c",338,1
	.dwcfa	0x1d, -12
        MOVL      XT,*--SP
	.dwcfa	0x1d, -10
	.dwcfa	0xc0, 22
	.dwcfa	0xc0, 21
        MOVL      XAR6,*--SP
	.dwcfa	0x1d, -8
	.dwcfa	0xc0, 16
        MOVL      XAR5,*--SP
	.dwcfa	0x1d, -6
	.dwcfa	0xc0, 14
        MOVL      XAR4,*--SP
	.dwcfa	0x1d, -4
	.dwcfa	0xc0, 12
        POP       AR1H:AR0H
	.dwcfa	0x1d, -2
	.dwcfa	0xc0, 5
	.dwcfa	0xc0, 7
        NASP
        IRET
        ; return occurs
	.dwattr DW$33, DW_AT_end_file("sensor.c")
	.dwattr DW$33, DW_AT_end_line(0x152)
	.dwattr DW$33, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$33

;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_g_u16_sensor_num
	.global	_p_r_back_side_sen
	.global	_p_r_front_side_sen
	.global	_p_r_front_sen
	.global	_p_r_45_sen
	.global	_p_l_front_sen
	.global	_memset
	.global	_p_l_45_sen
	.global	_p_l_back_side_sen
	.global	_p_l_front_side_sen
	.global	_CpuTimer2Regs
	.global	_CpuTimer0Regs
	.global	_AdcMirror
	.global	_PieCtrlRegs
	.global	_AdcRegs
	.global	_GpioDataRegs
	.global	_s_sen

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************
DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr DW$T$3, DW_AT_address_class(0x16)

DW$T$77	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$77, DW_AT_language(DW_LANG_C)
DW$41	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$42	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$43	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$76)
	.dwendtag DW$T$77


DW$T$79	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$79, DW_AT_language(DW_LANG_C)
DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x01)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x01)
DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)
DW$44	.dwtag  DW_TAG_far_type
	.dwattr DW$44, DW_AT_type(*DW$T$19)
DW$T$81	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$81, DW_AT_type(*DW$44)

DW$T$82	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$81)
	.dwattr DW$T$82, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$82, DW_AT_byte_size(0x08)
DW$45	.dwtag  DW_TAG_subrange_type
	.dwattr DW$45, DW_AT_upper_bound(0x07)
	.dwendtag DW$T$82

DW$T$85	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$83)
	.dwattr DW$T$85, DW_AT_address_class(0x16)
DW$T$12	.dwtag  DW_TAG_base_type, DW_AT_name("long")
	.dwattr DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$12, DW_AT_byte_size(0x02)

DW$T$86	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$86, DW_AT_language(DW_LANG_C)
DW$46	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$47	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$48	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$86

DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32"), DW_AT_type(*DW$T$13)
	.dwattr DW$T$21, DW_AT_language(DW_LANG_C)
DW$T$76	.dwtag  DW_TAG_typedef, DW_AT_name("size_t"), DW_AT_type(*DW$T$13)
	.dwattr DW$T$76, DW_AT_language(DW_LANG_C)
DW$49	.dwtag  DW_TAG_far_type
	.dwattr DW$49, DW_AT_type(*DW$T$26)
DW$T$93	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$93, DW_AT_type(*DW$49)
DW$T$96	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$95)
	.dwattr DW$T$96, DW_AT_address_class(0x16)
DW$50	.dwtag  DW_TAG_far_type
	.dwattr DW$50, DW_AT_type(*DW$T$52)
DW$T$103	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$103, DW_AT_type(*DW$50)
DW$51	.dwtag  DW_TAG_far_type
	.dwattr DW$51, DW_AT_type(*DW$T$53)
DW$T$105	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$105, DW_AT_type(*DW$51)
DW$52	.dwtag  DW_TAG_far_type
	.dwattr DW$52, DW_AT_type(*DW$T$64)
DW$T$108	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$108, DW_AT_type(*DW$52)
DW$53	.dwtag  DW_TAG_far_type
	.dwattr DW$53, DW_AT_type(*DW$T$73)
DW$T$112	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$112, DW_AT_type(*DW$53)

DW$T$115	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$114)
	.dwattr DW$T$115, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$115, DW_AT_byte_size(0xf0)
DW$54	.dwtag  DW_TAG_subrange_type
	.dwattr DW$54, DW_AT_upper_bound(0x07)
	.dwendtag DW$T$115

DW$T$116	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$114)
	.dwattr DW$T$116, DW_AT_address_class(0x16)
DW$T$118	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$113)
	.dwattr DW$T$118, DW_AT_address_class(0x16)
DW$55	.dwtag  DW_TAG_far_type
	.dwattr DW$55, DW_AT_type(*DW$T$11)
DW$T$83	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$83, DW_AT_type(*DW$55)
DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x02)

DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$26, DW_AT_name("GPIO_DATA_REGS")
	.dwattr DW$T$26, DW_AT_byte_size(0x20)
DW$56	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$56, DW_AT_name("GPADAT"), DW_AT_symbol_name("_GPADAT")
	.dwattr DW$56, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$56, DW_AT_accessibility(DW_ACCESS_public)
DW$57	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$57, DW_AT_name("GPASET"), DW_AT_symbol_name("_GPASET")
	.dwattr DW$57, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$57, DW_AT_accessibility(DW_ACCESS_public)
DW$58	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$58, DW_AT_name("GPACLEAR"), DW_AT_symbol_name("_GPACLEAR")
	.dwattr DW$58, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$58, DW_AT_accessibility(DW_ACCESS_public)
DW$59	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$59, DW_AT_name("GPATOGGLE"), DW_AT_symbol_name("_GPATOGGLE")
	.dwattr DW$59, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$59, DW_AT_accessibility(DW_ACCESS_public)
DW$60	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$60, DW_AT_name("GPBDAT"), DW_AT_symbol_name("_GPBDAT")
	.dwattr DW$60, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$60, DW_AT_accessibility(DW_ACCESS_public)
DW$61	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$61, DW_AT_name("GPBSET"), DW_AT_symbol_name("_GPBSET")
	.dwattr DW$61, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$61, DW_AT_accessibility(DW_ACCESS_public)
DW$62	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$62, DW_AT_name("GPBCLEAR"), DW_AT_symbol_name("_GPBCLEAR")
	.dwattr DW$62, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$62, DW_AT_accessibility(DW_ACCESS_public)
DW$63	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$63, DW_AT_name("GPBTOGGLE"), DW_AT_symbol_name("_GPBTOGGLE")
	.dwattr DW$63, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$63, DW_AT_accessibility(DW_ACCESS_public)
DW$64	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$64, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$64, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$64, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$26

DW$65	.dwtag  DW_TAG_far_type
	.dwattr DW$65, DW_AT_type(*DW$T$29)
DW$T$95	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$95, DW_AT_type(*DW$65)

DW$T$52	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$52, DW_AT_name("ADC_REGS")
	.dwattr DW$T$52, DW_AT_byte_size(0x1e)
DW$66	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$28)
	.dwattr DW$66, DW_AT_name("ADCTRL1"), DW_AT_symbol_name("_ADCTRL1")
	.dwattr DW$66, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$66, DW_AT_accessibility(DW_ACCESS_public)
DW$67	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$30)
	.dwattr DW$67, DW_AT_name("ADCTRL2"), DW_AT_symbol_name("_ADCTRL2")
	.dwattr DW$67, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$67, DW_AT_accessibility(DW_ACCESS_public)
DW$68	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$68, DW_AT_name("ADCMAXCONV"), DW_AT_symbol_name("_ADCMAXCONV")
	.dwattr DW$68, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$68, DW_AT_accessibility(DW_ACCESS_public)
DW$69	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$69, DW_AT_name("ADCCHSELSEQ1"), DW_AT_symbol_name("_ADCCHSELSEQ1")
	.dwattr DW$69, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$69, DW_AT_accessibility(DW_ACCESS_public)
DW$70	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$70, DW_AT_name("ADCCHSELSEQ2"), DW_AT_symbol_name("_ADCCHSELSEQ2")
	.dwattr DW$70, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$70, DW_AT_accessibility(DW_ACCESS_public)
DW$71	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$38)
	.dwattr DW$71, DW_AT_name("ADCCHSELSEQ3"), DW_AT_symbol_name("_ADCCHSELSEQ3")
	.dwattr DW$71, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$71, DW_AT_accessibility(DW_ACCESS_public)
DW$72	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$40)
	.dwattr DW$72, DW_AT_name("ADCCHSELSEQ4"), DW_AT_symbol_name("_ADCCHSELSEQ4")
	.dwattr DW$72, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$72, DW_AT_accessibility(DW_ACCESS_public)
DW$73	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$42)
	.dwattr DW$73, DW_AT_name("ADCASEQSR"), DW_AT_symbol_name("_ADCASEQSR")
	.dwattr DW$73, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$73, DW_AT_accessibility(DW_ACCESS_public)
DW$74	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$74, DW_AT_name("ADCRESULT0"), DW_AT_symbol_name("_ADCRESULT0")
	.dwattr DW$74, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$74, DW_AT_accessibility(DW_ACCESS_public)
DW$75	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$75, DW_AT_name("ADCRESULT1"), DW_AT_symbol_name("_ADCRESULT1")
	.dwattr DW$75, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$75, DW_AT_accessibility(DW_ACCESS_public)
DW$76	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$76, DW_AT_name("ADCRESULT2"), DW_AT_symbol_name("_ADCRESULT2")
	.dwattr DW$76, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$76, DW_AT_accessibility(DW_ACCESS_public)
DW$77	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$77, DW_AT_name("ADCRESULT3"), DW_AT_symbol_name("_ADCRESULT3")
	.dwattr DW$77, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$77, DW_AT_accessibility(DW_ACCESS_public)
DW$78	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$78, DW_AT_name("ADCRESULT4"), DW_AT_symbol_name("_ADCRESULT4")
	.dwattr DW$78, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$78, DW_AT_accessibility(DW_ACCESS_public)
DW$79	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$79, DW_AT_name("ADCRESULT5"), DW_AT_symbol_name("_ADCRESULT5")
	.dwattr DW$79, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$79, DW_AT_accessibility(DW_ACCESS_public)
DW$80	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$80, DW_AT_name("ADCRESULT6"), DW_AT_symbol_name("_ADCRESULT6")
	.dwattr DW$80, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$80, DW_AT_accessibility(DW_ACCESS_public)
DW$81	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$81, DW_AT_name("ADCRESULT7"), DW_AT_symbol_name("_ADCRESULT7")
	.dwattr DW$81, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$81, DW_AT_accessibility(DW_ACCESS_public)
DW$82	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$82, DW_AT_name("ADCRESULT8"), DW_AT_symbol_name("_ADCRESULT8")
	.dwattr DW$82, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$82, DW_AT_accessibility(DW_ACCESS_public)
DW$83	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$83, DW_AT_name("ADCRESULT9"), DW_AT_symbol_name("_ADCRESULT9")
	.dwattr DW$83, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$83, DW_AT_accessibility(DW_ACCESS_public)
DW$84	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$84, DW_AT_name("ADCRESULT10"), DW_AT_symbol_name("_ADCRESULT10")
	.dwattr DW$84, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$84, DW_AT_accessibility(DW_ACCESS_public)
DW$85	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$85, DW_AT_name("ADCRESULT11"), DW_AT_symbol_name("_ADCRESULT11")
	.dwattr DW$85, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$85, DW_AT_accessibility(DW_ACCESS_public)
DW$86	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$86, DW_AT_name("ADCRESULT12"), DW_AT_symbol_name("_ADCRESULT12")
	.dwattr DW$86, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$86, DW_AT_accessibility(DW_ACCESS_public)
DW$87	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$87, DW_AT_name("ADCRESULT13"), DW_AT_symbol_name("_ADCRESULT13")
	.dwattr DW$87, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$87, DW_AT_accessibility(DW_ACCESS_public)
DW$88	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$88, DW_AT_name("ADCRESULT14"), DW_AT_symbol_name("_ADCRESULT14")
	.dwattr DW$88, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$88, DW_AT_accessibility(DW_ACCESS_public)
DW$89	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$89, DW_AT_name("ADCRESULT15"), DW_AT_symbol_name("_ADCRESULT15")
	.dwattr DW$89, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$89, DW_AT_accessibility(DW_ACCESS_public)
DW$90	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$44)
	.dwattr DW$90, DW_AT_name("ADCTRL3"), DW_AT_symbol_name("_ADCTRL3")
	.dwattr DW$90, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$90, DW_AT_accessibility(DW_ACCESS_public)
DW$91	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$91, DW_AT_name("ADCST"), DW_AT_symbol_name("_ADCST")
	.dwattr DW$91, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr DW$91, DW_AT_accessibility(DW_ACCESS_public)
DW$92	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$92, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$92, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$92, DW_AT_accessibility(DW_ACCESS_public)
DW$93	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$93, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$93, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr DW$93, DW_AT_accessibility(DW_ACCESS_public)
DW$94	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$94, DW_AT_name("ADCREFSEL"), DW_AT_symbol_name("_ADCREFSEL")
	.dwattr DW$94, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$94, DW_AT_accessibility(DW_ACCESS_public)
DW$95	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$51)
	.dwattr DW$95, DW_AT_name("ADCOFFTRIM"), DW_AT_symbol_name("_ADCOFFTRIM")
	.dwattr DW$95, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$95, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$52


DW$T$53	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$53, DW_AT_name("ADC_RESULT_MIRROR_REGS")
	.dwattr DW$T$53, DW_AT_byte_size(0x10)
DW$96	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$96, DW_AT_name("ADCRESULT0"), DW_AT_symbol_name("_ADCRESULT0")
	.dwattr DW$96, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$96, DW_AT_accessibility(DW_ACCESS_public)
DW$97	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$97, DW_AT_name("ADCRESULT1"), DW_AT_symbol_name("_ADCRESULT1")
	.dwattr DW$97, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$97, DW_AT_accessibility(DW_ACCESS_public)
DW$98	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$98, DW_AT_name("ADCRESULT2"), DW_AT_symbol_name("_ADCRESULT2")
	.dwattr DW$98, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$98, DW_AT_accessibility(DW_ACCESS_public)
DW$99	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$99, DW_AT_name("ADCRESULT3"), DW_AT_symbol_name("_ADCRESULT3")
	.dwattr DW$99, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$99, DW_AT_accessibility(DW_ACCESS_public)
DW$100	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$100, DW_AT_name("ADCRESULT4"), DW_AT_symbol_name("_ADCRESULT4")
	.dwattr DW$100, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$100, DW_AT_accessibility(DW_ACCESS_public)
DW$101	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$101, DW_AT_name("ADCRESULT5"), DW_AT_symbol_name("_ADCRESULT5")
	.dwattr DW$101, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$101, DW_AT_accessibility(DW_ACCESS_public)
DW$102	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$102, DW_AT_name("ADCRESULT6"), DW_AT_symbol_name("_ADCRESULT6")
	.dwattr DW$102, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$102, DW_AT_accessibility(DW_ACCESS_public)
DW$103	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$103, DW_AT_name("ADCRESULT7"), DW_AT_symbol_name("_ADCRESULT7")
	.dwattr DW$103, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$103, DW_AT_accessibility(DW_ACCESS_public)
DW$104	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$104, DW_AT_name("ADCRESULT8"), DW_AT_symbol_name("_ADCRESULT8")
	.dwattr DW$104, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$104, DW_AT_accessibility(DW_ACCESS_public)
DW$105	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$105, DW_AT_name("ADCRESULT9"), DW_AT_symbol_name("_ADCRESULT9")
	.dwattr DW$105, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$105, DW_AT_accessibility(DW_ACCESS_public)
DW$106	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$106, DW_AT_name("ADCRESULT10"), DW_AT_symbol_name("_ADCRESULT10")
	.dwattr DW$106, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$106, DW_AT_accessibility(DW_ACCESS_public)
DW$107	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$107, DW_AT_name("ADCRESULT11"), DW_AT_symbol_name("_ADCRESULT11")
	.dwattr DW$107, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$107, DW_AT_accessibility(DW_ACCESS_public)
DW$108	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$108, DW_AT_name("ADCRESULT12"), DW_AT_symbol_name("_ADCRESULT12")
	.dwattr DW$108, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$108, DW_AT_accessibility(DW_ACCESS_public)
DW$109	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$109, DW_AT_name("ADCRESULT13"), DW_AT_symbol_name("_ADCRESULT13")
	.dwattr DW$109, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$109, DW_AT_accessibility(DW_ACCESS_public)
DW$110	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$110, DW_AT_name("ADCRESULT14"), DW_AT_symbol_name("_ADCRESULT14")
	.dwattr DW$110, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$110, DW_AT_accessibility(DW_ACCESS_public)
DW$111	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$111, DW_AT_name("ADCRESULT15"), DW_AT_symbol_name("_ADCRESULT15")
	.dwattr DW$111, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$111, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$53


DW$T$64	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$64, DW_AT_name("CPUTIMER_REGS")
	.dwattr DW$T$64, DW_AT_byte_size(0x08)
DW$112	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$55)
	.dwattr DW$112, DW_AT_name("TIM"), DW_AT_symbol_name("_TIM")
	.dwattr DW$112, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$112, DW_AT_accessibility(DW_ACCESS_public)
DW$113	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$57)
	.dwattr DW$113, DW_AT_name("PRD"), DW_AT_symbol_name("_PRD")
	.dwattr DW$113, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$113, DW_AT_accessibility(DW_ACCESS_public)
DW$114	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$59)
	.dwattr DW$114, DW_AT_name("TCR"), DW_AT_symbol_name("_TCR")
	.dwattr DW$114, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$114, DW_AT_accessibility(DW_ACCESS_public)
DW$115	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$115, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$115, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$115, DW_AT_accessibility(DW_ACCESS_public)
DW$116	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$61)
	.dwattr DW$116, DW_AT_name("TPR"), DW_AT_symbol_name("_TPR")
	.dwattr DW$116, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$116, DW_AT_accessibility(DW_ACCESS_public)
DW$117	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$63)
	.dwattr DW$117, DW_AT_name("TPRH"), DW_AT_symbol_name("_TPRH")
	.dwattr DW$117, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$117, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$64


DW$T$73	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$73, DW_AT_name("PIE_CTRL_REGS")
	.dwattr DW$T$73, DW_AT_byte_size(0x1a)
DW$118	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$66)
	.dwattr DW$118, DW_AT_name("PIECTRL"), DW_AT_symbol_name("_PIECTRL")
	.dwattr DW$118, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$118, DW_AT_accessibility(DW_ACCESS_public)
DW$119	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$68)
	.dwattr DW$119, DW_AT_name("PIEACK"), DW_AT_symbol_name("_PIEACK")
	.dwattr DW$119, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$119, DW_AT_accessibility(DW_ACCESS_public)
DW$120	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$70)
	.dwattr DW$120, DW_AT_name("PIEIER1"), DW_AT_symbol_name("_PIEIER1")
	.dwattr DW$120, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$120, DW_AT_accessibility(DW_ACCESS_public)
DW$121	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$72)
	.dwattr DW$121, DW_AT_name("PIEIFR1"), DW_AT_symbol_name("_PIEIFR1")
	.dwattr DW$121, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$121, DW_AT_accessibility(DW_ACCESS_public)
DW$122	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$70)
	.dwattr DW$122, DW_AT_name("PIEIER2"), DW_AT_symbol_name("_PIEIER2")
	.dwattr DW$122, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$122, DW_AT_accessibility(DW_ACCESS_public)
DW$123	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$72)
	.dwattr DW$123, DW_AT_name("PIEIFR2"), DW_AT_symbol_name("_PIEIFR2")
	.dwattr DW$123, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$123, DW_AT_accessibility(DW_ACCESS_public)
DW$124	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$70)
	.dwattr DW$124, DW_AT_name("PIEIER3"), DW_AT_symbol_name("_PIEIER3")
	.dwattr DW$124, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$124, DW_AT_accessibility(DW_ACCESS_public)
DW$125	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$72)
	.dwattr DW$125, DW_AT_name("PIEIFR3"), DW_AT_symbol_name("_PIEIFR3")
	.dwattr DW$125, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$125, DW_AT_accessibility(DW_ACCESS_public)
DW$126	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$70)
	.dwattr DW$126, DW_AT_name("PIEIER4"), DW_AT_symbol_name("_PIEIER4")
	.dwattr DW$126, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$126, DW_AT_accessibility(DW_ACCESS_public)
DW$127	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$72)
	.dwattr DW$127, DW_AT_name("PIEIFR4"), DW_AT_symbol_name("_PIEIFR4")
	.dwattr DW$127, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$127, DW_AT_accessibility(DW_ACCESS_public)
DW$128	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$70)
	.dwattr DW$128, DW_AT_name("PIEIER5"), DW_AT_symbol_name("_PIEIER5")
	.dwattr DW$128, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$128, DW_AT_accessibility(DW_ACCESS_public)
DW$129	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$72)
	.dwattr DW$129, DW_AT_name("PIEIFR5"), DW_AT_symbol_name("_PIEIFR5")
	.dwattr DW$129, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$129, DW_AT_accessibility(DW_ACCESS_public)
DW$130	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$70)
	.dwattr DW$130, DW_AT_name("PIEIER6"), DW_AT_symbol_name("_PIEIER6")
	.dwattr DW$130, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$130, DW_AT_accessibility(DW_ACCESS_public)
DW$131	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$72)
	.dwattr DW$131, DW_AT_name("PIEIFR6"), DW_AT_symbol_name("_PIEIFR6")
	.dwattr DW$131, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$131, DW_AT_accessibility(DW_ACCESS_public)
DW$132	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$70)
	.dwattr DW$132, DW_AT_name("PIEIER7"), DW_AT_symbol_name("_PIEIER7")
	.dwattr DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$132, DW_AT_accessibility(DW_ACCESS_public)
DW$133	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$72)
	.dwattr DW$133, DW_AT_name("PIEIFR7"), DW_AT_symbol_name("_PIEIFR7")
	.dwattr DW$133, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$133, DW_AT_accessibility(DW_ACCESS_public)
DW$134	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$70)
	.dwattr DW$134, DW_AT_name("PIEIER8"), DW_AT_symbol_name("_PIEIER8")
	.dwattr DW$134, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$134, DW_AT_accessibility(DW_ACCESS_public)
DW$135	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$72)
	.dwattr DW$135, DW_AT_name("PIEIFR8"), DW_AT_symbol_name("_PIEIFR8")
	.dwattr DW$135, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$135, DW_AT_accessibility(DW_ACCESS_public)
DW$136	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$70)
	.dwattr DW$136, DW_AT_name("PIEIER9"), DW_AT_symbol_name("_PIEIER9")
	.dwattr DW$136, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$136, DW_AT_accessibility(DW_ACCESS_public)
DW$137	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$72)
	.dwattr DW$137, DW_AT_name("PIEIFR9"), DW_AT_symbol_name("_PIEIFR9")
	.dwattr DW$137, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$137, DW_AT_accessibility(DW_ACCESS_public)
DW$138	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$70)
	.dwattr DW$138, DW_AT_name("PIEIER10"), DW_AT_symbol_name("_PIEIER10")
	.dwattr DW$138, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$138, DW_AT_accessibility(DW_ACCESS_public)
DW$139	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$72)
	.dwattr DW$139, DW_AT_name("PIEIFR10"), DW_AT_symbol_name("_PIEIFR10")
	.dwattr DW$139, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$139, DW_AT_accessibility(DW_ACCESS_public)
DW$140	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$70)
	.dwattr DW$140, DW_AT_name("PIEIER11"), DW_AT_symbol_name("_PIEIER11")
	.dwattr DW$140, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$140, DW_AT_accessibility(DW_ACCESS_public)
DW$141	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$72)
	.dwattr DW$141, DW_AT_name("PIEIFR11"), DW_AT_symbol_name("_PIEIFR11")
	.dwattr DW$141, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$141, DW_AT_accessibility(DW_ACCESS_public)
DW$142	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$70)
	.dwattr DW$142, DW_AT_name("PIEIER12"), DW_AT_symbol_name("_PIEIER12")
	.dwattr DW$142, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$142, DW_AT_accessibility(DW_ACCESS_public)
DW$143	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$72)
	.dwattr DW$143, DW_AT_name("PIEIFR12"), DW_AT_symbol_name("_PIEIFR12")
	.dwattr DW$143, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr DW$143, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$73

DW$144	.dwtag  DW_TAG_far_type
	.dwattr DW$144, DW_AT_type(*DW$T$75)
DW$T$113	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$113, DW_AT_type(*DW$144)
DW$T$114	.dwtag  DW_TAG_typedef, DW_AT_name("SensorVal"), DW_AT_type(*DW$T$113)
	.dwattr DW$T$114, DW_AT_language(DW_LANG_C)

DW$T$25	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$25, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$25, DW_AT_byte_size(0x10)
DW$145	.dwtag  DW_TAG_subrange_type
	.dwattr DW$145, DW_AT_upper_bound(0x0f)
	.dwendtag DW$T$25


DW$T$22	.dwtag  DW_TAG_union_type
	.dwattr DW$T$22, DW_AT_name("GPADAT_REG")
	.dwattr DW$T$22, DW_AT_byte_size(0x02)
DW$146	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$146, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$146, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$146, DW_AT_accessibility(DW_ACCESS_public)
DW$147	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$147, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$147, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$147, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$22


DW$T$24	.dwtag  DW_TAG_union_type
	.dwattr DW$T$24, DW_AT_name("GPBDAT_REG")
	.dwattr DW$T$24, DW_AT_byte_size(0x02)
DW$148	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$148, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$148, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$148, DW_AT_accessibility(DW_ACCESS_public)
DW$149	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$149, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$149, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$149, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$24


DW$T$28	.dwtag  DW_TAG_union_type
	.dwattr DW$T$28, DW_AT_name("ADCTRL1_REG")
	.dwattr DW$T$28, DW_AT_byte_size(0x01)
DW$150	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$150, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$150, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$150, DW_AT_accessibility(DW_ACCESS_public)
DW$151	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$151, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$151, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$151, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$28


DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$29, DW_AT_name("ADCTRL2_BITS")
	.dwattr DW$T$29, DW_AT_byte_size(0x01)
DW$152	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$152, DW_AT_name("EPWM_SOCB_SEQ2"), DW_AT_symbol_name("_EPWM_SOCB_SEQ2")
	.dwattr DW$152, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$152, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$152, DW_AT_accessibility(DW_ACCESS_public)
DW$153	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$153, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$153, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$153, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$153, DW_AT_accessibility(DW_ACCESS_public)
DW$154	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$154, DW_AT_name("INT_MOD_SEQ2"), DW_AT_symbol_name("_INT_MOD_SEQ2")
	.dwattr DW$154, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$154, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$154, DW_AT_accessibility(DW_ACCESS_public)
DW$155	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$155, DW_AT_name("INT_ENA_SEQ2"), DW_AT_symbol_name("_INT_ENA_SEQ2")
	.dwattr DW$155, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$155, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$155, DW_AT_accessibility(DW_ACCESS_public)
DW$156	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$156, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$156, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$156, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$156, DW_AT_accessibility(DW_ACCESS_public)
DW$157	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$157, DW_AT_name("SOC_SEQ2"), DW_AT_symbol_name("_SOC_SEQ2")
	.dwattr DW$157, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$157, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$157, DW_AT_accessibility(DW_ACCESS_public)
DW$158	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$158, DW_AT_name("RST_SEQ2"), DW_AT_symbol_name("_RST_SEQ2")
	.dwattr DW$158, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$158, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$158, DW_AT_accessibility(DW_ACCESS_public)
DW$159	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$159, DW_AT_name("EXT_SOC_SEQ1"), DW_AT_symbol_name("_EXT_SOC_SEQ1")
	.dwattr DW$159, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$159, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$159, DW_AT_accessibility(DW_ACCESS_public)
DW$160	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$160, DW_AT_name("EPWM_SOCA_SEQ1"), DW_AT_symbol_name("_EPWM_SOCA_SEQ1")
	.dwattr DW$160, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$160, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$160, DW_AT_accessibility(DW_ACCESS_public)
DW$161	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$161, DW_AT_name("rsvd3"), DW_AT_symbol_name("_rsvd3")
	.dwattr DW$161, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$161, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$161, DW_AT_accessibility(DW_ACCESS_public)
DW$162	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$162, DW_AT_name("INT_MOD_SEQ1"), DW_AT_symbol_name("_INT_MOD_SEQ1")
	.dwattr DW$162, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$162, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$162, DW_AT_accessibility(DW_ACCESS_public)
DW$163	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$163, DW_AT_name("INT_ENA_SEQ1"), DW_AT_symbol_name("_INT_ENA_SEQ1")
	.dwattr DW$163, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$163, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$163, DW_AT_accessibility(DW_ACCESS_public)
DW$164	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$164, DW_AT_name("rsvd4"), DW_AT_symbol_name("_rsvd4")
	.dwattr DW$164, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$164, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$164, DW_AT_accessibility(DW_ACCESS_public)
DW$165	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$165, DW_AT_name("SOC_SEQ1"), DW_AT_symbol_name("_SOC_SEQ1")
	.dwattr DW$165, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$165, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$165, DW_AT_accessibility(DW_ACCESS_public)
DW$166	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$166, DW_AT_name("RST_SEQ1"), DW_AT_symbol_name("_RST_SEQ1")
	.dwattr DW$166, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$166, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$166, DW_AT_accessibility(DW_ACCESS_public)
DW$167	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$167, DW_AT_name("EPWM_SOCB_SEQ"), DW_AT_symbol_name("_EPWM_SOCB_SEQ")
	.dwattr DW$167, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$167, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$167, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$29


DW$T$30	.dwtag  DW_TAG_union_type
	.dwattr DW$T$30, DW_AT_name("ADCTRL2_REG")
	.dwattr DW$T$30, DW_AT_byte_size(0x01)
DW$168	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$168, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$168, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$168, DW_AT_accessibility(DW_ACCESS_public)
DW$169	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$169, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$169, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$30


DW$T$32	.dwtag  DW_TAG_union_type
	.dwattr DW$T$32, DW_AT_name("ADCMAXCONV_REG")
	.dwattr DW$T$32, DW_AT_byte_size(0x01)
DW$170	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$170, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$170, DW_AT_accessibility(DW_ACCESS_public)
DW$171	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$171, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$171, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$32


DW$T$34	.dwtag  DW_TAG_union_type
	.dwattr DW$T$34, DW_AT_name("ADCCHSELSEQ1_REG")
	.dwattr DW$T$34, DW_AT_byte_size(0x01)
DW$172	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$172, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$172, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$172, DW_AT_accessibility(DW_ACCESS_public)
DW$173	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$33)
	.dwattr DW$173, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$173, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$34


DW$T$36	.dwtag  DW_TAG_union_type
	.dwattr DW$T$36, DW_AT_name("ADCCHSELSEQ2_REG")
	.dwattr DW$T$36, DW_AT_byte_size(0x01)
DW$174	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$174, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$174, DW_AT_accessibility(DW_ACCESS_public)
DW$175	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$35)
	.dwattr DW$175, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$175, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$36


DW$T$38	.dwtag  DW_TAG_union_type
	.dwattr DW$T$38, DW_AT_name("ADCCHSELSEQ3_REG")
	.dwattr DW$T$38, DW_AT_byte_size(0x01)
DW$176	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$176, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$176, DW_AT_accessibility(DW_ACCESS_public)
DW$177	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$37)
	.dwattr DW$177, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$177, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$38


DW$T$40	.dwtag  DW_TAG_union_type
	.dwattr DW$T$40, DW_AT_name("ADCCHSELSEQ4_REG")
	.dwattr DW$T$40, DW_AT_byte_size(0x01)
DW$178	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$178, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$178, DW_AT_accessibility(DW_ACCESS_public)
DW$179	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$179, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$179, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$40


DW$T$42	.dwtag  DW_TAG_union_type
	.dwattr DW$T$42, DW_AT_name("ADCASEQSR_REG")
	.dwattr DW$T$42, DW_AT_byte_size(0x01)
DW$180	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$180, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$180, DW_AT_accessibility(DW_ACCESS_public)
DW$181	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$181, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$181, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$42


DW$T$44	.dwtag  DW_TAG_union_type
	.dwattr DW$T$44, DW_AT_name("ADCTRL3_REG")
	.dwattr DW$T$44, DW_AT_byte_size(0x01)
DW$182	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$182, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$182, DW_AT_accessibility(DW_ACCESS_public)
DW$183	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$43)
	.dwattr DW$183, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$183, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$44


DW$T$46	.dwtag  DW_TAG_union_type
	.dwattr DW$T$46, DW_AT_name("ADCST_REG")
	.dwattr DW$T$46, DW_AT_byte_size(0x01)
DW$184	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$184, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$184, DW_AT_accessibility(DW_ACCESS_public)
DW$185	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$185, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$185, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$46


DW$T$48	.dwtag  DW_TAG_union_type
	.dwattr DW$T$48, DW_AT_name("ADCREFSEL_REG")
	.dwattr DW$T$48, DW_AT_byte_size(0x01)
DW$186	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$186, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$186, DW_AT_accessibility(DW_ACCESS_public)
DW$187	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$47)
	.dwattr DW$187, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$187, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$48


DW$T$51	.dwtag  DW_TAG_union_type
	.dwattr DW$T$51, DW_AT_name("ADCOFFTRIM_REG")
	.dwattr DW$T$51, DW_AT_byte_size(0x01)
DW$188	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$188, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$188, DW_AT_accessibility(DW_ACCESS_public)
DW$189	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$50)
	.dwattr DW$189, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$189, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$51


DW$T$55	.dwtag  DW_TAG_union_type
	.dwattr DW$T$55, DW_AT_name("TIM_GROUP")
	.dwattr DW$T$55, DW_AT_byte_size(0x02)
DW$190	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$190, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$190, DW_AT_accessibility(DW_ACCESS_public)
DW$191	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$54)
	.dwattr DW$191, DW_AT_name("half"), DW_AT_symbol_name("_half")
	.dwattr DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$191, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$55


DW$T$57	.dwtag  DW_TAG_union_type
	.dwattr DW$T$57, DW_AT_name("PRD_GROUP")
	.dwattr DW$T$57, DW_AT_byte_size(0x02)
DW$192	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$192, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$192, DW_AT_accessibility(DW_ACCESS_public)
DW$193	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$56)
	.dwattr DW$193, DW_AT_name("half"), DW_AT_symbol_name("_half")
	.dwattr DW$193, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$193, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$57


DW$T$59	.dwtag  DW_TAG_union_type
	.dwattr DW$T$59, DW_AT_name("TCR_REG")
	.dwattr DW$T$59, DW_AT_byte_size(0x01)
DW$194	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$194, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$194, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$194, DW_AT_accessibility(DW_ACCESS_public)
DW$195	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$58)
	.dwattr DW$195, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$195, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$195, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$59


DW$T$61	.dwtag  DW_TAG_union_type
	.dwattr DW$T$61, DW_AT_name("TPR_REG")
	.dwattr DW$T$61, DW_AT_byte_size(0x01)
DW$196	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$196, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$196, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$196, DW_AT_accessibility(DW_ACCESS_public)
DW$197	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$60)
	.dwattr DW$197, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$197, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$197, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$61


DW$T$63	.dwtag  DW_TAG_union_type
	.dwattr DW$T$63, DW_AT_name("TPRH_REG")
	.dwattr DW$T$63, DW_AT_byte_size(0x01)
DW$198	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$198, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$198, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$198, DW_AT_accessibility(DW_ACCESS_public)
DW$199	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$62)
	.dwattr DW$199, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$199, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$199, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$63


DW$T$66	.dwtag  DW_TAG_union_type
	.dwattr DW$T$66, DW_AT_name("PIECTRL_REG")
	.dwattr DW$T$66, DW_AT_byte_size(0x01)
DW$200	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$200, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$200, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$200, DW_AT_accessibility(DW_ACCESS_public)
DW$201	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$65)
	.dwattr DW$201, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$201, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$201, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$66


DW$T$68	.dwtag  DW_TAG_union_type
	.dwattr DW$T$68, DW_AT_name("PIEACK_REG")
	.dwattr DW$T$68, DW_AT_byte_size(0x01)
DW$202	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$202, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$202, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$202, DW_AT_accessibility(DW_ACCESS_public)
DW$203	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$67)
	.dwattr DW$203, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$203, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$203, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$68


DW$T$70	.dwtag  DW_TAG_union_type
	.dwattr DW$T$70, DW_AT_name("PIEIER_REG")
	.dwattr DW$T$70, DW_AT_byte_size(0x01)
DW$204	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$204, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$204, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$204, DW_AT_accessibility(DW_ACCESS_public)
DW$205	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$69)
	.dwattr DW$205, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$205, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$205, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$70


DW$T$72	.dwtag  DW_TAG_union_type
	.dwattr DW$T$72, DW_AT_name("PIEIFR_REG")
	.dwattr DW$T$72, DW_AT_byte_size(0x01)
DW$206	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$206, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$206, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$206, DW_AT_accessibility(DW_ACCESS_public)
DW$207	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$71)
	.dwattr DW$207, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$207, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$207, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$72


DW$T$75	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$75, DW_AT_byte_size(0x1e)
DW$208	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$208, DW_AT_name("u16_value"), DW_AT_symbol_name("_u16_value")
	.dwattr DW$208, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$208, DW_AT_accessibility(DW_ACCESS_public)
DW$209	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$74)
	.dwattr DW$209, DW_AT_name("q17_position"), DW_AT_symbol_name("_q17_position")
	.dwattr DW$209, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$209, DW_AT_accessibility(DW_ACCESS_public)
DW$210	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$74)
	.dwattr DW$210, DW_AT_name("q17_position_yet"), DW_AT_symbol_name("_q17_position_yet")
	.dwattr DW$210, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$210, DW_AT_accessibility(DW_ACCESS_public)
DW$211	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$74)
	.dwattr DW$211, DW_AT_name("q17_position_diff"), DW_AT_symbol_name("_q17_position_diff")
	.dwattr DW$211, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$211, DW_AT_accessibility(DW_ACCESS_public)
DW$212	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$74)
	.dwattr DW$212, DW_AT_name("q17_high_coefficient"), DW_AT_symbol_name("_q17_high_coefficient")
	.dwattr DW$212, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$212, DW_AT_accessibility(DW_ACCESS_public)
DW$213	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$74)
	.dwattr DW$213, DW_AT_name("q17_low_coefficient"), DW_AT_symbol_name("_q17_low_coefficient")
	.dwattr DW$213, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$213, DW_AT_accessibility(DW_ACCESS_public)
DW$214	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$74)
	.dwattr DW$214, DW_AT_name("q17_max_val"), DW_AT_symbol_name("_q17_max_val")
	.dwattr DW$214, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$214, DW_AT_accessibility(DW_ACCESS_public)
DW$215	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$74)
	.dwattr DW$215, DW_AT_name("q17_min_val"), DW_AT_symbol_name("_q17_min_val")
	.dwattr DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$215, DW_AT_accessibility(DW_ACCESS_public)
DW$216	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$74)
	.dwattr DW$216, DW_AT_name("q17_mid_val"), DW_AT_symbol_name("_q17_mid_val")
	.dwattr DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$216, DW_AT_accessibility(DW_ACCESS_public)
DW$217	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$74)
	.dwattr DW$217, DW_AT_name("q17_lpf_out_data_yet"), DW_AT_symbol_name("_q17_lpf_out_data_yet")
	.dwattr DW$217, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$217, DW_AT_accessibility(DW_ACCESS_public)
DW$218	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$74)
	.dwattr DW$218, DW_AT_name("q17_lpf_out_data"), DW_AT_symbol_name("_q17_lpf_out_data")
	.dwattr DW$218, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$218, DW_AT_accessibility(DW_ACCESS_public)
DW$219	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$74)
	.dwattr DW$219, DW_AT_name("q17_lpf_in_data"), DW_AT_symbol_name("_q17_lpf_in_data")
	.dwattr DW$219, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$219, DW_AT_accessibility(DW_ACCESS_public)
DW$220	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$74)
	.dwattr DW$220, DW_AT_name("q17_lpf_out_data_diff"), DW_AT_symbol_name("_q17_lpf_out_data_diff")
	.dwattr DW$220, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$220, DW_AT_accessibility(DW_ACCESS_public)
DW$221	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$74)
	.dwattr DW$221, DW_AT_name("q17_lpf_in_data_diff"), DW_AT_symbol_name("_q17_lpf_in_data_diff")
	.dwattr DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$221, DW_AT_accessibility(DW_ACCESS_public)
DW$222	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$74)
	.dwattr DW$222, DW_AT_name("q17_lpf_in_data_diff_yet"), DW_AT_symbol_name("_q17_lpf_in_data_diff_yet")
	.dwattr DW$222, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$222, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$75

DW$T$74	.dwtag  DW_TAG_typedef, DW_AT_name("_iq17"), DW_AT_type(*DW$T$12)
	.dwattr DW$T$74, DW_AT_language(DW_LANG_C)

DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$20, DW_AT_name("GPADAT_BITS")
	.dwattr DW$T$20, DW_AT_byte_size(0x02)
DW$223	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$223, DW_AT_name("GPIO0"), DW_AT_symbol_name("_GPIO0")
	.dwattr DW$223, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$223, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$223, DW_AT_accessibility(DW_ACCESS_public)
DW$224	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$224, DW_AT_name("GPIO1"), DW_AT_symbol_name("_GPIO1")
	.dwattr DW$224, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$224, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$224, DW_AT_accessibility(DW_ACCESS_public)
DW$225	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$225, DW_AT_name("GPIO2"), DW_AT_symbol_name("_GPIO2")
	.dwattr DW$225, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$225, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$225, DW_AT_accessibility(DW_ACCESS_public)
DW$226	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$226, DW_AT_name("GPIO3"), DW_AT_symbol_name("_GPIO3")
	.dwattr DW$226, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$226, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$226, DW_AT_accessibility(DW_ACCESS_public)
DW$227	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$227, DW_AT_name("GPIO4"), DW_AT_symbol_name("_GPIO4")
	.dwattr DW$227, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$227, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$227, DW_AT_accessibility(DW_ACCESS_public)
DW$228	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$228, DW_AT_name("GPIO5"), DW_AT_symbol_name("_GPIO5")
	.dwattr DW$228, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$228, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$228, DW_AT_accessibility(DW_ACCESS_public)
DW$229	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$229, DW_AT_name("GPIO6"), DW_AT_symbol_name("_GPIO6")
	.dwattr DW$229, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$229, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$229, DW_AT_accessibility(DW_ACCESS_public)
DW$230	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$230, DW_AT_name("GPIO7"), DW_AT_symbol_name("_GPIO7")
	.dwattr DW$230, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$230, DW_AT_accessibility(DW_ACCESS_public)
DW$231	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$231, DW_AT_name("GPIO8"), DW_AT_symbol_name("_GPIO8")
	.dwattr DW$231, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$231, DW_AT_accessibility(DW_ACCESS_public)
DW$232	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$232, DW_AT_name("GPIO9"), DW_AT_symbol_name("_GPIO9")
	.dwattr DW$232, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$232, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$232, DW_AT_accessibility(DW_ACCESS_public)
DW$233	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$233, DW_AT_name("GPIO10"), DW_AT_symbol_name("_GPIO10")
	.dwattr DW$233, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$233, DW_AT_accessibility(DW_ACCESS_public)
DW$234	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$234, DW_AT_name("GPIO11"), DW_AT_symbol_name("_GPIO11")
	.dwattr DW$234, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$234, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$234, DW_AT_accessibility(DW_ACCESS_public)
DW$235	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$235, DW_AT_name("GPIO12"), DW_AT_symbol_name("_GPIO12")
	.dwattr DW$235, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$235, DW_AT_accessibility(DW_ACCESS_public)
DW$236	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$236, DW_AT_name("GPIO13"), DW_AT_symbol_name("_GPIO13")
	.dwattr DW$236, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$236, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$236, DW_AT_accessibility(DW_ACCESS_public)
DW$237	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$237, DW_AT_name("GPIO14"), DW_AT_symbol_name("_GPIO14")
	.dwattr DW$237, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$237, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$237, DW_AT_accessibility(DW_ACCESS_public)
DW$238	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$238, DW_AT_name("GPIO15"), DW_AT_symbol_name("_GPIO15")
	.dwattr DW$238, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$238, DW_AT_accessibility(DW_ACCESS_public)
DW$239	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$239, DW_AT_name("GPIO16"), DW_AT_symbol_name("_GPIO16")
	.dwattr DW$239, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$239, DW_AT_accessibility(DW_ACCESS_public)
DW$240	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$240, DW_AT_name("GPIO17"), DW_AT_symbol_name("_GPIO17")
	.dwattr DW$240, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$240, DW_AT_accessibility(DW_ACCESS_public)
DW$241	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$241, DW_AT_name("GPIO18"), DW_AT_symbol_name("_GPIO18")
	.dwattr DW$241, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$241, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$241, DW_AT_accessibility(DW_ACCESS_public)
DW$242	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$242, DW_AT_name("GPIO19"), DW_AT_symbol_name("_GPIO19")
	.dwattr DW$242, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$242, DW_AT_accessibility(DW_ACCESS_public)
DW$243	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$243, DW_AT_name("GPIO20"), DW_AT_symbol_name("_GPIO20")
	.dwattr DW$243, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$243, DW_AT_accessibility(DW_ACCESS_public)
DW$244	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$244, DW_AT_name("GPIO21"), DW_AT_symbol_name("_GPIO21")
	.dwattr DW$244, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$244, DW_AT_accessibility(DW_ACCESS_public)
DW$245	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$245, DW_AT_name("GPIO22"), DW_AT_symbol_name("_GPIO22")
	.dwattr DW$245, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$245, DW_AT_accessibility(DW_ACCESS_public)
DW$246	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$246, DW_AT_name("GPIO23"), DW_AT_symbol_name("_GPIO23")
	.dwattr DW$246, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$246, DW_AT_accessibility(DW_ACCESS_public)
DW$247	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$247, DW_AT_name("GPIO24"), DW_AT_symbol_name("_GPIO24")
	.dwattr DW$247, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$247, DW_AT_accessibility(DW_ACCESS_public)
DW$248	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$248, DW_AT_name("GPIO25"), DW_AT_symbol_name("_GPIO25")
	.dwattr DW$248, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$248, DW_AT_accessibility(DW_ACCESS_public)
DW$249	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$249, DW_AT_name("GPIO26"), DW_AT_symbol_name("_GPIO26")
	.dwattr DW$249, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$249, DW_AT_accessibility(DW_ACCESS_public)
DW$250	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$250, DW_AT_name("GPIO27"), DW_AT_symbol_name("_GPIO27")
	.dwattr DW$250, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$250, DW_AT_accessibility(DW_ACCESS_public)
DW$251	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$251, DW_AT_name("GPIO28"), DW_AT_symbol_name("_GPIO28")
	.dwattr DW$251, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$251, DW_AT_accessibility(DW_ACCESS_public)
DW$252	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$252, DW_AT_name("GPIO29"), DW_AT_symbol_name("_GPIO29")
	.dwattr DW$252, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$252, DW_AT_accessibility(DW_ACCESS_public)
DW$253	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$253, DW_AT_name("GPIO30"), DW_AT_symbol_name("_GPIO30")
	.dwattr DW$253, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$253, DW_AT_accessibility(DW_ACCESS_public)
DW$254	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$254, DW_AT_name("GPIO31"), DW_AT_symbol_name("_GPIO31")
	.dwattr DW$254, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$254, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20


DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$23, DW_AT_name("GPBDAT_BITS")
	.dwattr DW$T$23, DW_AT_byte_size(0x02)
DW$255	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$255, DW_AT_name("GPIO32"), DW_AT_symbol_name("_GPIO32")
	.dwattr DW$255, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$255, DW_AT_accessibility(DW_ACCESS_public)
DW$256	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$256, DW_AT_name("GPIO33"), DW_AT_symbol_name("_GPIO33")
	.dwattr DW$256, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$256, DW_AT_accessibility(DW_ACCESS_public)
DW$257	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$257, DW_AT_name("GPIO34"), DW_AT_symbol_name("_GPIO34")
	.dwattr DW$257, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$257, DW_AT_accessibility(DW_ACCESS_public)
DW$258	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$258, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$258, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$258, DW_AT_accessibility(DW_ACCESS_public)
DW$259	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$259, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$259, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0c)
	.dwattr DW$259, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$259, DW_AT_accessibility(DW_ACCESS_public)
DW$260	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$260, DW_AT_name("rsvd3"), DW_AT_symbol_name("_rsvd3")
	.dwattr DW$260, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x10)
	.dwattr DW$260, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$260, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$23


DW$T$27	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$27, DW_AT_name("ADCTRL1_BITS")
	.dwattr DW$T$27, DW_AT_byte_size(0x01)
DW$261	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$261, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$261, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$261, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$261, DW_AT_accessibility(DW_ACCESS_public)
DW$262	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$262, DW_AT_name("SEQ_CASC"), DW_AT_symbol_name("_SEQ_CASC")
	.dwattr DW$262, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$262, DW_AT_accessibility(DW_ACCESS_public)
DW$263	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$263, DW_AT_name("SEQ_OVRD"), DW_AT_symbol_name("_SEQ_OVRD")
	.dwattr DW$263, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$263, DW_AT_accessibility(DW_ACCESS_public)
DW$264	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$264, DW_AT_name("CONT_RUN"), DW_AT_symbol_name("_CONT_RUN")
	.dwattr DW$264, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$264, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$264, DW_AT_accessibility(DW_ACCESS_public)
DW$265	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$265, DW_AT_name("CPS"), DW_AT_symbol_name("_CPS")
	.dwattr DW$265, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$265, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$265, DW_AT_accessibility(DW_ACCESS_public)
DW$266	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$266, DW_AT_name("ACQ_PS"), DW_AT_symbol_name("_ACQ_PS")
	.dwattr DW$266, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x04)
	.dwattr DW$266, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$266, DW_AT_accessibility(DW_ACCESS_public)
DW$267	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$267, DW_AT_name("SUSMOD"), DW_AT_symbol_name("_SUSMOD")
	.dwattr DW$267, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x02)
	.dwattr DW$267, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$267, DW_AT_accessibility(DW_ACCESS_public)
DW$268	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$268, DW_AT_name("RESET"), DW_AT_symbol_name("_RESET")
	.dwattr DW$268, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$268, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$268, DW_AT_accessibility(DW_ACCESS_public)
DW$269	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$269, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$269, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$269, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$269, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$27


DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$31, DW_AT_name("ADCMAXCONV_BITS")
	.dwattr DW$T$31, DW_AT_byte_size(0x01)
DW$270	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$270, DW_AT_name("MAX_CONV1"), DW_AT_symbol_name("_MAX_CONV1")
	.dwattr DW$270, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$270, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$270, DW_AT_accessibility(DW_ACCESS_public)
DW$271	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$271, DW_AT_name("MAX_CONV2"), DW_AT_symbol_name("_MAX_CONV2")
	.dwattr DW$271, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x03)
	.dwattr DW$271, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$271, DW_AT_accessibility(DW_ACCESS_public)
DW$272	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$272, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$272, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x09)
	.dwattr DW$272, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$272, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$31


DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$33, DW_AT_name("ADCCHSELSEQ1_BITS")
	.dwattr DW$T$33, DW_AT_byte_size(0x01)
DW$273	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$273, DW_AT_name("CONV00"), DW_AT_symbol_name("_CONV00")
	.dwattr DW$273, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$273, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$273, DW_AT_accessibility(DW_ACCESS_public)
DW$274	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$274, DW_AT_name("CONV01"), DW_AT_symbol_name("_CONV01")
	.dwattr DW$274, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x04)
	.dwattr DW$274, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$274, DW_AT_accessibility(DW_ACCESS_public)
DW$275	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$275, DW_AT_name("CONV02"), DW_AT_symbol_name("_CONV02")
	.dwattr DW$275, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x04)
	.dwattr DW$275, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$275, DW_AT_accessibility(DW_ACCESS_public)
DW$276	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$276, DW_AT_name("CONV03"), DW_AT_symbol_name("_CONV03")
	.dwattr DW$276, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$276, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$276, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$33


DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$35, DW_AT_name("ADCCHSELSEQ2_BITS")
	.dwattr DW$T$35, DW_AT_byte_size(0x01)
DW$277	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$277, DW_AT_name("CONV04"), DW_AT_symbol_name("_CONV04")
	.dwattr DW$277, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$277, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$277, DW_AT_accessibility(DW_ACCESS_public)
DW$278	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$278, DW_AT_name("CONV05"), DW_AT_symbol_name("_CONV05")
	.dwattr DW$278, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x04)
	.dwattr DW$278, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$278, DW_AT_accessibility(DW_ACCESS_public)
DW$279	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$279, DW_AT_name("CONV06"), DW_AT_symbol_name("_CONV06")
	.dwattr DW$279, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x04)
	.dwattr DW$279, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$279, DW_AT_accessibility(DW_ACCESS_public)
DW$280	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$280, DW_AT_name("CONV07"), DW_AT_symbol_name("_CONV07")
	.dwattr DW$280, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$280, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$280, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$35


DW$T$37	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$37, DW_AT_name("ADCCHSELSEQ3_BITS")
	.dwattr DW$T$37, DW_AT_byte_size(0x01)
DW$281	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$281, DW_AT_name("CONV08"), DW_AT_symbol_name("_CONV08")
	.dwattr DW$281, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$281, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$281, DW_AT_accessibility(DW_ACCESS_public)
DW$282	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$282, DW_AT_name("CONV09"), DW_AT_symbol_name("_CONV09")
	.dwattr DW$282, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x04)
	.dwattr DW$282, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$282, DW_AT_accessibility(DW_ACCESS_public)
DW$283	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$283, DW_AT_name("CONV10"), DW_AT_symbol_name("_CONV10")
	.dwattr DW$283, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x04)
	.dwattr DW$283, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$283, DW_AT_accessibility(DW_ACCESS_public)
DW$284	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$284, DW_AT_name("CONV11"), DW_AT_symbol_name("_CONV11")
	.dwattr DW$284, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$284, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$284, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$37


DW$T$39	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$39, DW_AT_name("ADCCHSELSEQ4_BITS")
	.dwattr DW$T$39, DW_AT_byte_size(0x01)
DW$285	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$285, DW_AT_name("CONV12"), DW_AT_symbol_name("_CONV12")
	.dwattr DW$285, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$285, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$285, DW_AT_accessibility(DW_ACCESS_public)
DW$286	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$286, DW_AT_name("CONV13"), DW_AT_symbol_name("_CONV13")
	.dwattr DW$286, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x04)
	.dwattr DW$286, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$286, DW_AT_accessibility(DW_ACCESS_public)
DW$287	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$287, DW_AT_name("CONV14"), DW_AT_symbol_name("_CONV14")
	.dwattr DW$287, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x04)
	.dwattr DW$287, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$287, DW_AT_accessibility(DW_ACCESS_public)
DW$288	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$288, DW_AT_name("CONV15"), DW_AT_symbol_name("_CONV15")
	.dwattr DW$288, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$288, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$288, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$39


DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$41, DW_AT_name("ADCASEQSR_BITS")
	.dwattr DW$T$41, DW_AT_byte_size(0x01)
DW$289	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$289, DW_AT_name("SEQ1_STATE"), DW_AT_symbol_name("_SEQ1_STATE")
	.dwattr DW$289, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$289, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$289, DW_AT_accessibility(DW_ACCESS_public)
DW$290	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$290, DW_AT_name("SEQ2_STATE"), DW_AT_symbol_name("_SEQ2_STATE")
	.dwattr DW$290, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x03)
	.dwattr DW$290, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$290, DW_AT_accessibility(DW_ACCESS_public)
DW$291	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$291, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$291, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$291, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$291, DW_AT_accessibility(DW_ACCESS_public)
DW$292	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$292, DW_AT_name("SEQ_CNTR"), DW_AT_symbol_name("_SEQ_CNTR")
	.dwattr DW$292, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x04)
	.dwattr DW$292, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$292, DW_AT_accessibility(DW_ACCESS_public)
DW$293	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$293, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$293, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$293, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$293, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$41


DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$43, DW_AT_name("ADCTRL3_BITS")
	.dwattr DW$T$43, DW_AT_byte_size(0x01)
DW$294	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$294, DW_AT_name("SMODE_SEL"), DW_AT_symbol_name("_SMODE_SEL")
	.dwattr DW$294, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$294, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$294, DW_AT_accessibility(DW_ACCESS_public)
DW$295	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$295, DW_AT_name("ADCCLKPS"), DW_AT_symbol_name("_ADCCLKPS")
	.dwattr DW$295, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x04)
	.dwattr DW$295, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$295, DW_AT_accessibility(DW_ACCESS_public)
DW$296	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$296, DW_AT_name("ADCPWDN"), DW_AT_symbol_name("_ADCPWDN")
	.dwattr DW$296, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$296, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$296, DW_AT_accessibility(DW_ACCESS_public)
DW$297	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$297, DW_AT_name("ADCBGRFDN"), DW_AT_symbol_name("_ADCBGRFDN")
	.dwattr DW$297, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x02)
	.dwattr DW$297, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$297, DW_AT_accessibility(DW_ACCESS_public)
DW$298	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$298, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$298, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$298, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$298, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$43


DW$T$45	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$45, DW_AT_name("ADCST_BITS")
	.dwattr DW$T$45, DW_AT_byte_size(0x01)
DW$299	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$299, DW_AT_name("INT_SEQ1"), DW_AT_symbol_name("_INT_SEQ1")
	.dwattr DW$299, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$299, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$299, DW_AT_accessibility(DW_ACCESS_public)
DW$300	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$300, DW_AT_name("INT_SEQ2"), DW_AT_symbol_name("_INT_SEQ2")
	.dwattr DW$300, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$300, DW_AT_accessibility(DW_ACCESS_public)
DW$301	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$301, DW_AT_name("SEQ1_BSY"), DW_AT_symbol_name("_SEQ1_BSY")
	.dwattr DW$301, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$301, DW_AT_accessibility(DW_ACCESS_public)
DW$302	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$302, DW_AT_name("SEQ2_BSY"), DW_AT_symbol_name("_SEQ2_BSY")
	.dwattr DW$302, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$302, DW_AT_accessibility(DW_ACCESS_public)
DW$303	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$303, DW_AT_name("INT_SEQ1_CLR"), DW_AT_symbol_name("_INT_SEQ1_CLR")
	.dwattr DW$303, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$303, DW_AT_accessibility(DW_ACCESS_public)
DW$304	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$304, DW_AT_name("INT_SEQ2_CLR"), DW_AT_symbol_name("_INT_SEQ2_CLR")
	.dwattr DW$304, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$304, DW_AT_accessibility(DW_ACCESS_public)
DW$305	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$305, DW_AT_name("EOS_BUF1"), DW_AT_symbol_name("_EOS_BUF1")
	.dwattr DW$305, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$305, DW_AT_accessibility(DW_ACCESS_public)
DW$306	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$306, DW_AT_name("EOS_BUF2"), DW_AT_symbol_name("_EOS_BUF2")
	.dwattr DW$306, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$306, DW_AT_accessibility(DW_ACCESS_public)
DW$307	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$307, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$307, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$307, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$45


DW$T$47	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$47, DW_AT_name("ADCREFSEL_BITS")
	.dwattr DW$T$47, DW_AT_byte_size(0x01)
DW$308	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$308, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$308, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x0e)
	.dwattr DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$308, DW_AT_accessibility(DW_ACCESS_public)
DW$309	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$309, DW_AT_name("REF_SEL"), DW_AT_symbol_name("_REF_SEL")
	.dwattr DW$309, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x02)
	.dwattr DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$309, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$47


DW$T$50	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$50, DW_AT_name("ADCOFFTRIM_BITS")
	.dwattr DW$T$50, DW_AT_byte_size(0x01)
DW$310	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$49)
	.dwattr DW$310, DW_AT_name("OFFSET_TRIM"), DW_AT_symbol_name("_OFFSET_TRIM")
	.dwattr DW$310, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x09)
	.dwattr DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$310, DW_AT_accessibility(DW_ACCESS_public)
DW$311	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$311, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$311, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x07)
	.dwattr DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$311, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$50


DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$54, DW_AT_name("TIM_REG")
	.dwattr DW$T$54, DW_AT_byte_size(0x02)
DW$312	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$312, DW_AT_name("LSW"), DW_AT_symbol_name("_LSW")
	.dwattr DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$312, DW_AT_accessibility(DW_ACCESS_public)
DW$313	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$313, DW_AT_name("MSW"), DW_AT_symbol_name("_MSW")
	.dwattr DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$313, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$54


DW$T$56	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$56, DW_AT_name("PRD_REG")
	.dwattr DW$T$56, DW_AT_byte_size(0x02)
DW$314	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$314, DW_AT_name("LSW"), DW_AT_symbol_name("_LSW")
	.dwattr DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$314, DW_AT_accessibility(DW_ACCESS_public)
DW$315	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$315, DW_AT_name("MSW"), DW_AT_symbol_name("_MSW")
	.dwattr DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$315, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$56


DW$T$58	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$58, DW_AT_name("TCR_BITS")
	.dwattr DW$T$58, DW_AT_byte_size(0x01)
DW$316	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$316, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$316, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$316, DW_AT_accessibility(DW_ACCESS_public)
DW$317	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$317, DW_AT_name("TSS"), DW_AT_symbol_name("_TSS")
	.dwattr DW$317, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$317, DW_AT_accessibility(DW_ACCESS_public)
DW$318	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$318, DW_AT_name("TRB"), DW_AT_symbol_name("_TRB")
	.dwattr DW$318, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$318, DW_AT_accessibility(DW_ACCESS_public)
DW$319	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$319, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$319, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x04)
	.dwattr DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$319, DW_AT_accessibility(DW_ACCESS_public)
DW$320	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$320, DW_AT_name("SOFT"), DW_AT_symbol_name("_SOFT")
	.dwattr DW$320, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$320, DW_AT_accessibility(DW_ACCESS_public)
DW$321	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$321, DW_AT_name("FREE"), DW_AT_symbol_name("_FREE")
	.dwattr DW$321, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$321, DW_AT_accessibility(DW_ACCESS_public)
DW$322	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$322, DW_AT_name("rsvd3"), DW_AT_symbol_name("_rsvd3")
	.dwattr DW$322, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x02)
	.dwattr DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$322, DW_AT_accessibility(DW_ACCESS_public)
DW$323	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$323, DW_AT_name("TIE"), DW_AT_symbol_name("_TIE")
	.dwattr DW$323, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$323, DW_AT_accessibility(DW_ACCESS_public)
DW$324	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$324, DW_AT_name("TIF"), DW_AT_symbol_name("_TIF")
	.dwattr DW$324, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$324, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$58


DW$T$60	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$60, DW_AT_name("TPR_BITS")
	.dwattr DW$T$60, DW_AT_byte_size(0x01)
DW$325	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$325, DW_AT_name("TDDR"), DW_AT_symbol_name("_TDDR")
	.dwattr DW$325, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x08)
	.dwattr DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$325, DW_AT_accessibility(DW_ACCESS_public)
DW$326	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$326, DW_AT_name("PSC"), DW_AT_symbol_name("_PSC")
	.dwattr DW$326, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$326, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$60


DW$T$62	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$62, DW_AT_name("TPRH_BITS")
	.dwattr DW$T$62, DW_AT_byte_size(0x01)
DW$327	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$327, DW_AT_name("TDDRH"), DW_AT_symbol_name("_TDDRH")
	.dwattr DW$327, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x08)
	.dwattr DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$327, DW_AT_accessibility(DW_ACCESS_public)
DW$328	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$328, DW_AT_name("PSCH"), DW_AT_symbol_name("_PSCH")
	.dwattr DW$328, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$328, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$62


DW$T$65	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$65, DW_AT_name("PIECTRL_BITS")
	.dwattr DW$T$65, DW_AT_byte_size(0x01)
DW$329	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$329, DW_AT_name("ENPIE"), DW_AT_symbol_name("_ENPIE")
	.dwattr DW$329, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$329, DW_AT_accessibility(DW_ACCESS_public)
DW$330	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$330, DW_AT_name("PIEVECT"), DW_AT_symbol_name("_PIEVECT")
	.dwattr DW$330, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0f)
	.dwattr DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$330, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$65


DW$T$67	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$67, DW_AT_name("PIEACK_BITS")
	.dwattr DW$T$67, DW_AT_byte_size(0x01)
DW$331	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$331, DW_AT_name("ACK1"), DW_AT_symbol_name("_ACK1")
	.dwattr DW$331, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$331, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$331, DW_AT_accessibility(DW_ACCESS_public)
DW$332	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$332, DW_AT_name("ACK2"), DW_AT_symbol_name("_ACK2")
	.dwattr DW$332, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$332, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$332, DW_AT_accessibility(DW_ACCESS_public)
DW$333	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$333, DW_AT_name("ACK3"), DW_AT_symbol_name("_ACK3")
	.dwattr DW$333, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$333, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$333, DW_AT_accessibility(DW_ACCESS_public)
DW$334	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$334, DW_AT_name("ACK4"), DW_AT_symbol_name("_ACK4")
	.dwattr DW$334, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$334, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$334, DW_AT_accessibility(DW_ACCESS_public)
DW$335	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$335, DW_AT_name("ACK5"), DW_AT_symbol_name("_ACK5")
	.dwattr DW$335, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$335, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$335, DW_AT_accessibility(DW_ACCESS_public)
DW$336	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$336, DW_AT_name("ACK6"), DW_AT_symbol_name("_ACK6")
	.dwattr DW$336, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$336, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$336, DW_AT_accessibility(DW_ACCESS_public)
DW$337	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$337, DW_AT_name("ACK7"), DW_AT_symbol_name("_ACK7")
	.dwattr DW$337, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$337, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$337, DW_AT_accessibility(DW_ACCESS_public)
DW$338	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$338, DW_AT_name("ACK8"), DW_AT_symbol_name("_ACK8")
	.dwattr DW$338, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$338, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$338, DW_AT_accessibility(DW_ACCESS_public)
DW$339	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$339, DW_AT_name("ACK9"), DW_AT_symbol_name("_ACK9")
	.dwattr DW$339, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$339, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$339, DW_AT_accessibility(DW_ACCESS_public)
DW$340	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$340, DW_AT_name("ACK10"), DW_AT_symbol_name("_ACK10")
	.dwattr DW$340, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$340, DW_AT_accessibility(DW_ACCESS_public)
DW$341	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$341, DW_AT_name("ACK11"), DW_AT_symbol_name("_ACK11")
	.dwattr DW$341, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$341, DW_AT_accessibility(DW_ACCESS_public)
DW$342	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$342, DW_AT_name("ACK12"), DW_AT_symbol_name("_ACK12")
	.dwattr DW$342, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$342, DW_AT_accessibility(DW_ACCESS_public)
DW$343	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$343, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$343, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$343, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$67


DW$T$69	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$69, DW_AT_name("PIEIER_BITS")
	.dwattr DW$T$69, DW_AT_byte_size(0x01)
DW$344	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$344, DW_AT_name("INTx1"), DW_AT_symbol_name("_INTx1")
	.dwattr DW$344, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$344, DW_AT_accessibility(DW_ACCESS_public)
DW$345	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$345, DW_AT_name("INTx2"), DW_AT_symbol_name("_INTx2")
	.dwattr DW$345, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$345, DW_AT_accessibility(DW_ACCESS_public)
DW$346	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$346, DW_AT_name("INTx3"), DW_AT_symbol_name("_INTx3")
	.dwattr DW$346, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$346, DW_AT_accessibility(DW_ACCESS_public)
DW$347	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$347, DW_AT_name("INTx4"), DW_AT_symbol_name("_INTx4")
	.dwattr DW$347, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$347, DW_AT_accessibility(DW_ACCESS_public)
DW$348	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$348, DW_AT_name("INTx5"), DW_AT_symbol_name("_INTx5")
	.dwattr DW$348, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$348, DW_AT_accessibility(DW_ACCESS_public)
DW$349	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$349, DW_AT_name("INTx6"), DW_AT_symbol_name("_INTx6")
	.dwattr DW$349, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$349, DW_AT_accessibility(DW_ACCESS_public)
DW$350	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$350, DW_AT_name("INTx7"), DW_AT_symbol_name("_INTx7")
	.dwattr DW$350, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$350, DW_AT_accessibility(DW_ACCESS_public)
DW$351	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$351, DW_AT_name("INTx8"), DW_AT_symbol_name("_INTx8")
	.dwattr DW$351, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$351, DW_AT_accessibility(DW_ACCESS_public)
DW$352	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$352, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$352, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$352, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$69


DW$T$71	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$71, DW_AT_name("PIEIFR_BITS")
	.dwattr DW$T$71, DW_AT_byte_size(0x01)
DW$353	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$353, DW_AT_name("INTx1"), DW_AT_symbol_name("_INTx1")
	.dwattr DW$353, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$353, DW_AT_accessibility(DW_ACCESS_public)
DW$354	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$354, DW_AT_name("INTx2"), DW_AT_symbol_name("_INTx2")
	.dwattr DW$354, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$354, DW_AT_accessibility(DW_ACCESS_public)
DW$355	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$355, DW_AT_name("INTx3"), DW_AT_symbol_name("_INTx3")
	.dwattr DW$355, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$355, DW_AT_accessibility(DW_ACCESS_public)
DW$356	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$356, DW_AT_name("INTx4"), DW_AT_symbol_name("_INTx4")
	.dwattr DW$356, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$356, DW_AT_accessibility(DW_ACCESS_public)
DW$357	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$357, DW_AT_name("INTx5"), DW_AT_symbol_name("_INTx5")
	.dwattr DW$357, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$357, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$357, DW_AT_accessibility(DW_ACCESS_public)
DW$358	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$358, DW_AT_name("INTx6"), DW_AT_symbol_name("_INTx6")
	.dwattr DW$358, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$358, DW_AT_accessibility(DW_ACCESS_public)
DW$359	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$359, DW_AT_name("INTx7"), DW_AT_symbol_name("_INTx7")
	.dwattr DW$359, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$359, DW_AT_accessibility(DW_ACCESS_public)
DW$360	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$360, DW_AT_name("INTx8"), DW_AT_symbol_name("_INTx8")
	.dwattr DW$360, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$360, DW_AT_accessibility(DW_ACCESS_public)
DW$361	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$361, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$361, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$361, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$361, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$71

DW$T$49	.dwtag  DW_TAG_typedef, DW_AT_name("int16"), DW_AT_type(*DW$T$10)
	.dwattr DW$T$49, DW_AT_language(DW_LANG_C)

	.dwattr DW$33, DW_AT_external(0x01)
	.dwattr DW$27, DW_AT_external(0x01)
	.dwattr DW$30, DW_AT_external(0x01)
	.dwattr DW$29, DW_AT_external(0x01)
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

DW$362	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$362, DW_AT_location[DW_OP_reg0]
DW$363	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$363, DW_AT_location[DW_OP_reg1]
DW$364	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$364, DW_AT_location[DW_OP_reg2]
DW$365	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$365, DW_AT_location[DW_OP_reg3]
DW$366	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$366, DW_AT_location[DW_OP_reg4]
DW$367	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$367, DW_AT_location[DW_OP_reg5]
DW$368	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$368, DW_AT_location[DW_OP_reg6]
DW$369	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$369, DW_AT_location[DW_OP_reg7]
DW$370	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$370, DW_AT_location[DW_OP_reg8]
DW$371	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$371, DW_AT_location[DW_OP_reg9]
DW$372	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$372, DW_AT_location[DW_OP_reg10]
DW$373	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$373, DW_AT_location[DW_OP_reg11]
DW$374	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$374, DW_AT_location[DW_OP_reg12]
DW$375	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$375, DW_AT_location[DW_OP_reg13]
DW$376	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$376, DW_AT_location[DW_OP_reg14]
DW$377	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$377, DW_AT_location[DW_OP_reg15]
DW$378	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$378, DW_AT_location[DW_OP_reg16]
DW$379	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$379, DW_AT_location[DW_OP_reg17]
DW$380	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$380, DW_AT_location[DW_OP_reg18]
DW$381	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$381, DW_AT_location[DW_OP_reg19]
DW$382	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$382, DW_AT_location[DW_OP_reg20]
DW$383	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$383, DW_AT_location[DW_OP_reg21]
DW$384	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$384, DW_AT_location[DW_OP_reg22]
DW$385	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$385, DW_AT_location[DW_OP_reg23]
DW$386	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$386, DW_AT_location[DW_OP_reg24]
DW$387	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$387, DW_AT_location[DW_OP_reg25]
DW$388	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$388, DW_AT_location[DW_OP_reg26]
DW$389	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$389, DW_AT_location[DW_OP_reg27]
DW$390	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$390, DW_AT_location[DW_OP_reg28]
DW$391	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$391, DW_AT_location[DW_OP_reg29]
DW$392	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$392, DW_AT_location[DW_OP_reg30]
DW$393	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$393, DW_AT_location[DW_OP_reg31]
DW$394	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$394, DW_AT_location[DW_OP_regx 0x20]
DW$395	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$395, DW_AT_location[DW_OP_regx 0x21]
DW$396	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$396, DW_AT_location[DW_OP_regx 0x22]
DW$397	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$397, DW_AT_location[DW_OP_regx 0x23]
DW$398	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$398, DW_AT_location[DW_OP_regx 0x24]
DW$399	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$399, DW_AT_location[DW_OP_regx 0x25]
DW$400	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$400, DW_AT_location[DW_OP_regx 0x26]
DW$401	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$401, DW_AT_location[DW_OP_regx 0x27]
DW$402	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$402, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU

