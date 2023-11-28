;***************************************************************
;* TMS320C2000 C/C++ Codegen                         PC v4.1.3 *
;* Date/Time created: Tue Nov 28 13:29:20 2023                 *
;***************************************************************
	.compiler_opts --mem_model:code=flat --mem_model:data=large --silicon_version=28 
FP	.set	XAR2

DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_producer("TMS320C2000 C/C++ Codegen PC v4.1.3 Copyright (c) 1996-2006 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)

DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("adc_ISR"), DW_AT_symbol_name("_adc_ISR")
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)

DW$2	.dwtag  DW_TAG_subprogram, DW_AT_name("motor_timer2_ISR"), DW_AT_symbol_name("_motor_timer2_ISR")
	.dwattr DW$2, DW_AT_declaration(0x01)
	.dwattr DW$2, DW_AT_external(0x01)

DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("scia_ISR"), DW_AT_symbol_name("_scia_ISR")
	.dwattr DW$3, DW_AT_declaration(0x01)
	.dwattr DW$3, DW_AT_external(0x01)

DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("sensor_timer0_ISR"), DW_AT_symbol_name("_sensor_timer0_ISR")
	.dwattr DW$4, DW_AT_declaration(0x01)
	.dwattr DW$4, DW_AT_external(0x01)
	.global	_CpuTimer1
_CpuTimer1:	.usect	".ebss",8,1,1
DW$5	.dwtag  DW_TAG_variable, DW_AT_name("CpuTimer1"), DW_AT_symbol_name("_CpuTimer1")
	.dwattr DW$5, DW_AT_location[DW_OP_addr _CpuTimer1]
	.dwattr DW$5, DW_AT_type(*DW$T$34)
	.dwattr DW$5, DW_AT_external(0x01)
	.global	_CpuTimer2
_CpuTimer2:	.usect	".ebss",8,1,1
DW$6	.dwtag  DW_TAG_variable, DW_AT_name("CpuTimer2"), DW_AT_symbol_name("_CpuTimer2")
	.dwattr DW$6, DW_AT_location[DW_OP_addr _CpuTimer2]
	.dwattr DW$6, DW_AT_type(*DW$T$34)
	.dwattr DW$6, DW_AT_external(0x01)
	.global	_CpuTimer0
_CpuTimer0:	.usect	".ebss",8,1,1
DW$7	.dwtag  DW_TAG_variable, DW_AT_name("CpuTimer0"), DW_AT_symbol_name("_CpuTimer0")
	.dwattr DW$7, DW_AT_location[DW_OP_addr _CpuTimer0]
	.dwattr DW$7, DW_AT_type(*DW$T$34)
	.dwattr DW$7, DW_AT_external(0x01)
DW$8	.dwtag  DW_TAG_variable, DW_AT_name("CpuTimer1Regs"), DW_AT_symbol_name("_CpuTimer1Regs")
	.dwattr DW$8, DW_AT_type(*DW$T$32)
	.dwattr DW$8, DW_AT_declaration(0x01)
	.dwattr DW$8, DW_AT_external(0x01)
DW$9	.dwtag  DW_TAG_variable, DW_AT_name("CpuTimer0Regs"), DW_AT_symbol_name("_CpuTimer0Regs")
	.dwattr DW$9, DW_AT_type(*DW$T$32)
	.dwattr DW$9, DW_AT_declaration(0x01)
	.dwattr DW$9, DW_AT_external(0x01)
DW$10	.dwtag  DW_TAG_variable, DW_AT_name("CpuTimer2Regs"), DW_AT_symbol_name("_CpuTimer2Regs")
	.dwattr DW$10, DW_AT_type(*DW$T$32)
	.dwattr DW$10, DW_AT_declaration(0x01)
	.dwattr DW$10, DW_AT_external(0x01)
DW$11	.dwtag  DW_TAG_variable, DW_AT_name("PieCtrlRegs"), DW_AT_symbol_name("_PieCtrlRegs")
	.dwattr DW$11, DW_AT_type(*DW$T$74)
	.dwattr DW$11, DW_AT_declaration(0x01)
	.dwattr DW$11, DW_AT_external(0x01)
DW$12	.dwtag  DW_TAG_variable, DW_AT_name("PieVectTable"), DW_AT_symbol_name("_PieVectTable")
	.dwattr DW$12, DW_AT_type(*DW$T$47)
	.dwattr DW$12, DW_AT_declaration(0x01)
	.dwattr DW$12, DW_AT_external(0x01)
;	..\Compiler\bin\opt2000.exe C:\Users\노호진\AppData\Local\Temp\TI80810 C:\Users\노호진\AppData\Local\Temp\TI8084 
;	..\Compiler\bin\ac2000.exe --keep_unneeded_types -D_INLINE -DLARGE_MODEL -I..\include --version=28 --keep_unneeded_types --mem_model:code=flat --mem_model:data=large -m --i_output_file C:\Users\노호진\AppData\Local\Temp\TI8082 --template_info_file C:\Users\노호진\AppData\Local\Temp\TI8086 --object_file DSP280x_CpuTimers.obj --embed_opts 10 --call_assumptions=0 --mem_model:code=flat --mem_model:data=large --opt_for_speed --opt_level=3 --optimizer_comments --optimizer_interlist --program_level_compile 
	.sect	".text"
	.global	_ConfigCpuTimer

DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("ConfigCpuTimer"), DW_AT_symbol_name("_ConfigCpuTimer")
	.dwattr DW$13, DW_AT_low_pc(_ConfigCpuTimer)
	.dwattr DW$13, DW_AT_high_pc(0x00)
	.dwattr DW$13, DW_AT_begin_file("DSP280x_CpuTimers.c")
	.dwattr DW$13, DW_AT_begin_line(0x5d)
	.dwattr DW$13, DW_AT_begin_column(0x06)
	.dwpsn	"DSP280x_CpuTimers.c",94,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _ConfigCpuTimer               FR SIZE:   4           *
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
_ConfigCpuTimer:
;*** 98	-----------------------    (*Timer).CPUFreqInMHz = Freq;
;*** 99	-----------------------    (*Timer).PeriodInUSec = Period;
;*** 101	-----------------------    (*(*Timer).RegsAddr).PRD.all = (long)(Freq*Period);
;*** 104	-----------------------    (*(*Timer).RegsAddr).TPR.all = 0u;
;*** 105	-----------------------    (*(*Timer).RegsAddr).TPRH.all = 0u;
;*** 108	-----------------------    *((volatile struct _TCR_BITS *)(*Timer).RegsAddr+4L) |= 0x10u;
;*** 109	-----------------------    *((volatile struct _TCR_BITS *)(*Timer).RegsAddr+4L) |= 0x20u;
;*** 110	-----------------------    *((volatile struct _TCR_BITS *)(*Timer).RegsAddr+4L) |= 0x400u;
;*** 111	-----------------------    *((volatile struct _TCR_BITS *)(*Timer).RegsAddr+4L) |= 0x800u;
;*** 112	-----------------------    *((volatile struct _TCR_BITS *)(*Timer).RegsAddr+4L) |= 0x4000u;
;*** 115	-----------------------    (*Timer).InterruptCount = 0uL;
;*** 115	-----------------------    return;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        MOVL      *SP++,XAR1
	.dwcfa	0x80, 7, 2
	.dwcfa	0x1d, -4
        ADDB      SP,#2
	.dwcfa	0x1d, -6
;* AR4   assigned to _Timer
DW$14	.dwtag  DW_TAG_formal_parameter, DW_AT_name("Timer"), DW_AT_symbol_name("_Timer")
	.dwattr DW$14, DW_AT_type(*DW$T$50)
	.dwattr DW$14, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _Freq
DW$15	.dwtag  DW_TAG_formal_parameter, DW_AT_name("Freq"), DW_AT_symbol_name("_Freq")
	.dwattr DW$15, DW_AT_type(*DW$T$16)
	.dwattr DW$15, DW_AT_location[DW_OP_reg0]
DW$16	.dwtag  DW_TAG_formal_parameter, DW_AT_name("Period"), DW_AT_symbol_name("_Period")
	.dwattr DW$16, DW_AT_type(*DW$T$16)
	.dwattr DW$16, DW_AT_location[DW_OP_breg20 -8]
;* AR1   assigned to _Timer
DW$17	.dwtag  DW_TAG_variable, DW_AT_name("Timer"), DW_AT_symbol_name("_Timer")
	.dwattr DW$17, DW_AT_type(*DW$T$71)
	.dwattr DW$17, DW_AT_location[DW_OP_reg6]
;* AL    assigned to _Freq
DW$18	.dwtag  DW_TAG_variable, DW_AT_name("Freq"), DW_AT_symbol_name("_Freq")
	.dwattr DW$18, DW_AT_type(*DW$T$56)
	.dwattr DW$18, DW_AT_location[DW_OP_reg0]
;* AR6   assigned to _Period
DW$19	.dwtag  DW_TAG_variable, DW_AT_name("Period"), DW_AT_symbol_name("_Period")
	.dwattr DW$19, DW_AT_type(*DW$T$56)
	.dwattr DW$19, DW_AT_location[DW_OP_reg16]
        MOVL      XAR1,XAR4             ; |94| 
        MOVL      XAR6,*-SP[8]          ; |94| 
	.dwpsn	"DSP280x_CpuTimers.c",98,2
        MOVL      *+XAR1[4],ACC         ; |98| 
	.dwpsn	"DSP280x_CpuTimers.c",99,2
        MOVL      *+XAR1[6],XAR6        ; |99| 
	.dwpsn	"DSP280x_CpuTimers.c",101,2
        MOVL      *-SP[2],XAR6          ; |101| 
        LCR       #FS$$MPY              ; |101| 
        ; call occurs [#FS$$MPY] ; |101| 
        LCR       #FS$$TOL              ; |101| 
        ; call occurs [#FS$$TOL] ; |101| 
        MOVL      XAR4,*+XAR1[0]        ; |101| 
        MOVL      *+XAR4[2],ACC         ; |101| 
	.dwpsn	"DSP280x_CpuTimers.c",104,2
        MOVL      XAR4,*+XAR1[0]        ; |104| 
        MOV       *+XAR4[6],#0          ; |104| 
	.dwpsn	"DSP280x_CpuTimers.c",105,2
        MOVL      XAR4,*+XAR1[0]        ; |105| 
        MOV       *+XAR4[7],#0          ; |105| 
	.dwpsn	"DSP280x_CpuTimers.c",108,2
        MOVL      XAR4,*+XAR1[0]        ; |108| 
        OR        *+XAR4[4],#0x0010     ; |108| 
	.dwpsn	"DSP280x_CpuTimers.c",109,2
        MOVL      XAR4,*+XAR1[0]        ; |109| 
        OR        *+XAR4[4],#0x0020     ; |109| 
	.dwpsn	"DSP280x_CpuTimers.c",110,2
        MOVL      XAR4,*+XAR1[0]        ; |110| 
        OR        *+XAR4[4],#0x0400     ; |110| 
	.dwpsn	"DSP280x_CpuTimers.c",111,2
        MOVL      XAR4,*+XAR1[0]        ; |111| 
        OR        *+XAR4[4],#0x0800     ; |111| 
	.dwpsn	"DSP280x_CpuTimers.c",112,2
        MOVL      XAR4,*+XAR1[0]        ; |112| 
        OR        *+XAR4[4],#0x4000     ; |112| 
	.dwpsn	"DSP280x_CpuTimers.c",115,2
        MOVB      ACC,#0
        MOVL      *+XAR1[2],ACC         ; |115| 
	.dwpsn	"DSP280x_CpuTimers.c",117,1
        SUBB      SP,#2
	.dwcfa	0x1d, -4
        MOVL      XAR1,*--SP
	.dwcfa	0x1d, -2
	.dwcfa	0xc0, 7
        LRETR
        ; return occurs
	.dwattr DW$13, DW_AT_end_file("DSP280x_CpuTimers.c")
	.dwattr DW$13, DW_AT_end_line(0x75)
	.dwattr DW$13, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$13

	.sect	".text"
	.global	_Init_ISR

DW$20	.dwtag  DW_TAG_subprogram, DW_AT_name("Init_ISR"), DW_AT_symbol_name("_Init_ISR")
	.dwattr DW$20, DW_AT_low_pc(_Init_ISR)
	.dwattr DW$20, DW_AT_high_pc(0x00)
	.dwattr DW$20, DW_AT_begin_file("DSP280x_CpuTimers.c")
	.dwattr DW$20, DW_AT_begin_line(0x77)
	.dwattr DW$20, DW_AT_begin_column(0x06)
	.dwpsn	"DSP280x_CpuTimers.c",120,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _Init_ISR                     FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  0 SOE     *
;***************************************************************


;***************************************************************
;*                                                             *
;* Using -g (debug) with optimization (-o3) may disable key op *
;*                                                             *
;***************************************************************
_Init_ISR:
;*** 122	-----------------------    asm(" setc INTM");
;*** 124	-----------------------    asm(" EALLOW");
;*** 126	-----------------------    PieVectTable.TINT0 = &sensor_timer0_ISR;
;*** 127	-----------------------    PieVectTable.TINT2 = &motor_timer2_ISR;
;*** 128	-----------------------    PieVectTable.ADCINT = &adc_ISR;
;*** 130	-----------------------    PieVectTable.SCIRXINTA = &scia_ISR;
;*** 132	-----------------------    asm(" EDIS");
;*** 134	-----------------------    IER |= 0x2001u;
;*** 135	-----------------------    IER |= 0x100u;
;*** 137	-----------------------    C$1 = &PieCtrlRegs;
;*** 137	-----------------------    ((volatile unsigned *)C$1)[2] |= 0x40u;
;*** 138	-----------------------    *(&PieCtrlRegs+2L) |= 0x20u;
;*** 140	-----------------------    ((volatile unsigned *)C$1)[18] |= 1u;
;*** 142	-----------------------    ConfigCpuTimer(&CpuTimer0, 100.0F, 50.0F);
;*** 143	-----------------------    ConfigCpuTimer(&CpuTimer2, 100.0F, 500.0F);
;*** 145	-----------------------    asm(" clrc INTM");
;*** 146	-----------------------    asm(" clrc DBGM");
;*** 146	-----------------------    return;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#2
	.dwcfa	0x1d, -4
;* AR4   assigned to C$1
DW$21	.dwtag  DW_TAG_variable, DW_AT_name("C$1"), DW_AT_symbol_name("C$1")
	.dwattr DW$21, DW_AT_type(*DW$T$73)
	.dwattr DW$21, DW_AT_location[DW_OP_reg12]
	.dwpsn	"DSP280x_CpuTimers.c",122,2
 setc INTM
	.dwpsn	"DSP280x_CpuTimers.c",124,2
 EALLOW
	.dwpsn	"DSP280x_CpuTimers.c",126,3
        MOVL      XAR4,#_sensor_timer0_ISR ; |126| 
        MOVW      DP,#_PieVectTable+76
        MOVL      @_PieVectTable+76,XAR4 ; |126| 
	.dwpsn	"DSP280x_CpuTimers.c",127,2
        MOVW      DP,#_PieVectTable+28
        MOVL      XAR4,#_motor_timer2_ISR ; |127| 
        MOVL      @_PieVectTable+28,XAR4 ; |127| 
	.dwpsn	"DSP280x_CpuTimers.c",128,2
        MOVW      DP,#_PieVectTable+74
        MOVL      XAR4,#_adc_ISR        ; |128| 
        MOVL      @_PieVectTable+74,XAR4 ; |128| 
	.dwpsn	"DSP280x_CpuTimers.c",130,2
        MOVW      DP,#_PieVectTable+192
        MOVL      XAR4,#_scia_ISR       ; |130| 
        MOVL      @_PieVectTable+192,XAR4 ; |130| 
	.dwpsn	"DSP280x_CpuTimers.c",132,2
 EDIS
	.dwpsn	"DSP280x_CpuTimers.c",134,2
        OR        IER,#0x2001           ; |134| 
	.dwpsn	"DSP280x_CpuTimers.c",135,2
        OR        IER,#0x0100           ; |135| 
	.dwpsn	"DSP280x_CpuTimers.c",137,2
        MOVL      XAR4,#_PieCtrlRegs    ; |137| 
        OR        *+XAR4[2],#0x0040     ; |137| 
	.dwpsn	"DSP280x_CpuTimers.c",138,2
        MOVW      DP,#_PieCtrlRegs+2
        OR        @_PieCtrlRegs+2,#0x0020 ; |138| 
	.dwpsn	"DSP280x_CpuTimers.c",140,2
        MOVB      ACC,#18
        ADDL      ACC,XAR4
        MOVL      XAR4,ACC              ; |140| 
        OR        *+XAR4[0],#0x0001     ; |140| 
	.dwpsn	"DSP280x_CpuTimers.c",142,2
        MOV       AL,#0
        MOV       AH,#16968
        MOVL      *-SP[2],ACC           ; |142| 
        SPM       #0
        MOVL      XAR4,#_CpuTimer0      ; |142| 
        MOV       AH,#17096
        LCR       #_ConfigCpuTimer      ; |142| 
        ; call occurs [#_ConfigCpuTimer] ; |142| 
	.dwpsn	"DSP280x_CpuTimers.c",143,2
        MOV       AL,#0
        MOV       AH,#17402
        MOVL      *-SP[2],ACC           ; |143| 
        MOVL      XAR4,#_CpuTimer2      ; |143| 
        MOV       AH,#17096
        LCR       #_ConfigCpuTimer      ; |143| 
        ; call occurs [#_ConfigCpuTimer] ; |143| 
	.dwpsn	"DSP280x_CpuTimers.c",145,2
 clrc INTM
	.dwpsn	"DSP280x_CpuTimers.c",146,2
 clrc DBGM
	.dwpsn	"DSP280x_CpuTimers.c",148,1
        SUBB      SP,#2
	.dwcfa	0x1d, -2
        SPM       #0
        LRETR
        ; return occurs
	.dwattr DW$20, DW_AT_end_file("DSP280x_CpuTimers.c")
	.dwattr DW$20, DW_AT_end_line(0x94)
	.dwattr DW$20, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$20

	.sect	".text"
	.global	_InitCpuTimers

DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("InitCpuTimers"), DW_AT_symbol_name("_InitCpuTimers")
	.dwattr DW$22, DW_AT_low_pc(_InitCpuTimers)
	.dwattr DW$22, DW_AT_high_pc(0x00)
	.dwattr DW$22, DW_AT_begin_file("DSP280x_CpuTimers.c")
	.dwattr DW$22, DW_AT_begin_line(0x25)
	.dwattr DW$22, DW_AT_begin_column(0x06)
	.dwpsn	"DSP280x_CpuTimers.c",38,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _InitCpuTimers                FR SIZE:   0           *
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
_InitCpuTimers:
;*** 41	-----------------------    CpuTimer0.RegsAddr = C$3 = &CpuTimer0Regs;
;*** 43	-----------------------    CpuTimer0Regs.PRD.all = 0xffffffffuL;
;*** 45	-----------------------    CpuTimer0Regs.TPR.all = 0u;
;*** 46	-----------------------    CpuTimer0Regs.TPRH.all = 0u;
;*** 48	-----------------------    *((volatile struct _TCR_BITS *)C$3+4L) |= 0x10u;
;*** 50	-----------------------    *(&CpuTimer0Regs+4L) |= 0x20u;
;*** 52	-----------------------    CpuTimer0.InterruptCount = 0uL;
;*** 56	-----------------------    CpuTimer1.RegsAddr = C$2 = &CpuTimer1Regs;
;*** 58	-----------------------    CpuTimer1Regs.PRD.all = 0xffffffffuL;
;*** 60	-----------------------    CpuTimer1Regs.TPR.all = 0u;
;*** 61	-----------------------    CpuTimer1Regs.TPRH.all = 0u;
;*** 63	-----------------------    *((volatile struct _TCR_BITS *)C$2+4L) |= 0x10u;
;*** 65	-----------------------    *(&CpuTimer1Regs+4L) |= 0x20u;
;*** 67	-----------------------    CpuTimer1.InterruptCount = 0uL;
;*** 71	-----------------------    CpuTimer2.RegsAddr = C$1 = &CpuTimer2Regs;
;*** 73	-----------------------    CpuTimer2Regs.PRD.all = 0xffffffffuL;
;*** 75	-----------------------    CpuTimer2Regs.TPR.all = 0u;
;*** 76	-----------------------    CpuTimer2Regs.TPRH.all = 0u;
;*** 78	-----------------------    *((volatile struct _TCR_BITS *)C$1+4L) |= 0x10u;
;*** 80	-----------------------    *(&CpuTimer2Regs+4L) |= 0x20u;
;*** 82	-----------------------    CpuTimer2.InterruptCount = 0uL;
;*** 82	-----------------------    return;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
;* AR4   assigned to C$1
DW$23	.dwtag  DW_TAG_variable, DW_AT_name("C$1"), DW_AT_symbol_name("C$1")
	.dwattr DW$23, DW_AT_type(*DW$T$33)
	.dwattr DW$23, DW_AT_location[DW_OP_reg12]
;* AR4   assigned to C$2
DW$24	.dwtag  DW_TAG_variable, DW_AT_name("C$2"), DW_AT_symbol_name("C$2")
	.dwattr DW$24, DW_AT_type(*DW$T$33)
	.dwattr DW$24, DW_AT_location[DW_OP_reg12]
;* AR4   assigned to C$3
DW$25	.dwtag  DW_TAG_variable, DW_AT_name("C$3"), DW_AT_symbol_name("C$3")
	.dwattr DW$25, DW_AT_type(*DW$T$33)
	.dwattr DW$25, DW_AT_location[DW_OP_reg12]
	.dwpsn	"DSP280x_CpuTimers.c",41,2
        MOVL      XAR4,#_CpuTimer0Regs  ; |41| 
        MOVW      DP,#_CpuTimer0
        MOVL      @_CpuTimer0,XAR4      ; |41| 
	.dwpsn	"DSP280x_CpuTimers.c",43,2
        MOV       PH,#65535
        MOV       PL,#65535
        MOVW      DP,#_CpuTimer0Regs+2
        MOVL      @_CpuTimer0Regs+2,P   ; |43| 
	.dwpsn	"DSP280x_CpuTimers.c",45,2
        MOV       @_CpuTimer0Regs+6,#0  ; |45| 
	.dwpsn	"DSP280x_CpuTimers.c",46,2
        MOV       @_CpuTimer0Regs+7,#0  ; |46| 
	.dwpsn	"DSP280x_CpuTimers.c",48,2
        OR        *+XAR4[4],#0x0010     ; |48| 
	.dwpsn	"DSP280x_CpuTimers.c",50,2
        OR        @_CpuTimer0Regs+4,#0x0020 ; |50| 
	.dwpsn	"DSP280x_CpuTimers.c",52,2
        MOVB      ACC,#0
        MOVW      DP,#_CpuTimer0+2
        MOVL      @_CpuTimer0+2,ACC     ; |52| 
	.dwpsn	"DSP280x_CpuTimers.c",56,2
        MOVL      XAR4,#_CpuTimer1Regs  ; |56| 
        MOVL      @_CpuTimer1,XAR4      ; |56| 
	.dwpsn	"DSP280x_CpuTimers.c",58,2
        MOVW      DP,#_CpuTimer1Regs+2
        MOVL      @_CpuTimer1Regs+2,P   ; |58| 
	.dwpsn	"DSP280x_CpuTimers.c",60,2
        MOV       @_CpuTimer1Regs+6,#0  ; |60| 
	.dwpsn	"DSP280x_CpuTimers.c",61,2
        MOV       @_CpuTimer1Regs+7,#0  ; |61| 
	.dwpsn	"DSP280x_CpuTimers.c",63,2
        OR        *+XAR4[4],#0x0010     ; |63| 
	.dwpsn	"DSP280x_CpuTimers.c",65,2
        OR        @_CpuTimer1Regs+4,#0x0020 ; |65| 
	.dwpsn	"DSP280x_CpuTimers.c",67,2
        MOVB      ACC,#0
        MOVW      DP,#_CpuTimer1+2
        MOVL      @_CpuTimer1+2,ACC     ; |67| 
	.dwpsn	"DSP280x_CpuTimers.c",71,2
        MOVL      XAR4,#_CpuTimer2Regs  ; |71| 
        MOVL      @_CpuTimer2,XAR4      ; |71| 
	.dwpsn	"DSP280x_CpuTimers.c",73,2
        MOVW      DP,#_CpuTimer2Regs+2
        MOVL      @_CpuTimer2Regs+2,P   ; |73| 
	.dwpsn	"DSP280x_CpuTimers.c",75,2
        MOV       @_CpuTimer2Regs+6,#0  ; |75| 
	.dwpsn	"DSP280x_CpuTimers.c",76,2
        MOV       @_CpuTimer2Regs+7,#0  ; |76| 
	.dwpsn	"DSP280x_CpuTimers.c",78,2
        OR        *+XAR4[4],#0x0010     ; |78| 
	.dwpsn	"DSP280x_CpuTimers.c",80,2
        OR        @_CpuTimer2Regs+4,#0x0020 ; |80| 
	.dwpsn	"DSP280x_CpuTimers.c",82,2
        MOVB      ACC,#0
        MOVW      DP,#_CpuTimer2+2
        MOVL      @_CpuTimer2+2,ACC     ; |82| 
	.dwpsn	"DSP280x_CpuTimers.c",83,1
        LRETR
        ; return occurs
	.dwattr DW$22, DW_AT_end_file("DSP280x_CpuTimers.c")
	.dwattr DW$22, DW_AT_end_line(0x53)
	.dwattr DW$22, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$22

;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_adc_ISR
	.global	_motor_timer2_ISR
	.global	_scia_ISR
	.global	_sensor_timer0_ISR
	.global	_CpuTimer1Regs
	.global	_CpuTimer0Regs
	.global	_CpuTimer2Regs
	.global	_PieCtrlRegs
	.global	_PieVectTable
	.global	FS$$MPY
	.global	FS$$TOL

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

DW$T$44	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$44, DW_AT_language(DW_LANG_C)

DW$T$48	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$48, DW_AT_language(DW_LANG_C)

DW$T$51	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$51, DW_AT_language(DW_LANG_C)
DW$26	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$50)
DW$27	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$16)
DW$28	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$16)
	.dwendtag DW$T$51

DW$29	.dwtag  DW_TAG_far_type
	.dwattr DW$29, DW_AT_type(*DW$T$11)
DW$T$53	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$53, DW_AT_type(*DW$29)
DW$T$16	.dwtag  DW_TAG_base_type, DW_AT_name("float")
	.dwattr DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr DW$T$16, DW_AT_byte_size(0x02)
DW$30	.dwtag  DW_TAG_far_type
	.dwattr DW$30, DW_AT_type(*DW$T$16)
DW$T$56	.dwtag  DW_TAG_const_type
	.dwattr DW$T$56, DW_AT_type(*DW$30)
DW$31	.dwtag  DW_TAG_far_type
	.dwattr DW$31, DW_AT_type(*DW$T$31)
DW$T$32	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$32, DW_AT_type(*DW$31)
DW$T$33	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$32)
	.dwattr DW$T$33, DW_AT_address_class(0x16)

DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$34, DW_AT_name("CPUTIMER_VARS")
	.dwattr DW$T$34, DW_AT_byte_size(0x08)
DW$32	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$33)
	.dwattr DW$32, DW_AT_name("RegsAddr"), DW_AT_symbol_name("_RegsAddr")
	.dwattr DW$32, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$32, DW_AT_accessibility(DW_ACCESS_public)
DW$33	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$33, DW_AT_name("InterruptCount"), DW_AT_symbol_name("_InterruptCount")
	.dwattr DW$33, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$33, DW_AT_accessibility(DW_ACCESS_public)
DW$34	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$34, DW_AT_name("CPUFreqInMHz"), DW_AT_symbol_name("_CPUFreqInMHz")
	.dwattr DW$34, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$34, DW_AT_accessibility(DW_ACCESS_public)
DW$35	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$35, DW_AT_name("PeriodInUSec"), DW_AT_symbol_name("_PeriodInUSec")
	.dwattr DW$35, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$35, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$34

DW$T$50	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$34)
	.dwattr DW$T$50, DW_AT_address_class(0x16)
DW$36	.dwtag  DW_TAG_far_type
	.dwattr DW$36, DW_AT_type(*DW$T$50)
DW$T$71	.dwtag  DW_TAG_const_type
	.dwattr DW$T$71, DW_AT_type(*DW$36)
DW$T$73	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$72)
	.dwattr DW$T$73, DW_AT_address_class(0x16)
DW$37	.dwtag  DW_TAG_far_type
	.dwattr DW$37, DW_AT_type(*DW$T$43)
DW$T$74	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$74, DW_AT_type(*DW$37)

DW$T$47	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$47, DW_AT_name("PIE_VECT_TABLE")
	.dwattr DW$T$47, DW_AT_byte_size(0x100)
DW$38	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$38, DW_AT_name("PIE1_RESERVED"), DW_AT_symbol_name("_PIE1_RESERVED")
	.dwattr DW$38, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$38, DW_AT_accessibility(DW_ACCESS_public)
DW$39	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$39, DW_AT_name("PIE2_RESERVED"), DW_AT_symbol_name("_PIE2_RESERVED")
	.dwattr DW$39, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$39, DW_AT_accessibility(DW_ACCESS_public)
DW$40	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$40, DW_AT_name("PIE3_RESERVED"), DW_AT_symbol_name("_PIE3_RESERVED")
	.dwattr DW$40, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$40, DW_AT_accessibility(DW_ACCESS_public)
DW$41	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$41, DW_AT_name("PIE4_RESERVED"), DW_AT_symbol_name("_PIE4_RESERVED")
	.dwattr DW$41, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$41, DW_AT_accessibility(DW_ACCESS_public)
DW$42	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$42, DW_AT_name("PIE5_RESERVED"), DW_AT_symbol_name("_PIE5_RESERVED")
	.dwattr DW$42, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$42, DW_AT_accessibility(DW_ACCESS_public)
DW$43	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$43, DW_AT_name("PIE6_RESERVED"), DW_AT_symbol_name("_PIE6_RESERVED")
	.dwattr DW$43, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$43, DW_AT_accessibility(DW_ACCESS_public)
DW$44	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$44, DW_AT_name("PIE7_RESERVED"), DW_AT_symbol_name("_PIE7_RESERVED")
	.dwattr DW$44, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$44, DW_AT_accessibility(DW_ACCESS_public)
DW$45	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$45, DW_AT_name("PIE8_RESERVED"), DW_AT_symbol_name("_PIE8_RESERVED")
	.dwattr DW$45, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$45, DW_AT_accessibility(DW_ACCESS_public)
DW$46	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$46, DW_AT_name("PIE9_RESERVED"), DW_AT_symbol_name("_PIE9_RESERVED")
	.dwattr DW$46, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$46, DW_AT_accessibility(DW_ACCESS_public)
DW$47	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$47, DW_AT_name("PIE10_RESERVED"), DW_AT_symbol_name("_PIE10_RESERVED")
	.dwattr DW$47, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$47, DW_AT_accessibility(DW_ACCESS_public)
DW$48	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$48, DW_AT_name("PIE11_RESERVED"), DW_AT_symbol_name("_PIE11_RESERVED")
	.dwattr DW$48, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$48, DW_AT_accessibility(DW_ACCESS_public)
DW$49	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$49, DW_AT_name("PIE12_RESERVED"), DW_AT_symbol_name("_PIE12_RESERVED")
	.dwattr DW$49, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$49, DW_AT_accessibility(DW_ACCESS_public)
DW$50	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$50, DW_AT_name("PIE13_RESERVED"), DW_AT_symbol_name("_PIE13_RESERVED")
	.dwattr DW$50, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$50, DW_AT_accessibility(DW_ACCESS_public)
DW$51	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$51, DW_AT_name("XINT13"), DW_AT_symbol_name("_XINT13")
	.dwattr DW$51, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$51, DW_AT_accessibility(DW_ACCESS_public)
DW$52	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$52, DW_AT_name("TINT2"), DW_AT_symbol_name("_TINT2")
	.dwattr DW$52, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$52, DW_AT_accessibility(DW_ACCESS_public)
DW$53	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$53, DW_AT_name("DATALOG"), DW_AT_symbol_name("_DATALOG")
	.dwattr DW$53, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$53, DW_AT_accessibility(DW_ACCESS_public)
DW$54	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$54, DW_AT_name("RTOSINT"), DW_AT_symbol_name("_RTOSINT")
	.dwattr DW$54, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr DW$54, DW_AT_accessibility(DW_ACCESS_public)
DW$55	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$55, DW_AT_name("EMUINT"), DW_AT_symbol_name("_EMUINT")
	.dwattr DW$55, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr DW$55, DW_AT_accessibility(DW_ACCESS_public)
DW$56	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$56, DW_AT_name("XNMI"), DW_AT_symbol_name("_XNMI")
	.dwattr DW$56, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr DW$56, DW_AT_accessibility(DW_ACCESS_public)
DW$57	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$57, DW_AT_name("ILLEGAL"), DW_AT_symbol_name("_ILLEGAL")
	.dwattr DW$57, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr DW$57, DW_AT_accessibility(DW_ACCESS_public)
DW$58	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$58, DW_AT_name("USER1"), DW_AT_symbol_name("_USER1")
	.dwattr DW$58, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$58, DW_AT_accessibility(DW_ACCESS_public)
DW$59	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$59, DW_AT_name("USER2"), DW_AT_symbol_name("_USER2")
	.dwattr DW$59, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$59, DW_AT_accessibility(DW_ACCESS_public)
DW$60	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$60, DW_AT_name("USER3"), DW_AT_symbol_name("_USER3")
	.dwattr DW$60, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$60, DW_AT_accessibility(DW_ACCESS_public)
DW$61	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$61, DW_AT_name("USER4"), DW_AT_symbol_name("_USER4")
	.dwattr DW$61, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr DW$61, DW_AT_accessibility(DW_ACCESS_public)
DW$62	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$62, DW_AT_name("USER5"), DW_AT_symbol_name("_USER5")
	.dwattr DW$62, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr DW$62, DW_AT_accessibility(DW_ACCESS_public)
DW$63	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$63, DW_AT_name("USER6"), DW_AT_symbol_name("_USER6")
	.dwattr DW$63, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr DW$63, DW_AT_accessibility(DW_ACCESS_public)
DW$64	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$64, DW_AT_name("USER7"), DW_AT_symbol_name("_USER7")
	.dwattr DW$64, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr DW$64, DW_AT_accessibility(DW_ACCESS_public)
DW$65	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$65, DW_AT_name("USER8"), DW_AT_symbol_name("_USER8")
	.dwattr DW$65, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr DW$65, DW_AT_accessibility(DW_ACCESS_public)
DW$66	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$66, DW_AT_name("USER9"), DW_AT_symbol_name("_USER9")
	.dwattr DW$66, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr DW$66, DW_AT_accessibility(DW_ACCESS_public)
DW$67	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$67, DW_AT_name("USER10"), DW_AT_symbol_name("_USER10")
	.dwattr DW$67, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr DW$67, DW_AT_accessibility(DW_ACCESS_public)
DW$68	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$68, DW_AT_name("USER11"), DW_AT_symbol_name("_USER11")
	.dwattr DW$68, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr DW$68, DW_AT_accessibility(DW_ACCESS_public)
DW$69	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$69, DW_AT_name("USER12"), DW_AT_symbol_name("_USER12")
	.dwattr DW$69, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr DW$69, DW_AT_accessibility(DW_ACCESS_public)
DW$70	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$70, DW_AT_name("SEQ1INT"), DW_AT_symbol_name("_SEQ1INT")
	.dwattr DW$70, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr DW$70, DW_AT_accessibility(DW_ACCESS_public)
DW$71	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$71, DW_AT_name("SEQ2INT"), DW_AT_symbol_name("_SEQ2INT")
	.dwattr DW$71, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr DW$71, DW_AT_accessibility(DW_ACCESS_public)
DW$72	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$72, DW_AT_name("rsvd1_3"), DW_AT_symbol_name("_rsvd1_3")
	.dwattr DW$72, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr DW$72, DW_AT_accessibility(DW_ACCESS_public)
DW$73	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$73, DW_AT_name("XINT1"), DW_AT_symbol_name("_XINT1")
	.dwattr DW$73, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr DW$73, DW_AT_accessibility(DW_ACCESS_public)
DW$74	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$74, DW_AT_name("XINT2"), DW_AT_symbol_name("_XINT2")
	.dwattr DW$74, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr DW$74, DW_AT_accessibility(DW_ACCESS_public)
DW$75	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$75, DW_AT_name("ADCINT"), DW_AT_symbol_name("_ADCINT")
	.dwattr DW$75, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a]
	.dwattr DW$75, DW_AT_accessibility(DW_ACCESS_public)
DW$76	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$76, DW_AT_name("TINT0"), DW_AT_symbol_name("_TINT0")
	.dwattr DW$76, DW_AT_data_member_location[DW_OP_plus_uconst 0x4c]
	.dwattr DW$76, DW_AT_accessibility(DW_ACCESS_public)
DW$77	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$77, DW_AT_name("WAKEINT"), DW_AT_symbol_name("_WAKEINT")
	.dwattr DW$77, DW_AT_data_member_location[DW_OP_plus_uconst 0x4e]
	.dwattr DW$77, DW_AT_accessibility(DW_ACCESS_public)
DW$78	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$78, DW_AT_name("EPWM1_TZINT"), DW_AT_symbol_name("_EPWM1_TZINT")
	.dwattr DW$78, DW_AT_data_member_location[DW_OP_plus_uconst 0x50]
	.dwattr DW$78, DW_AT_accessibility(DW_ACCESS_public)
DW$79	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$79, DW_AT_name("EPWM2_TZINT"), DW_AT_symbol_name("_EPWM2_TZINT")
	.dwattr DW$79, DW_AT_data_member_location[DW_OP_plus_uconst 0x52]
	.dwattr DW$79, DW_AT_accessibility(DW_ACCESS_public)
DW$80	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$80, DW_AT_name("EPWM3_TZINT"), DW_AT_symbol_name("_EPWM3_TZINT")
	.dwattr DW$80, DW_AT_data_member_location[DW_OP_plus_uconst 0x54]
	.dwattr DW$80, DW_AT_accessibility(DW_ACCESS_public)
DW$81	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$81, DW_AT_name("EPWM4_TZINT"), DW_AT_symbol_name("_EPWM4_TZINT")
	.dwattr DW$81, DW_AT_data_member_location[DW_OP_plus_uconst 0x56]
	.dwattr DW$81, DW_AT_accessibility(DW_ACCESS_public)
DW$82	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$82, DW_AT_name("EPWM5_TZINT"), DW_AT_symbol_name("_EPWM5_TZINT")
	.dwattr DW$82, DW_AT_data_member_location[DW_OP_plus_uconst 0x58]
	.dwattr DW$82, DW_AT_accessibility(DW_ACCESS_public)
DW$83	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$83, DW_AT_name("EPWM6_TZINT"), DW_AT_symbol_name("_EPWM6_TZINT")
	.dwattr DW$83, DW_AT_data_member_location[DW_OP_plus_uconst 0x5a]
	.dwattr DW$83, DW_AT_accessibility(DW_ACCESS_public)
DW$84	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$84, DW_AT_name("rsvd2_7"), DW_AT_symbol_name("_rsvd2_7")
	.dwattr DW$84, DW_AT_data_member_location[DW_OP_plus_uconst 0x5c]
	.dwattr DW$84, DW_AT_accessibility(DW_ACCESS_public)
DW$85	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$85, DW_AT_name("rsvd2_8"), DW_AT_symbol_name("_rsvd2_8")
	.dwattr DW$85, DW_AT_data_member_location[DW_OP_plus_uconst 0x5e]
	.dwattr DW$85, DW_AT_accessibility(DW_ACCESS_public)
DW$86	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$86, DW_AT_name("EPWM1_INT"), DW_AT_symbol_name("_EPWM1_INT")
	.dwattr DW$86, DW_AT_data_member_location[DW_OP_plus_uconst 0x60]
	.dwattr DW$86, DW_AT_accessibility(DW_ACCESS_public)
DW$87	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$87, DW_AT_name("EPWM2_INT"), DW_AT_symbol_name("_EPWM2_INT")
	.dwattr DW$87, DW_AT_data_member_location[DW_OP_plus_uconst 0x62]
	.dwattr DW$87, DW_AT_accessibility(DW_ACCESS_public)
DW$88	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$88, DW_AT_name("EPWM3_INT"), DW_AT_symbol_name("_EPWM3_INT")
	.dwattr DW$88, DW_AT_data_member_location[DW_OP_plus_uconst 0x64]
	.dwattr DW$88, DW_AT_accessibility(DW_ACCESS_public)
DW$89	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$89, DW_AT_name("EPWM4_INT"), DW_AT_symbol_name("_EPWM4_INT")
	.dwattr DW$89, DW_AT_data_member_location[DW_OP_plus_uconst 0x66]
	.dwattr DW$89, DW_AT_accessibility(DW_ACCESS_public)
DW$90	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$90, DW_AT_name("EPWM5_INT"), DW_AT_symbol_name("_EPWM5_INT")
	.dwattr DW$90, DW_AT_data_member_location[DW_OP_plus_uconst 0x68]
	.dwattr DW$90, DW_AT_accessibility(DW_ACCESS_public)
DW$91	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$91, DW_AT_name("EPWM6_INT"), DW_AT_symbol_name("_EPWM6_INT")
	.dwattr DW$91, DW_AT_data_member_location[DW_OP_plus_uconst 0x6a]
	.dwattr DW$91, DW_AT_accessibility(DW_ACCESS_public)
DW$92	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$92, DW_AT_name("rsvd3_7"), DW_AT_symbol_name("_rsvd3_7")
	.dwattr DW$92, DW_AT_data_member_location[DW_OP_plus_uconst 0x6c]
	.dwattr DW$92, DW_AT_accessibility(DW_ACCESS_public)
DW$93	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$93, DW_AT_name("rsvd3_8"), DW_AT_symbol_name("_rsvd3_8")
	.dwattr DW$93, DW_AT_data_member_location[DW_OP_plus_uconst 0x6e]
	.dwattr DW$93, DW_AT_accessibility(DW_ACCESS_public)
DW$94	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$94, DW_AT_name("ECAP1_INT"), DW_AT_symbol_name("_ECAP1_INT")
	.dwattr DW$94, DW_AT_data_member_location[DW_OP_plus_uconst 0x70]
	.dwattr DW$94, DW_AT_accessibility(DW_ACCESS_public)
DW$95	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$95, DW_AT_name("ECAP2_INT"), DW_AT_symbol_name("_ECAP2_INT")
	.dwattr DW$95, DW_AT_data_member_location[DW_OP_plus_uconst 0x72]
	.dwattr DW$95, DW_AT_accessibility(DW_ACCESS_public)
DW$96	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$96, DW_AT_name("ECAP3_INT"), DW_AT_symbol_name("_ECAP3_INT")
	.dwattr DW$96, DW_AT_data_member_location[DW_OP_plus_uconst 0x74]
	.dwattr DW$96, DW_AT_accessibility(DW_ACCESS_public)
DW$97	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$97, DW_AT_name("ECAP4_INT"), DW_AT_symbol_name("_ECAP4_INT")
	.dwattr DW$97, DW_AT_data_member_location[DW_OP_plus_uconst 0x76]
	.dwattr DW$97, DW_AT_accessibility(DW_ACCESS_public)
DW$98	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$98, DW_AT_name("rsvd4_5"), DW_AT_symbol_name("_rsvd4_5")
	.dwattr DW$98, DW_AT_data_member_location[DW_OP_plus_uconst 0x78]
	.dwattr DW$98, DW_AT_accessibility(DW_ACCESS_public)
DW$99	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$99, DW_AT_name("rsvd4_6"), DW_AT_symbol_name("_rsvd4_6")
	.dwattr DW$99, DW_AT_data_member_location[DW_OP_plus_uconst 0x7a]
	.dwattr DW$99, DW_AT_accessibility(DW_ACCESS_public)
DW$100	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$100, DW_AT_name("rsvd4_7"), DW_AT_symbol_name("_rsvd4_7")
	.dwattr DW$100, DW_AT_data_member_location[DW_OP_plus_uconst 0x7c]
	.dwattr DW$100, DW_AT_accessibility(DW_ACCESS_public)
DW$101	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$101, DW_AT_name("rsvd4_8"), DW_AT_symbol_name("_rsvd4_8")
	.dwattr DW$101, DW_AT_data_member_location[DW_OP_plus_uconst 0x7e]
	.dwattr DW$101, DW_AT_accessibility(DW_ACCESS_public)
DW$102	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$102, DW_AT_name("EQEP1_INT"), DW_AT_symbol_name("_EQEP1_INT")
	.dwattr DW$102, DW_AT_data_member_location[DW_OP_plus_uconst 0x80]
	.dwattr DW$102, DW_AT_accessibility(DW_ACCESS_public)
DW$103	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$103, DW_AT_name("EQEP2_INT"), DW_AT_symbol_name("_EQEP2_INT")
	.dwattr DW$103, DW_AT_data_member_location[DW_OP_plus_uconst 0x82]
	.dwattr DW$103, DW_AT_accessibility(DW_ACCESS_public)
DW$104	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$104, DW_AT_name("rsvd5_3"), DW_AT_symbol_name("_rsvd5_3")
	.dwattr DW$104, DW_AT_data_member_location[DW_OP_plus_uconst 0x84]
	.dwattr DW$104, DW_AT_accessibility(DW_ACCESS_public)
DW$105	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$105, DW_AT_name("rsvd5_4"), DW_AT_symbol_name("_rsvd5_4")
	.dwattr DW$105, DW_AT_data_member_location[DW_OP_plus_uconst 0x86]
	.dwattr DW$105, DW_AT_accessibility(DW_ACCESS_public)
DW$106	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$106, DW_AT_name("rsvd5_5"), DW_AT_symbol_name("_rsvd5_5")
	.dwattr DW$106, DW_AT_data_member_location[DW_OP_plus_uconst 0x88]
	.dwattr DW$106, DW_AT_accessibility(DW_ACCESS_public)
DW$107	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$107, DW_AT_name("rsvd5_6"), DW_AT_symbol_name("_rsvd5_6")
	.dwattr DW$107, DW_AT_data_member_location[DW_OP_plus_uconst 0x8a]
	.dwattr DW$107, DW_AT_accessibility(DW_ACCESS_public)
DW$108	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$108, DW_AT_name("rsvd5_7"), DW_AT_symbol_name("_rsvd5_7")
	.dwattr DW$108, DW_AT_data_member_location[DW_OP_plus_uconst 0x8c]
	.dwattr DW$108, DW_AT_accessibility(DW_ACCESS_public)
DW$109	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$109, DW_AT_name("rsvd5_8"), DW_AT_symbol_name("_rsvd5_8")
	.dwattr DW$109, DW_AT_data_member_location[DW_OP_plus_uconst 0x8e]
	.dwattr DW$109, DW_AT_accessibility(DW_ACCESS_public)
DW$110	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$110, DW_AT_name("SPIRXINTA"), DW_AT_symbol_name("_SPIRXINTA")
	.dwattr DW$110, DW_AT_data_member_location[DW_OP_plus_uconst 0x90]
	.dwattr DW$110, DW_AT_accessibility(DW_ACCESS_public)
DW$111	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$111, DW_AT_name("SPITXINTA"), DW_AT_symbol_name("_SPITXINTA")
	.dwattr DW$111, DW_AT_data_member_location[DW_OP_plus_uconst 0x92]
	.dwattr DW$111, DW_AT_accessibility(DW_ACCESS_public)
DW$112	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$112, DW_AT_name("SPIRXINTB"), DW_AT_symbol_name("_SPIRXINTB")
	.dwattr DW$112, DW_AT_data_member_location[DW_OP_plus_uconst 0x94]
	.dwattr DW$112, DW_AT_accessibility(DW_ACCESS_public)
DW$113	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$113, DW_AT_name("SPITXINTB"), DW_AT_symbol_name("_SPITXINTB")
	.dwattr DW$113, DW_AT_data_member_location[DW_OP_plus_uconst 0x96]
	.dwattr DW$113, DW_AT_accessibility(DW_ACCESS_public)
DW$114	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$114, DW_AT_name("SPIRXINTC"), DW_AT_symbol_name("_SPIRXINTC")
	.dwattr DW$114, DW_AT_data_member_location[DW_OP_plus_uconst 0x98]
	.dwattr DW$114, DW_AT_accessibility(DW_ACCESS_public)
DW$115	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$115, DW_AT_name("SPITXINTC"), DW_AT_symbol_name("_SPITXINTC")
	.dwattr DW$115, DW_AT_data_member_location[DW_OP_plus_uconst 0x9a]
	.dwattr DW$115, DW_AT_accessibility(DW_ACCESS_public)
DW$116	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$116, DW_AT_name("SPIRXINTD"), DW_AT_symbol_name("_SPIRXINTD")
	.dwattr DW$116, DW_AT_data_member_location[DW_OP_plus_uconst 0x9c]
	.dwattr DW$116, DW_AT_accessibility(DW_ACCESS_public)
DW$117	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$117, DW_AT_name("SPITXINTD"), DW_AT_symbol_name("_SPITXINTD")
	.dwattr DW$117, DW_AT_data_member_location[DW_OP_plus_uconst 0x9e]
	.dwattr DW$117, DW_AT_accessibility(DW_ACCESS_public)
DW$118	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$118, DW_AT_name("rsvd7_1"), DW_AT_symbol_name("_rsvd7_1")
	.dwattr DW$118, DW_AT_data_member_location[DW_OP_plus_uconst 0xa0]
	.dwattr DW$118, DW_AT_accessibility(DW_ACCESS_public)
DW$119	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$119, DW_AT_name("rsvd7_2"), DW_AT_symbol_name("_rsvd7_2")
	.dwattr DW$119, DW_AT_data_member_location[DW_OP_plus_uconst 0xa2]
	.dwattr DW$119, DW_AT_accessibility(DW_ACCESS_public)
DW$120	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$120, DW_AT_name("rsvd7_3"), DW_AT_symbol_name("_rsvd7_3")
	.dwattr DW$120, DW_AT_data_member_location[DW_OP_plus_uconst 0xa4]
	.dwattr DW$120, DW_AT_accessibility(DW_ACCESS_public)
DW$121	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$121, DW_AT_name("rsvd7_4"), DW_AT_symbol_name("_rsvd7_4")
	.dwattr DW$121, DW_AT_data_member_location[DW_OP_plus_uconst 0xa6]
	.dwattr DW$121, DW_AT_accessibility(DW_ACCESS_public)
DW$122	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$122, DW_AT_name("rsvd7_5"), DW_AT_symbol_name("_rsvd7_5")
	.dwattr DW$122, DW_AT_data_member_location[DW_OP_plus_uconst 0xa8]
	.dwattr DW$122, DW_AT_accessibility(DW_ACCESS_public)
DW$123	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$123, DW_AT_name("rsvd7_6"), DW_AT_symbol_name("_rsvd7_6")
	.dwattr DW$123, DW_AT_data_member_location[DW_OP_plus_uconst 0xaa]
	.dwattr DW$123, DW_AT_accessibility(DW_ACCESS_public)
DW$124	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$124, DW_AT_name("rsvd7_7"), DW_AT_symbol_name("_rsvd7_7")
	.dwattr DW$124, DW_AT_data_member_location[DW_OP_plus_uconst 0xac]
	.dwattr DW$124, DW_AT_accessibility(DW_ACCESS_public)
DW$125	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$125, DW_AT_name("rsvd7_8"), DW_AT_symbol_name("_rsvd7_8")
	.dwattr DW$125, DW_AT_data_member_location[DW_OP_plus_uconst 0xae]
	.dwattr DW$125, DW_AT_accessibility(DW_ACCESS_public)
DW$126	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$126, DW_AT_name("I2CINT1A"), DW_AT_symbol_name("_I2CINT1A")
	.dwattr DW$126, DW_AT_data_member_location[DW_OP_plus_uconst 0xb0]
	.dwattr DW$126, DW_AT_accessibility(DW_ACCESS_public)
DW$127	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$127, DW_AT_name("I2CINT2A"), DW_AT_symbol_name("_I2CINT2A")
	.dwattr DW$127, DW_AT_data_member_location[DW_OP_plus_uconst 0xb2]
	.dwattr DW$127, DW_AT_accessibility(DW_ACCESS_public)
DW$128	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$128, DW_AT_name("rsvd8_3"), DW_AT_symbol_name("_rsvd8_3")
	.dwattr DW$128, DW_AT_data_member_location[DW_OP_plus_uconst 0xb4]
	.dwattr DW$128, DW_AT_accessibility(DW_ACCESS_public)
DW$129	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$129, DW_AT_name("rsvd8_4"), DW_AT_symbol_name("_rsvd8_4")
	.dwattr DW$129, DW_AT_data_member_location[DW_OP_plus_uconst 0xb6]
	.dwattr DW$129, DW_AT_accessibility(DW_ACCESS_public)
DW$130	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$130, DW_AT_name("rsvd8_5"), DW_AT_symbol_name("_rsvd8_5")
	.dwattr DW$130, DW_AT_data_member_location[DW_OP_plus_uconst 0xb8]
	.dwattr DW$130, DW_AT_accessibility(DW_ACCESS_public)
DW$131	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$131, DW_AT_name("rsvd8_6"), DW_AT_symbol_name("_rsvd8_6")
	.dwattr DW$131, DW_AT_data_member_location[DW_OP_plus_uconst 0xba]
	.dwattr DW$131, DW_AT_accessibility(DW_ACCESS_public)
DW$132	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$132, DW_AT_name("rsvd8_7"), DW_AT_symbol_name("_rsvd8_7")
	.dwattr DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0xbc]
	.dwattr DW$132, DW_AT_accessibility(DW_ACCESS_public)
DW$133	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$133, DW_AT_name("rsvd8_8"), DW_AT_symbol_name("_rsvd8_8")
	.dwattr DW$133, DW_AT_data_member_location[DW_OP_plus_uconst 0xbe]
	.dwattr DW$133, DW_AT_accessibility(DW_ACCESS_public)
DW$134	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$134, DW_AT_name("SCIRXINTA"), DW_AT_symbol_name("_SCIRXINTA")
	.dwattr DW$134, DW_AT_data_member_location[DW_OP_plus_uconst 0xc0]
	.dwattr DW$134, DW_AT_accessibility(DW_ACCESS_public)
DW$135	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$135, DW_AT_name("SCITXINTA"), DW_AT_symbol_name("_SCITXINTA")
	.dwattr DW$135, DW_AT_data_member_location[DW_OP_plus_uconst 0xc2]
	.dwattr DW$135, DW_AT_accessibility(DW_ACCESS_public)
DW$136	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$136, DW_AT_name("SCIRXINTB"), DW_AT_symbol_name("_SCIRXINTB")
	.dwattr DW$136, DW_AT_data_member_location[DW_OP_plus_uconst 0xc4]
	.dwattr DW$136, DW_AT_accessibility(DW_ACCESS_public)
DW$137	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$137, DW_AT_name("SCITXINTB"), DW_AT_symbol_name("_SCITXINTB")
	.dwattr DW$137, DW_AT_data_member_location[DW_OP_plus_uconst 0xc6]
	.dwattr DW$137, DW_AT_accessibility(DW_ACCESS_public)
DW$138	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$138, DW_AT_name("ECAN0INTA"), DW_AT_symbol_name("_ECAN0INTA")
	.dwattr DW$138, DW_AT_data_member_location[DW_OP_plus_uconst 0xc8]
	.dwattr DW$138, DW_AT_accessibility(DW_ACCESS_public)
DW$139	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$139, DW_AT_name("ECAN1INTA"), DW_AT_symbol_name("_ECAN1INTA")
	.dwattr DW$139, DW_AT_data_member_location[DW_OP_plus_uconst 0xca]
	.dwattr DW$139, DW_AT_accessibility(DW_ACCESS_public)
DW$140	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$140, DW_AT_name("ECAN0INTB"), DW_AT_symbol_name("_ECAN0INTB")
	.dwattr DW$140, DW_AT_data_member_location[DW_OP_plus_uconst 0xcc]
	.dwattr DW$140, DW_AT_accessibility(DW_ACCESS_public)
DW$141	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$141, DW_AT_name("ECAN1INTB"), DW_AT_symbol_name("_ECAN1INTB")
	.dwattr DW$141, DW_AT_data_member_location[DW_OP_plus_uconst 0xce]
	.dwattr DW$141, DW_AT_accessibility(DW_ACCESS_public)
DW$142	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$142, DW_AT_name("rsvd10_1"), DW_AT_symbol_name("_rsvd10_1")
	.dwattr DW$142, DW_AT_data_member_location[DW_OP_plus_uconst 0xd0]
	.dwattr DW$142, DW_AT_accessibility(DW_ACCESS_public)
DW$143	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$143, DW_AT_name("rsvd10_2"), DW_AT_symbol_name("_rsvd10_2")
	.dwattr DW$143, DW_AT_data_member_location[DW_OP_plus_uconst 0xd2]
	.dwattr DW$143, DW_AT_accessibility(DW_ACCESS_public)
DW$144	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$144, DW_AT_name("rsvd10_3"), DW_AT_symbol_name("_rsvd10_3")
	.dwattr DW$144, DW_AT_data_member_location[DW_OP_plus_uconst 0xd4]
	.dwattr DW$144, DW_AT_accessibility(DW_ACCESS_public)
DW$145	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$145, DW_AT_name("rsvd10_4"), DW_AT_symbol_name("_rsvd10_4")
	.dwattr DW$145, DW_AT_data_member_location[DW_OP_plus_uconst 0xd6]
	.dwattr DW$145, DW_AT_accessibility(DW_ACCESS_public)
DW$146	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$146, DW_AT_name("rsvd10_5"), DW_AT_symbol_name("_rsvd10_5")
	.dwattr DW$146, DW_AT_data_member_location[DW_OP_plus_uconst 0xd8]
	.dwattr DW$146, DW_AT_accessibility(DW_ACCESS_public)
DW$147	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$147, DW_AT_name("rsvd10_6"), DW_AT_symbol_name("_rsvd10_6")
	.dwattr DW$147, DW_AT_data_member_location[DW_OP_plus_uconst 0xda]
	.dwattr DW$147, DW_AT_accessibility(DW_ACCESS_public)
DW$148	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$148, DW_AT_name("rsvd10_7"), DW_AT_symbol_name("_rsvd10_7")
	.dwattr DW$148, DW_AT_data_member_location[DW_OP_plus_uconst 0xdc]
	.dwattr DW$148, DW_AT_accessibility(DW_ACCESS_public)
DW$149	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$149, DW_AT_name("rsvd10_8"), DW_AT_symbol_name("_rsvd10_8")
	.dwattr DW$149, DW_AT_data_member_location[DW_OP_plus_uconst 0xde]
	.dwattr DW$149, DW_AT_accessibility(DW_ACCESS_public)
DW$150	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$150, DW_AT_name("rsvd11_1"), DW_AT_symbol_name("_rsvd11_1")
	.dwattr DW$150, DW_AT_data_member_location[DW_OP_plus_uconst 0xe0]
	.dwattr DW$150, DW_AT_accessibility(DW_ACCESS_public)
DW$151	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$151, DW_AT_name("rsvd11_2"), DW_AT_symbol_name("_rsvd11_2")
	.dwattr DW$151, DW_AT_data_member_location[DW_OP_plus_uconst 0xe2]
	.dwattr DW$151, DW_AT_accessibility(DW_ACCESS_public)
DW$152	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$152, DW_AT_name("rsvd11_3"), DW_AT_symbol_name("_rsvd11_3")
	.dwattr DW$152, DW_AT_data_member_location[DW_OP_plus_uconst 0xe4]
	.dwattr DW$152, DW_AT_accessibility(DW_ACCESS_public)
DW$153	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$153, DW_AT_name("rsvd11_4"), DW_AT_symbol_name("_rsvd11_4")
	.dwattr DW$153, DW_AT_data_member_location[DW_OP_plus_uconst 0xe6]
	.dwattr DW$153, DW_AT_accessibility(DW_ACCESS_public)
DW$154	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$154, DW_AT_name("rsvd11_5"), DW_AT_symbol_name("_rsvd11_5")
	.dwattr DW$154, DW_AT_data_member_location[DW_OP_plus_uconst 0xe8]
	.dwattr DW$154, DW_AT_accessibility(DW_ACCESS_public)
DW$155	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$155, DW_AT_name("rsvd11_6"), DW_AT_symbol_name("_rsvd11_6")
	.dwattr DW$155, DW_AT_data_member_location[DW_OP_plus_uconst 0xea]
	.dwattr DW$155, DW_AT_accessibility(DW_ACCESS_public)
DW$156	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$156, DW_AT_name("rsvd11_7"), DW_AT_symbol_name("_rsvd11_7")
	.dwattr DW$156, DW_AT_data_member_location[DW_OP_plus_uconst 0xec]
	.dwattr DW$156, DW_AT_accessibility(DW_ACCESS_public)
DW$157	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$157, DW_AT_name("rsvd11_8"), DW_AT_symbol_name("_rsvd11_8")
	.dwattr DW$157, DW_AT_data_member_location[DW_OP_plus_uconst 0xee]
	.dwattr DW$157, DW_AT_accessibility(DW_ACCESS_public)
DW$158	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$158, DW_AT_name("rsvd12_1"), DW_AT_symbol_name("_rsvd12_1")
	.dwattr DW$158, DW_AT_data_member_location[DW_OP_plus_uconst 0xf0]
	.dwattr DW$158, DW_AT_accessibility(DW_ACCESS_public)
DW$159	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$159, DW_AT_name("rsvd12_2"), DW_AT_symbol_name("_rsvd12_2")
	.dwattr DW$159, DW_AT_data_member_location[DW_OP_plus_uconst 0xf2]
	.dwattr DW$159, DW_AT_accessibility(DW_ACCESS_public)
DW$160	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$160, DW_AT_name("rsvd12_3"), DW_AT_symbol_name("_rsvd12_3")
	.dwattr DW$160, DW_AT_data_member_location[DW_OP_plus_uconst 0xf4]
	.dwattr DW$160, DW_AT_accessibility(DW_ACCESS_public)
DW$161	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$161, DW_AT_name("rsvd12_4"), DW_AT_symbol_name("_rsvd12_4")
	.dwattr DW$161, DW_AT_data_member_location[DW_OP_plus_uconst 0xf6]
	.dwattr DW$161, DW_AT_accessibility(DW_ACCESS_public)
DW$162	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$162, DW_AT_name("rsvd12_5"), DW_AT_symbol_name("_rsvd12_5")
	.dwattr DW$162, DW_AT_data_member_location[DW_OP_plus_uconst 0xf8]
	.dwattr DW$162, DW_AT_accessibility(DW_ACCESS_public)
DW$163	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$163, DW_AT_name("rsvd12_6"), DW_AT_symbol_name("_rsvd12_6")
	.dwattr DW$163, DW_AT_data_member_location[DW_OP_plus_uconst 0xfa]
	.dwattr DW$163, DW_AT_accessibility(DW_ACCESS_public)
DW$164	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$164, DW_AT_name("rsvd12_7"), DW_AT_symbol_name("_rsvd12_7")
	.dwattr DW$164, DW_AT_data_member_location[DW_OP_plus_uconst 0xfc]
	.dwattr DW$164, DW_AT_accessibility(DW_ACCESS_public)
DW$165	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$165, DW_AT_name("rsvd12_8"), DW_AT_symbol_name("_rsvd12_8")
	.dwattr DW$165, DW_AT_data_member_location[DW_OP_plus_uconst 0xfe]
	.dwattr DW$165, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$47

DW$T$46	.dwtag  DW_TAG_typedef, DW_AT_name("PINT"), DW_AT_type(*DW$T$45)
	.dwattr DW$T$46, DW_AT_language(DW_LANG_C)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x01)
DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32"), DW_AT_type(*DW$T$13)
	.dwattr DW$T$21, DW_AT_language(DW_LANG_C)

DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$31, DW_AT_name("CPUTIMER_REGS")
	.dwattr DW$T$31, DW_AT_byte_size(0x08)
DW$166	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$166, DW_AT_name("TIM"), DW_AT_symbol_name("_TIM")
	.dwattr DW$166, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$166, DW_AT_accessibility(DW_ACCESS_public)
DW$167	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$167, DW_AT_name("PRD"), DW_AT_symbol_name("_PRD")
	.dwattr DW$167, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$167, DW_AT_accessibility(DW_ACCESS_public)
DW$168	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$168, DW_AT_name("TCR"), DW_AT_symbol_name("_TCR")
	.dwattr DW$168, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$168, DW_AT_accessibility(DW_ACCESS_public)
DW$169	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$169, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$169, DW_AT_accessibility(DW_ACCESS_public)
DW$170	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$28)
	.dwattr DW$170, DW_AT_name("TPR"), DW_AT_symbol_name("_TPR")
	.dwattr DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$170, DW_AT_accessibility(DW_ACCESS_public)
DW$171	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$30)
	.dwattr DW$171, DW_AT_name("TPRH"), DW_AT_symbol_name("_TPRH")
	.dwattr DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$171, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$31

DW$172	.dwtag  DW_TAG_far_type
	.dwattr DW$172, DW_AT_type(*DW$T$39)
DW$T$72	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$72, DW_AT_type(*DW$172)

DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$43, DW_AT_name("PIE_CTRL_REGS")
	.dwattr DW$T$43, DW_AT_byte_size(0x1a)
DW$173	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$173, DW_AT_name("PIECTRL"), DW_AT_symbol_name("_PIECTRL")
	.dwattr DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$173, DW_AT_accessibility(DW_ACCESS_public)
DW$174	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$38)
	.dwattr DW$174, DW_AT_name("PIEACK"), DW_AT_symbol_name("_PIEACK")
	.dwattr DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$174, DW_AT_accessibility(DW_ACCESS_public)
DW$175	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$40)
	.dwattr DW$175, DW_AT_name("PIEIER1"), DW_AT_symbol_name("_PIEIER1")
	.dwattr DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$175, DW_AT_accessibility(DW_ACCESS_public)
DW$176	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$42)
	.dwattr DW$176, DW_AT_name("PIEIFR1"), DW_AT_symbol_name("_PIEIFR1")
	.dwattr DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$176, DW_AT_accessibility(DW_ACCESS_public)
DW$177	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$40)
	.dwattr DW$177, DW_AT_name("PIEIER2"), DW_AT_symbol_name("_PIEIER2")
	.dwattr DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$177, DW_AT_accessibility(DW_ACCESS_public)
DW$178	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$42)
	.dwattr DW$178, DW_AT_name("PIEIFR2"), DW_AT_symbol_name("_PIEIFR2")
	.dwattr DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$178, DW_AT_accessibility(DW_ACCESS_public)
DW$179	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$40)
	.dwattr DW$179, DW_AT_name("PIEIER3"), DW_AT_symbol_name("_PIEIER3")
	.dwattr DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$179, DW_AT_accessibility(DW_ACCESS_public)
DW$180	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$42)
	.dwattr DW$180, DW_AT_name("PIEIFR3"), DW_AT_symbol_name("_PIEIFR3")
	.dwattr DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$180, DW_AT_accessibility(DW_ACCESS_public)
DW$181	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$40)
	.dwattr DW$181, DW_AT_name("PIEIER4"), DW_AT_symbol_name("_PIEIER4")
	.dwattr DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$181, DW_AT_accessibility(DW_ACCESS_public)
DW$182	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$42)
	.dwattr DW$182, DW_AT_name("PIEIFR4"), DW_AT_symbol_name("_PIEIFR4")
	.dwattr DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$182, DW_AT_accessibility(DW_ACCESS_public)
DW$183	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$40)
	.dwattr DW$183, DW_AT_name("PIEIER5"), DW_AT_symbol_name("_PIEIER5")
	.dwattr DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$183, DW_AT_accessibility(DW_ACCESS_public)
DW$184	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$42)
	.dwattr DW$184, DW_AT_name("PIEIFR5"), DW_AT_symbol_name("_PIEIFR5")
	.dwattr DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$184, DW_AT_accessibility(DW_ACCESS_public)
DW$185	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$40)
	.dwattr DW$185, DW_AT_name("PIEIER6"), DW_AT_symbol_name("_PIEIER6")
	.dwattr DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$185, DW_AT_accessibility(DW_ACCESS_public)
DW$186	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$42)
	.dwattr DW$186, DW_AT_name("PIEIFR6"), DW_AT_symbol_name("_PIEIFR6")
	.dwattr DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$186, DW_AT_accessibility(DW_ACCESS_public)
DW$187	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$40)
	.dwattr DW$187, DW_AT_name("PIEIER7"), DW_AT_symbol_name("_PIEIER7")
	.dwattr DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$187, DW_AT_accessibility(DW_ACCESS_public)
DW$188	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$42)
	.dwattr DW$188, DW_AT_name("PIEIFR7"), DW_AT_symbol_name("_PIEIFR7")
	.dwattr DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$188, DW_AT_accessibility(DW_ACCESS_public)
DW$189	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$40)
	.dwattr DW$189, DW_AT_name("PIEIER8"), DW_AT_symbol_name("_PIEIER8")
	.dwattr DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$189, DW_AT_accessibility(DW_ACCESS_public)
DW$190	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$42)
	.dwattr DW$190, DW_AT_name("PIEIFR8"), DW_AT_symbol_name("_PIEIFR8")
	.dwattr DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$190, DW_AT_accessibility(DW_ACCESS_public)
DW$191	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$40)
	.dwattr DW$191, DW_AT_name("PIEIER9"), DW_AT_symbol_name("_PIEIER9")
	.dwattr DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$191, DW_AT_accessibility(DW_ACCESS_public)
DW$192	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$42)
	.dwattr DW$192, DW_AT_name("PIEIFR9"), DW_AT_symbol_name("_PIEIFR9")
	.dwattr DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$192, DW_AT_accessibility(DW_ACCESS_public)
DW$193	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$40)
	.dwattr DW$193, DW_AT_name("PIEIER10"), DW_AT_symbol_name("_PIEIER10")
	.dwattr DW$193, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$193, DW_AT_accessibility(DW_ACCESS_public)
DW$194	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$42)
	.dwattr DW$194, DW_AT_name("PIEIFR10"), DW_AT_symbol_name("_PIEIFR10")
	.dwattr DW$194, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$194, DW_AT_accessibility(DW_ACCESS_public)
DW$195	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$40)
	.dwattr DW$195, DW_AT_name("PIEIER11"), DW_AT_symbol_name("_PIEIER11")
	.dwattr DW$195, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$195, DW_AT_accessibility(DW_ACCESS_public)
DW$196	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$42)
	.dwattr DW$196, DW_AT_name("PIEIFR11"), DW_AT_symbol_name("_PIEIFR11")
	.dwattr DW$196, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$196, DW_AT_accessibility(DW_ACCESS_public)
DW$197	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$40)
	.dwattr DW$197, DW_AT_name("PIEIER12"), DW_AT_symbol_name("_PIEIER12")
	.dwattr DW$197, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$197, DW_AT_accessibility(DW_ACCESS_public)
DW$198	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$42)
	.dwattr DW$198, DW_AT_name("PIEIFR12"), DW_AT_symbol_name("_PIEIFR12")
	.dwattr DW$198, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr DW$198, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$43

DW$T$45	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$44)
	.dwattr DW$T$45, DW_AT_address_class(0x16)
DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)
DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x02)

DW$T$22	.dwtag  DW_TAG_union_type
	.dwattr DW$T$22, DW_AT_name("TIM_GROUP")
	.dwattr DW$T$22, DW_AT_byte_size(0x02)
DW$199	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$199, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$199, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$199, DW_AT_accessibility(DW_ACCESS_public)
DW$200	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$200, DW_AT_name("half"), DW_AT_symbol_name("_half")
	.dwattr DW$200, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$200, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$22


DW$T$24	.dwtag  DW_TAG_union_type
	.dwattr DW$T$24, DW_AT_name("PRD_GROUP")
	.dwattr DW$T$24, DW_AT_byte_size(0x02)
DW$201	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$201, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$201, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$201, DW_AT_accessibility(DW_ACCESS_public)
DW$202	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$202, DW_AT_name("half"), DW_AT_symbol_name("_half")
	.dwattr DW$202, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$202, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$24


DW$T$26	.dwtag  DW_TAG_union_type
	.dwattr DW$T$26, DW_AT_name("TCR_REG")
	.dwattr DW$T$26, DW_AT_byte_size(0x01)
DW$203	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$203, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$203, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$203, DW_AT_accessibility(DW_ACCESS_public)
DW$204	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$204, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$204, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$204, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$26


DW$T$28	.dwtag  DW_TAG_union_type
	.dwattr DW$T$28, DW_AT_name("TPR_REG")
	.dwattr DW$T$28, DW_AT_byte_size(0x01)
DW$205	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$205, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$205, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$205, DW_AT_accessibility(DW_ACCESS_public)
DW$206	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$206, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$206, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$206, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$28


DW$T$30	.dwtag  DW_TAG_union_type
	.dwattr DW$T$30, DW_AT_name("TPRH_REG")
	.dwattr DW$T$30, DW_AT_byte_size(0x01)
DW$207	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$207, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$207, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$207, DW_AT_accessibility(DW_ACCESS_public)
DW$208	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$208, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$208, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$208, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$30


DW$T$36	.dwtag  DW_TAG_union_type
	.dwattr DW$T$36, DW_AT_name("PIECTRL_REG")
	.dwattr DW$T$36, DW_AT_byte_size(0x01)
DW$209	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$209, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$209, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$209, DW_AT_accessibility(DW_ACCESS_public)
DW$210	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$35)
	.dwattr DW$210, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$210, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$210, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$36


DW$T$38	.dwtag  DW_TAG_union_type
	.dwattr DW$T$38, DW_AT_name("PIEACK_REG")
	.dwattr DW$T$38, DW_AT_byte_size(0x01)
DW$211	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$211, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$211, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$211, DW_AT_accessibility(DW_ACCESS_public)
DW$212	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$37)
	.dwattr DW$212, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$212, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$212, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$38


DW$T$39	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$39, DW_AT_name("PIEIER_BITS")
	.dwattr DW$T$39, DW_AT_byte_size(0x01)
DW$213	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$213, DW_AT_name("INTx1"), DW_AT_symbol_name("_INTx1")
	.dwattr DW$213, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$213, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$213, DW_AT_accessibility(DW_ACCESS_public)
DW$214	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$214, DW_AT_name("INTx2"), DW_AT_symbol_name("_INTx2")
	.dwattr DW$214, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$214, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$214, DW_AT_accessibility(DW_ACCESS_public)
DW$215	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$215, DW_AT_name("INTx3"), DW_AT_symbol_name("_INTx3")
	.dwattr DW$215, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$215, DW_AT_accessibility(DW_ACCESS_public)
DW$216	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$216, DW_AT_name("INTx4"), DW_AT_symbol_name("_INTx4")
	.dwattr DW$216, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$216, DW_AT_accessibility(DW_ACCESS_public)
DW$217	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$217, DW_AT_name("INTx5"), DW_AT_symbol_name("_INTx5")
	.dwattr DW$217, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$217, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$217, DW_AT_accessibility(DW_ACCESS_public)
DW$218	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$218, DW_AT_name("INTx6"), DW_AT_symbol_name("_INTx6")
	.dwattr DW$218, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$218, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$218, DW_AT_accessibility(DW_ACCESS_public)
DW$219	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$219, DW_AT_name("INTx7"), DW_AT_symbol_name("_INTx7")
	.dwattr DW$219, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$219, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$219, DW_AT_accessibility(DW_ACCESS_public)
DW$220	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$220, DW_AT_name("INTx8"), DW_AT_symbol_name("_INTx8")
	.dwattr DW$220, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$220, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$220, DW_AT_accessibility(DW_ACCESS_public)
DW$221	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$221, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$221, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$221, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$39


DW$T$40	.dwtag  DW_TAG_union_type
	.dwattr DW$T$40, DW_AT_name("PIEIER_REG")
	.dwattr DW$T$40, DW_AT_byte_size(0x01)
DW$222	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$222, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$222, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$222, DW_AT_accessibility(DW_ACCESS_public)
DW$223	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$223, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$223, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$223, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$40


DW$T$42	.dwtag  DW_TAG_union_type
	.dwattr DW$T$42, DW_AT_name("PIEIFR_REG")
	.dwattr DW$T$42, DW_AT_byte_size(0x01)
DW$224	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$224, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$224, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$224, DW_AT_accessibility(DW_ACCESS_public)
DW$225	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$225, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$225, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$225, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$42


DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$20, DW_AT_name("TIM_REG")
	.dwattr DW$T$20, DW_AT_byte_size(0x02)
DW$226	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$226, DW_AT_name("LSW"), DW_AT_symbol_name("_LSW")
	.dwattr DW$226, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$226, DW_AT_accessibility(DW_ACCESS_public)
DW$227	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$227, DW_AT_name("MSW"), DW_AT_symbol_name("_MSW")
	.dwattr DW$227, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$227, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20


DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$23, DW_AT_name("PRD_REG")
	.dwattr DW$T$23, DW_AT_byte_size(0x02)
DW$228	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$228, DW_AT_name("LSW"), DW_AT_symbol_name("_LSW")
	.dwattr DW$228, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$228, DW_AT_accessibility(DW_ACCESS_public)
DW$229	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$229, DW_AT_name("MSW"), DW_AT_symbol_name("_MSW")
	.dwattr DW$229, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$229, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$23


DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$25, DW_AT_name("TCR_BITS")
	.dwattr DW$T$25, DW_AT_byte_size(0x01)
DW$230	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$230, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$230, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$230, DW_AT_accessibility(DW_ACCESS_public)
DW$231	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$231, DW_AT_name("TSS"), DW_AT_symbol_name("_TSS")
	.dwattr DW$231, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$231, DW_AT_accessibility(DW_ACCESS_public)
DW$232	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$232, DW_AT_name("TRB"), DW_AT_symbol_name("_TRB")
	.dwattr DW$232, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$232, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$232, DW_AT_accessibility(DW_ACCESS_public)
DW$233	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$233, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$233, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x04)
	.dwattr DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$233, DW_AT_accessibility(DW_ACCESS_public)
DW$234	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$234, DW_AT_name("SOFT"), DW_AT_symbol_name("_SOFT")
	.dwattr DW$234, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$234, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$234, DW_AT_accessibility(DW_ACCESS_public)
DW$235	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$235, DW_AT_name("FREE"), DW_AT_symbol_name("_FREE")
	.dwattr DW$235, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$235, DW_AT_accessibility(DW_ACCESS_public)
DW$236	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$236, DW_AT_name("rsvd3"), DW_AT_symbol_name("_rsvd3")
	.dwattr DW$236, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x02)
	.dwattr DW$236, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$236, DW_AT_accessibility(DW_ACCESS_public)
DW$237	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$237, DW_AT_name("TIE"), DW_AT_symbol_name("_TIE")
	.dwattr DW$237, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$237, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$237, DW_AT_accessibility(DW_ACCESS_public)
DW$238	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$238, DW_AT_name("TIF"), DW_AT_symbol_name("_TIF")
	.dwattr DW$238, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$238, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$25


DW$T$27	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$27, DW_AT_name("TPR_BITS")
	.dwattr DW$T$27, DW_AT_byte_size(0x01)
DW$239	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$239, DW_AT_name("TDDR"), DW_AT_symbol_name("_TDDR")
	.dwattr DW$239, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x08)
	.dwattr DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$239, DW_AT_accessibility(DW_ACCESS_public)
DW$240	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$240, DW_AT_name("PSC"), DW_AT_symbol_name("_PSC")
	.dwattr DW$240, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$240, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$27


DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$29, DW_AT_name("TPRH_BITS")
	.dwattr DW$T$29, DW_AT_byte_size(0x01)
DW$241	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$241, DW_AT_name("TDDRH"), DW_AT_symbol_name("_TDDRH")
	.dwattr DW$241, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x08)
	.dwattr DW$241, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$241, DW_AT_accessibility(DW_ACCESS_public)
DW$242	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$242, DW_AT_name("PSCH"), DW_AT_symbol_name("_PSCH")
	.dwattr DW$242, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$242, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$29


DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$35, DW_AT_name("PIECTRL_BITS")
	.dwattr DW$T$35, DW_AT_byte_size(0x01)
DW$243	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$243, DW_AT_name("ENPIE"), DW_AT_symbol_name("_ENPIE")
	.dwattr DW$243, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$243, DW_AT_accessibility(DW_ACCESS_public)
DW$244	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$244, DW_AT_name("PIEVECT"), DW_AT_symbol_name("_PIEVECT")
	.dwattr DW$244, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0f)
	.dwattr DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$244, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$35


DW$T$37	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$37, DW_AT_name("PIEACK_BITS")
	.dwattr DW$T$37, DW_AT_byte_size(0x01)
DW$245	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$245, DW_AT_name("ACK1"), DW_AT_symbol_name("_ACK1")
	.dwattr DW$245, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$245, DW_AT_accessibility(DW_ACCESS_public)
DW$246	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$246, DW_AT_name("ACK2"), DW_AT_symbol_name("_ACK2")
	.dwattr DW$246, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$246, DW_AT_accessibility(DW_ACCESS_public)
DW$247	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$247, DW_AT_name("ACK3"), DW_AT_symbol_name("_ACK3")
	.dwattr DW$247, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$247, DW_AT_accessibility(DW_ACCESS_public)
DW$248	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$248, DW_AT_name("ACK4"), DW_AT_symbol_name("_ACK4")
	.dwattr DW$248, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$248, DW_AT_accessibility(DW_ACCESS_public)
DW$249	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$249, DW_AT_name("ACK5"), DW_AT_symbol_name("_ACK5")
	.dwattr DW$249, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$249, DW_AT_accessibility(DW_ACCESS_public)
DW$250	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$250, DW_AT_name("ACK6"), DW_AT_symbol_name("_ACK6")
	.dwattr DW$250, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$250, DW_AT_accessibility(DW_ACCESS_public)
DW$251	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$251, DW_AT_name("ACK7"), DW_AT_symbol_name("_ACK7")
	.dwattr DW$251, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$251, DW_AT_accessibility(DW_ACCESS_public)
DW$252	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$252, DW_AT_name("ACK8"), DW_AT_symbol_name("_ACK8")
	.dwattr DW$252, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$252, DW_AT_accessibility(DW_ACCESS_public)
DW$253	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$253, DW_AT_name("ACK9"), DW_AT_symbol_name("_ACK9")
	.dwattr DW$253, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$253, DW_AT_accessibility(DW_ACCESS_public)
DW$254	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$254, DW_AT_name("ACK10"), DW_AT_symbol_name("_ACK10")
	.dwattr DW$254, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$254, DW_AT_accessibility(DW_ACCESS_public)
DW$255	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$255, DW_AT_name("ACK11"), DW_AT_symbol_name("_ACK11")
	.dwattr DW$255, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$255, DW_AT_accessibility(DW_ACCESS_public)
DW$256	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$256, DW_AT_name("ACK12"), DW_AT_symbol_name("_ACK12")
	.dwattr DW$256, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$256, DW_AT_accessibility(DW_ACCESS_public)
DW$257	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$257, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$257, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$257, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$37


DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$41, DW_AT_name("PIEIFR_BITS")
	.dwattr DW$T$41, DW_AT_byte_size(0x01)
DW$258	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$258, DW_AT_name("INTx1"), DW_AT_symbol_name("_INTx1")
	.dwattr DW$258, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$258, DW_AT_accessibility(DW_ACCESS_public)
DW$259	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$259, DW_AT_name("INTx2"), DW_AT_symbol_name("_INTx2")
	.dwattr DW$259, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$259, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$259, DW_AT_accessibility(DW_ACCESS_public)
DW$260	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$260, DW_AT_name("INTx3"), DW_AT_symbol_name("_INTx3")
	.dwattr DW$260, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$260, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$260, DW_AT_accessibility(DW_ACCESS_public)
DW$261	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$261, DW_AT_name("INTx4"), DW_AT_symbol_name("_INTx4")
	.dwattr DW$261, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$261, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$261, DW_AT_accessibility(DW_ACCESS_public)
DW$262	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$262, DW_AT_name("INTx5"), DW_AT_symbol_name("_INTx5")
	.dwattr DW$262, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$262, DW_AT_accessibility(DW_ACCESS_public)
DW$263	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$263, DW_AT_name("INTx6"), DW_AT_symbol_name("_INTx6")
	.dwattr DW$263, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$263, DW_AT_accessibility(DW_ACCESS_public)
DW$264	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$264, DW_AT_name("INTx7"), DW_AT_symbol_name("_INTx7")
	.dwattr DW$264, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$264, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$264, DW_AT_accessibility(DW_ACCESS_public)
DW$265	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$265, DW_AT_name("INTx8"), DW_AT_symbol_name("_INTx8")
	.dwattr DW$265, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$265, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$265, DW_AT_accessibility(DW_ACCESS_public)
DW$266	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$266, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$266, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$266, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$266, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$41


	.dwattr DW$13, DW_AT_external(0x01)
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

DW$267	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$267, DW_AT_location[DW_OP_reg0]
DW$268	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$268, DW_AT_location[DW_OP_reg1]
DW$269	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$269, DW_AT_location[DW_OP_reg2]
DW$270	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$270, DW_AT_location[DW_OP_reg3]
DW$271	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$271, DW_AT_location[DW_OP_reg4]
DW$272	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$272, DW_AT_location[DW_OP_reg5]
DW$273	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$273, DW_AT_location[DW_OP_reg6]
DW$274	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$274, DW_AT_location[DW_OP_reg7]
DW$275	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$275, DW_AT_location[DW_OP_reg8]
DW$276	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$276, DW_AT_location[DW_OP_reg9]
DW$277	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$277, DW_AT_location[DW_OP_reg10]
DW$278	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$278, DW_AT_location[DW_OP_reg11]
DW$279	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$279, DW_AT_location[DW_OP_reg12]
DW$280	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$280, DW_AT_location[DW_OP_reg13]
DW$281	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$281, DW_AT_location[DW_OP_reg14]
DW$282	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$282, DW_AT_location[DW_OP_reg15]
DW$283	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$283, DW_AT_location[DW_OP_reg16]
DW$284	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$284, DW_AT_location[DW_OP_reg17]
DW$285	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$285, DW_AT_location[DW_OP_reg18]
DW$286	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$286, DW_AT_location[DW_OP_reg19]
DW$287	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$287, DW_AT_location[DW_OP_reg20]
DW$288	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$288, DW_AT_location[DW_OP_reg21]
DW$289	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$289, DW_AT_location[DW_OP_reg22]
DW$290	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$290, DW_AT_location[DW_OP_reg23]
DW$291	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$291, DW_AT_location[DW_OP_reg24]
DW$292	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$292, DW_AT_location[DW_OP_reg25]
DW$293	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$293, DW_AT_location[DW_OP_reg26]
DW$294	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$294, DW_AT_location[DW_OP_reg27]
DW$295	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$295, DW_AT_location[DW_OP_reg28]
DW$296	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$296, DW_AT_location[DW_OP_reg29]
DW$297	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$297, DW_AT_location[DW_OP_reg30]
DW$298	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$298, DW_AT_location[DW_OP_reg31]
DW$299	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$299, DW_AT_location[DW_OP_regx 0x20]
DW$300	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$300, DW_AT_location[DW_OP_regx 0x21]
DW$301	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$301, DW_AT_location[DW_OP_regx 0x22]
DW$302	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$302, DW_AT_location[DW_OP_regx 0x23]
DW$303	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$303, DW_AT_location[DW_OP_regx 0x24]
DW$304	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$304, DW_AT_location[DW_OP_regx 0x25]
DW$305	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$305, DW_AT_location[DW_OP_regx 0x26]
DW$306	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$306, DW_AT_location[DW_OP_regx 0x27]
DW$307	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$307, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU

