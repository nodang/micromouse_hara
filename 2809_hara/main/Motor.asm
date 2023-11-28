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
DW$1	.dwtag  DW_TAG_variable, DW_AT_name("s_flags"), DW_AT_symbol_name("_s_flags")
	.dwattr DW$1, DW_AT_type(*DW$T$137)
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)

DW$2	.dwtag  DW_TAG_subprogram, DW_AT_name("__IQmpy"), DW_AT_symbol_name("___IQmpy")
	.dwattr DW$2, DW_AT_type(*DW$T$12)
	.dwattr DW$2, DW_AT_declaration(0x01)
	.dwattr DW$2, DW_AT_external(0x01)
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$4	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$5	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$2


DW$6	.dwtag  DW_TAG_subprogram, DW_AT_name("memset"), DW_AT_symbol_name("_memset")
	.dwattr DW$6, DW_AT_type(*DW$T$3)
	.dwattr DW$6, DW_AT_declaration(0x01)
	.dwattr DW$6, DW_AT_external(0x01)
DW$7	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$8	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$9	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$102)
	.dwendtag DW$6


DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("__IQxmpy"), DW_AT_symbol_name("___IQxmpy")
	.dwattr DW$10, DW_AT_type(*DW$T$12)
	.dwattr DW$10, DW_AT_declaration(0x01)
	.dwattr DW$10, DW_AT_external(0x01)
DW$11	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$12	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$13	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$10

DW$14	.dwtag  DW_TAG_variable, DW_AT_name("CpuTimer2Regs"), DW_AT_symbol_name("_CpuTimer2Regs")
	.dwattr DW$14, DW_AT_type(*DW$T$122)
	.dwattr DW$14, DW_AT_declaration(0x01)
	.dwattr DW$14, DW_AT_external(0x01)
DW$15	.dwtag  DW_TAG_variable, DW_AT_name("CpuTimer0Regs"), DW_AT_symbol_name("_CpuTimer0Regs")
	.dwattr DW$15, DW_AT_type(*DW$T$122)
	.dwattr DW$15, DW_AT_declaration(0x01)
	.dwattr DW$15, DW_AT_external(0x01)
DW$16	.dwtag  DW_TAG_variable, DW_AT_name("EPwm1Regs"), DW_AT_symbol_name("_EPwm1Regs")
	.dwattr DW$16, DW_AT_type(*DW$T$130)
	.dwattr DW$16, DW_AT_declaration(0x01)
	.dwattr DW$16, DW_AT_external(0x01)
DW$17	.dwtag  DW_TAG_variable, DW_AT_name("EPwm2Regs"), DW_AT_symbol_name("_EPwm2Regs")
	.dwattr DW$17, DW_AT_type(*DW$T$130)
	.dwattr DW$17, DW_AT_declaration(0x01)
	.dwattr DW$17, DW_AT_external(0x01)
DW$18	.dwtag  DW_TAG_variable, DW_AT_name("s_left_motor"), DW_AT_symbol_name("_s_left_motor")
	.dwattr DW$18, DW_AT_type(*DW$T$106)
	.dwattr DW$18, DW_AT_declaration(0x01)
	.dwattr DW$18, DW_AT_external(0x01)
DW$19	.dwtag  DW_TAG_variable, DW_AT_name("s_right_motor"), DW_AT_symbol_name("_s_right_motor")
	.dwattr DW$19, DW_AT_type(*DW$T$106)
	.dwattr DW$19, DW_AT_declaration(0x01)
	.dwattr DW$19, DW_AT_external(0x01)
DW$20	.dwtag  DW_TAG_variable, DW_AT_name("LeftQepRegs"), DW_AT_symbol_name("_LeftQepRegs")
	.dwattr DW$20, DW_AT_type(*DW$T$134)
	.dwattr DW$20, DW_AT_declaration(0x01)
	.dwattr DW$20, DW_AT_external(0x01)
DW$21	.dwtag  DW_TAG_variable, DW_AT_name("RightQepRegs"), DW_AT_symbol_name("_RightQepRegs")
	.dwattr DW$21, DW_AT_type(*DW$T$134)
	.dwattr DW$21, DW_AT_declaration(0x01)
	.dwattr DW$21, DW_AT_external(0x01)
;	..\Compiler\bin\opt2000.exe C:\Users\노호진\AppData\Local\Temp\TI49610 C:\Users\노호진\AppData\Local\Temp\TI4964 
;	..\Compiler\bin\ac2000.exe --keep_unneeded_types -D_INLINE -DLARGE_MODEL -I..\include --version=28 --keep_unneeded_types --mem_model:code=flat --mem_model:data=large -m --i_output_file C:\Users\노호진\AppData\Local\Temp\TI4962 --template_info_file C:\Users\노호진\AppData\Local\Temp\TI4966 --object_file Motor.obj --embed_opts 10 --call_assumptions=0 --mem_model:code=flat --mem_model:data=large --opt_for_speed --opt_level=3 --optimizer_comments --optimizer_interlist --program_level_compile 
	.sect	".text"
	.global	_motor_timer2_ISR

DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("motor_timer2_ISR"), DW_AT_symbol_name("_motor_timer2_ISR")
	.dwattr DW$22, DW_AT_low_pc(_motor_timer2_ISR)
	.dwattr DW$22, DW_AT_high_pc(0x00)
	.dwattr DW$22, DW_AT_begin_file("Motor.c")
	.dwattr DW$22, DW_AT_begin_line(0x38)
	.dwattr DW$22, DW_AT_begin_column(0x10)
	.dwattr DW$22, DW_AT_TI_interrupt(0x01)
	.dwpsn	"Motor.c",57,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _motor_timer2_ISR             FR SIZE:  10           *
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
_motor_timer2_ISR:
;*** 61	-----------------------    s_right_motor.u16_qep_sample = RightQepRegs.QPOSCNT;
;*** 62	-----------------------    s_left_motor.u16_qep_sample = LeftQepRegs.QPOSCNT;
;*** 64	-----------------------    *(&RightQepRegs+21L) |= 0x80u;
;*** 65	-----------------------    *(&LeftQepRegs+21L) |= 0x80u;
;*** 68	-----------------------    if ( s_right_motor.u16_qep_sample > 1023u ) goto g3;
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
DW$23	.dwtag  DW_TAG_variable, DW_AT_name("C$1"), DW_AT_symbol_name("C$1")
	.dwattr DW$23, DW_AT_type(*DW$T$129)
	.dwattr DW$23, DW_AT_location[DW_OP_reg12]
;* AR4   assigned to C$2
DW$24	.dwtag  DW_TAG_variable, DW_AT_name("C$2"), DW_AT_symbol_name("C$2")
	.dwattr DW$24, DW_AT_type(*DW$T$129)
	.dwattr DW$24, DW_AT_location[DW_OP_reg12]
;* AR4   assigned to C$3
DW$25	.dwtag  DW_TAG_variable, DW_AT_name("C$3"), DW_AT_symbol_name("C$3")
	.dwattr DW$25, DW_AT_type(*DW$T$129)
	.dwattr DW$25, DW_AT_location[DW_OP_reg12]
;* AR4   assigned to C$4
DW$26	.dwtag  DW_TAG_variable, DW_AT_name("C$4"), DW_AT_symbol_name("C$4")
	.dwattr DW$26, DW_AT_type(*DW$T$129)
	.dwattr DW$26, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to C$5
DW$27	.dwtag  DW_TAG_variable, DW_AT_name("C$5"), DW_AT_symbol_name("C$5")
	.dwattr DW$27, DW_AT_type(*DW$T$116)
	.dwattr DW$27, DW_AT_location[DW_OP_reg14]
;* AR5   assigned to C$6
DW$28	.dwtag  DW_TAG_variable, DW_AT_name("C$6"), DW_AT_symbol_name("C$6")
	.dwattr DW$28, DW_AT_type(*DW$T$116)
	.dwattr DW$28, DW_AT_location[DW_OP_reg14]
	.dwpsn	"Motor.c",61,2
        MOVW      DP,#_RightQepRegs
        MOVL      ACC,@_RightQepRegs    ; |61| 
        MOVW      DP,#_s_right_motor
        MOV       @_s_right_motor,AL    ; |61| 
	.dwpsn	"Motor.c",62,2
        MOVW      DP,#_LeftQepRegs
        MOVL      ACC,@_LeftQepRegs     ; |62| 
        MOVW      DP,#_s_left_motor
        MOV       @_s_left_motor,AL     ; |62| 
	.dwpsn	"Motor.c",64,2
        MOVW      DP,#_RightQepRegs+21
        OR        @_RightQepRegs+21,#0x0080 ; |64| 
	.dwpsn	"Motor.c",65,2
        MOVW      DP,#_LeftQepRegs+21
        OR        @_LeftQepRegs+21,#0x0080 ; |65| 
	.dwpsn	"Motor.c",68,2
        MOVW      DP,#_s_right_motor
        CMP       @_s_right_motor,#1023 ; |68| 
        BF        L1,HI                 ; |68| 
        ; branchcc occurs ; |68| 
;*** 71	-----------------------    s_right_motor.i16_qep_val = s_right_motor.u16_qep_sample;
;*** 71	-----------------------    goto g4;
	.dwpsn	"Motor.c",71,3
        MOV       AL,@_s_right_motor    ; |71| 
        MOV       @_s_right_motor+3,AL  ; |71| 
        BF        L2,UNC                ; |71| 
        ; branch occurs ; |71| 
L1:    
;***	-----------------------g3:
;*** 69	-----------------------    s_right_motor.i16_qep_val = s_right_motor.u16_qep_sample-2048u;
	.dwpsn	"Motor.c",69,3
        MOV       AL,@_s_right_motor    ; |69| 
        SUB       AL,#2048              ; |69| 
        MOV       @_s_right_motor+3,AL  ; |69| 
L2:    
;***	-----------------------g4:
;*** 69	-----------------------    if ( s_left_motor.u16_qep_sample > 1023u ) goto g6;
        MOVW      DP,#_s_left_motor
        CMP       @_s_left_motor,#1023  ; |69| 
        BF        L3,HI                 ; |69| 
        ; branchcc occurs ; |69| 
;*** 76	-----------------------    s_left_motor.i16_qep_val = s_left_motor.u16_qep_sample;
;*** 76	-----------------------    goto g7;
	.dwpsn	"Motor.c",76,3
        MOV       AL,@_s_left_motor     ; |76| 
        MOV       @_s_left_motor+3,AL   ; |76| 
        BF        L4,UNC                ; |76| 
        ; branch occurs ; |76| 
L3:    
;***	-----------------------g6:
;*** 74	-----------------------    s_left_motor.i16_qep_val = s_left_motor.u16_qep_sample-2048u;
	.dwpsn	"Motor.c",74,3
        MOV       AL,@_s_left_motor     ; |74| 
        SUB       AL,#2048              ; |74| 
        MOV       @_s_left_motor+3,AL   ; |74| 
L4:    
;***	-----------------------g7:
;*** 79	-----------------------    s_right_motor.q27_tick_distance = __IQxmpy((long)s_right_motor.i16_qep_val<<21, 9882596L, 8);
;*** 80	-----------------------    s_left_motor.q27_tick_distance = __IQxmpy((long)s_left_motor.i16_qep_val<<21, 9882596L, 8);
;*** 83	-----------------------    s_right_motor.q17_distance_sum += s_right_motor.q27_tick_distance>>10;
;*** 84	-----------------------    s_left_motor.q17_distance_sum += s_left_motor.q27_tick_distance>>10;
;*** 88	-----------------------    s_right_motor.q17_remaining_distance = s_right_motor.q17_user_distance-s_right_motor.q17_distance_sum;
;*** 89	-----------------------    s_left_motor.q17_remaining_distance = s_left_motor.q17_user_distance-s_left_motor.q17_distance_sum;
;*** 92	-----------------------    s_right_motor.q17_current_velocity = __IQxmpy((long)s_right_motor.i16_qep_val<<21, 1235324544L, 2);
;*** 93	-----------------------    s_left_motor.q17_current_velocity = __IQxmpy((long)s_left_motor.i16_qep_val<<21, 1235324544L, 2);
;*** 119	-----------------------    if ( s_right_motor.q17_user_velocity > s_right_motor.q17_next_velocity ) goto g10;
	.dwpsn	"Motor.c",79,2
        SETC      SXM
        MOVW      DP,#_s_right_motor+3
        MOV       T,#21                 ; |79| 
        MOV       ACC,@_s_right_motor+3 ; |79| 
        LSLL      ACC,T                 ; |79| 
        MOVL      XAR6,ACC              ; |79| 
        MOVL      XT,ACC                ; |79| 
        MOV       AH,#150
        MOV       AL,#52196
        IMPYL     P,XT,ACC              ; |79| 
        MOVL      XT,XAR6               ; |79| 
        QMPYL     ACC,XT,ACC            ; |79| 
        LSL64     ACC:P,#8              ; |79| 
        MOVL      @_s_right_motor+8,ACC ; |79| 
	.dwpsn	"Motor.c",80,2
        MOVW      DP,#_s_left_motor+3
        MOV       T,#21                 ; |80| 
        MOV       ACC,@_s_left_motor+3  ; |80| 
        LSLL      ACC,T                 ; |80| 
        MOVL      XAR6,ACC              ; |80| 
        MOVL      XT,ACC                ; |80| 
        MOV       AH,#150
        MOV       AL,#52196
        IMPYL     P,XT,ACC              ; |80| 
        MOVL      XT,XAR6               ; |80| 
        QMPYL     ACC,XT,ACC            ; |80| 
        LSL64     ACC:P,#8              ; |80| 
        MOVL      @_s_left_motor+8,ACC  ; |80| 
	.dwpsn	"Motor.c",83,2
        MOVW      DP,#_s_right_motor+8
        MOVL      ACC,@_s_right_motor+8 ; |83| 
        SFR       ACC,10                ; |83| 
        ADDL      @_s_right_motor+10,ACC ; |83| 
	.dwpsn	"Motor.c",84,2
        MOVW      DP,#_s_left_motor+8
        MOVL      ACC,@_s_left_motor+8  ; |84| 
        SFR       ACC,10                ; |84| 
        ADDL      @_s_left_motor+10,ACC ; |84| 
	.dwpsn	"Motor.c",88,2
        MOVW      DP,#_s_right_motor+18
        MOVL      ACC,@_s_right_motor+18 ; |88| 
        SUBL      ACC,@_s_right_motor+10 ; |88| 
        MOVL      @_s_right_motor+20,ACC ; |88| 
	.dwpsn	"Motor.c",89,2
        MOVW      DP,#_s_left_motor+18
        MOVL      ACC,@_s_left_motor+18 ; |89| 
        SUBL      ACC,@_s_left_motor+10 ; |89| 
        MOVL      @_s_left_motor+20,ACC ; |89| 
	.dwpsn	"Motor.c",92,2
        MOVW      DP,#_s_right_motor+3
        MOV       T,#21                 ; |92| 
        MOV       ACC,@_s_right_motor+3 ; |92| 
        LSLL      ACC,T                 ; |92| 
        MOVL      XAR6,ACC              ; |92| 
        MOVL      XT,ACC                ; |92| 
        MOV       AH,#18849
        MOV       AL,#36480
        IMPYL     P,XT,ACC              ; |92| 
        MOVL      XT,XAR6               ; |92| 
        QMPYL     ACC,XT,ACC            ; |92| 
        LSL64     ACC:P,#2              ; |92| 
        MOVL      @_s_right_motor+22,ACC ; |92| 
	.dwpsn	"Motor.c",93,2
        MOVW      DP,#_s_left_motor+3
        MOV       T,#21                 ; |93| 
        MOV       ACC,@_s_left_motor+3  ; |93| 
        LSLL      ACC,T                 ; |93| 
        MOVL      XAR6,ACC              ; |93| 
        MOVL      XT,ACC                ; |93| 
        MOV       AH,#18849
        MOV       AL,#36480
        IMPYL     P,XT,ACC              ; |93| 
        MOVL      XT,XAR6               ; |93| 
        QMPYL     ACC,XT,ACC            ; |93| 
        LSL64     ACC:P,#2              ; |93| 
        MOVL      @_s_left_motor+22,ACC ; |93| 
	.dwpsn	"Motor.c",119,2
        MOVW      DP,#_s_right_motor+28
        MOVL      ACC,@_s_right_motor+28 ; |119| 
        CMPL      ACC,@_s_right_motor+30 ; |119| 
        BF        L5,LT                 ; |119| 
        ; branchcc occurs ; |119| 
;*** 125	-----------------------    if ( s_right_motor.q17_user_velocity >= s_right_motor.q17_next_velocity ) goto g12;
	.dwpsn	"Motor.c",125,7
        MOVL      ACC,@_s_right_motor+28 ; |125| 
        CMPL      ACC,@_s_right_motor+30 ; |125| 
        BF        L7,LEQ                ; |125| 
        ; branchcc occurs ; |125| 
;*** 127	-----------------------    s_right_motor.q17_next_velocity -= __IQxmpy(536870L, (long)(s_right_motor.i32_accel<<15), 4);
;*** 128	-----------------------    if ( s_right_motor.q17_user_velocity > s_right_motor.q17_next_velocity ) goto g11;
	.dwpsn	"Motor.c",127,3
        MOVL      ACC,@_s_right_motor+6 ; |127| 
        MOVL      XAR4,#536870          ; |127| 
        LSL       ACC,15                ; |127| 
        MOVL      XT,XAR4               ; |127| 
        IMPYL     P,XT,ACC              ; |127| 
        QMPYL     ACC,XT,ACC            ; |127| 
        LSL64     ACC:P,#4              ; |127| 
        SUBL      @_s_right_motor+28,ACC ; |127| 
	.dwpsn	"Motor.c",128,3
        MOVL      ACC,@_s_right_motor+28 ; |128| 
        CMPL      ACC,@_s_right_motor+30 ; |128| 
        BF        L6,LT                 ; |128| 
        ; branchcc occurs ; |128| 
;*** 128	-----------------------    goto g12;
        BF        L7,UNC                ; |128| 
        ; branch occurs ; |128| 
L5:    
;***	-----------------------g10:
;*** 121	-----------------------    s_right_motor.q17_next_velocity += __IQxmpy(536870L, (long)(s_right_motor.i32_accel<<15), 4);
;*** 122	-----------------------    if ( s_right_motor.q17_user_velocity >= s_right_motor.q17_next_velocity ) goto g12;
	.dwpsn	"Motor.c",121,3
        MOVL      ACC,@_s_right_motor+6 ; |121| 
        MOVL      XAR4,#536870          ; |121| 
        LSL       ACC,15                ; |121| 
        MOVL      XT,XAR4               ; |121| 
        IMPYL     P,XT,ACC              ; |121| 
        QMPYL     ACC,XT,ACC            ; |121| 
        LSL64     ACC:P,#4              ; |121| 
        ADDL      @_s_right_motor+28,ACC ; |121| 
	.dwpsn	"Motor.c",122,3
        MOVL      ACC,@_s_right_motor+28 ; |122| 
        CMPL      ACC,@_s_right_motor+30 ; |122| 
        BF        L7,LEQ                ; |122| 
        ; branchcc occurs ; |122| 
L6:    
;***	-----------------------g11:
;*** 123	-----------------------    s_right_motor.q17_next_velocity = s_right_motor.q17_user_velocity;
	.dwpsn	"Motor.c",123,4
        MOVL      ACC,@_s_right_motor+30 ; |123| 
        MOVL      @_s_right_motor+28,ACC ; |123| 
L7:    
;***	-----------------------g12:
;*** 132	-----------------------    if ( s_left_motor.q17_user_velocity > s_left_motor.q17_next_velocity ) goto g15;
	.dwpsn	"Motor.c",132,2
        MOVW      DP,#_s_left_motor+28
        MOVL      ACC,@_s_left_motor+28 ; |132| 
        CMPL      ACC,@_s_left_motor+30 ; |132| 
        BF        L8,LT                 ; |132| 
        ; branchcc occurs ; |132| 
;*** 138	-----------------------    if ( s_left_motor.q17_user_velocity >= s_left_motor.q17_next_velocity ) goto g17;
	.dwpsn	"Motor.c",138,7
        MOVL      ACC,@_s_left_motor+28 ; |138| 
        CMPL      ACC,@_s_left_motor+30 ; |138| 
        BF        L10,LEQ               ; |138| 
        ; branchcc occurs ; |138| 
;*** 140	-----------------------    s_left_motor.q17_next_velocity -= __IQxmpy(536870L, (long)(s_left_motor.i32_accel<<15), 4);
;*** 141	-----------------------    if ( s_left_motor.q17_user_velocity > s_left_motor.q17_next_velocity ) goto g16;
	.dwpsn	"Motor.c",140,3
        MOVL      ACC,@_s_left_motor+6  ; |140| 
        MOVL      XAR4,#536870          ; |140| 
        LSL       ACC,15                ; |140| 
        MOVL      XT,XAR4               ; |140| 
        IMPYL     P,XT,ACC              ; |140| 
        QMPYL     ACC,XT,ACC            ; |140| 
        LSL64     ACC:P,#4              ; |140| 
        SUBL      @_s_left_motor+28,ACC ; |140| 
	.dwpsn	"Motor.c",141,3
        MOVL      ACC,@_s_left_motor+28 ; |141| 
        CMPL      ACC,@_s_left_motor+30 ; |141| 
        BF        L9,LT                 ; |141| 
        ; branchcc occurs ; |141| 
;*** 141	-----------------------    goto g17;
        BF        L10,UNC               ; |141| 
        ; branch occurs ; |141| 
L8:    
;***	-----------------------g15:
;*** 134	-----------------------    s_left_motor.q17_next_velocity += __IQxmpy(536870L, (long)(s_left_motor.i32_accel<<15), 4);
;*** 135	-----------------------    if ( s_left_motor.q17_user_velocity >= s_left_motor.q17_next_velocity ) goto g17;
	.dwpsn	"Motor.c",134,3
        MOVL      ACC,@_s_left_motor+6  ; |134| 
        MOVL      XAR4,#536870          ; |134| 
        LSL       ACC,15                ; |134| 
        MOVL      XT,XAR4               ; |134| 
        IMPYL     P,XT,ACC              ; |134| 
        QMPYL     ACC,XT,ACC            ; |134| 
        LSL64     ACC:P,#4              ; |134| 
        ADDL      @_s_left_motor+28,ACC ; |134| 
	.dwpsn	"Motor.c",135,3
        MOVL      ACC,@_s_left_motor+28 ; |135| 
        CMPL      ACC,@_s_left_motor+30 ; |135| 
        BF        L10,LEQ               ; |135| 
        ; branchcc occurs ; |135| 
L9:    
;***	-----------------------g16:
;*** 136	-----------------------    s_left_motor.q17_next_velocity = s_left_motor.q17_user_velocity;
	.dwpsn	"Motor.c",136,4
        MOVL      ACC,@_s_left_motor+30 ; |136| 
        MOVL      @_s_left_motor+28,ACC ; |136| 
L10:    
;***	-----------------------g17:
;*** 168	-----------------------    C$6 = &s_right_motor;
;*** 168	-----------------------    (*(volatile struct $$fake0 *)C$6).q17_err_velocity_sum -= C$6[19];
;*** 169	-----------------------    *(&s_right_motor+38L) = C$6[18];
;*** 170	-----------------------    *(&s_right_motor+36L) = C$6[17];
;*** 171	-----------------------    *(&s_right_motor+34L) = C$6[16];
;*** 172	-----------------------    *(&s_right_motor+32L) = __IQxmpy(s_right_motor.q17_next_velocity, s_right_motor.q26_pos_adjrate, 6)-s_right_motor.q17_current_velocity;
;*** 173	-----------------------    s_right_motor.q17_err_velocity_sum += *(&s_right_motor+32L);
;*** 175	-----------------------    s_right_motor.q17_proportional_term = __IQmpy(s_right_motor.q17_kp, *(&s_right_motor+32L), 17);
;*** 176	-----------------------    s_right_motor.q17_derivative_term = __IQmpy(s_right_motor.q17_kd, *(&s_right_motor+32L)-*(&s_right_motor+38L)+(*(&s_right_motor+34L)-*(&s_right_motor+36L))*2L, 17);
;*** 177	-----------------------    s_right_motor.q17_integral_term = __IQmpy(s_right_motor.q17_ki, s_right_motor.q17_err_velocity_sum, 17);
;*** 179	-----------------------    if ( s_right_motor.q17_integral_term > 655360L ) goto g20;
	.dwpsn	"Motor.c",168,2
        MOVL      XAR5,#_s_right_motor  ; |168| 
        MOVB      ACC,#40
        ADDL      ACC,XAR5
        MOVL      XAR4,ACC              ; |168| 
        MOVB      XAR0,#38              ; |168| 
        MOVL      ACC,*+XAR5[AR0]       ; |168| 
        SUBL      *+XAR4[0],ACC         ; |168| 
	.dwpsn	"Motor.c",169,2
        MOVB      XAR0,#36              ; |169| 
        MOVW      DP,#_s_right_motor+38
        MOVL      ACC,*+XAR5[AR0]       ; |169| 
        MOVL      @_s_right_motor+38,ACC ; |169| 
	.dwpsn	"Motor.c",170,2
        MOVB      XAR0,#34              ; |170| 
        MOVL      ACC,*+XAR5[AR0]       ; |170| 
        MOVL      @_s_right_motor+36,ACC ; |170| 
	.dwpsn	"Motor.c",171,2
        MOVB      XAR0,#32              ; |171| 
        MOVL      ACC,*+XAR5[AR0]       ; |171| 
        MOVL      @_s_right_motor+34,ACC ; |171| 
	.dwpsn	"Motor.c",172,2
        MOVL      XT,@_s_right_motor+28 ; |172| 
        IMPYL     P,XT,@_s_right_motor+50 ; |172| 
        QMPYL     ACC,XT,@_s_right_motor+50 ; |172| 
        LSL64     ACC:P,#6              ; |172| 
        SUBL      ACC,@_s_right_motor+22 ; |172| 
        MOVL      @_s_right_motor+32,ACC ; |172| 
	.dwpsn	"Motor.c",173,2
        MOVL      ACC,@_s_right_motor+32 ; |173| 
        ADDL      @_s_right_motor+40,ACC ; |173| 
	.dwpsn	"Motor.c",175,2
        MOVL      XT,@_s_right_motor+12 ; |175| 
        IMPYL     P,XT,@_s_right_motor+32 ; |175| 
        QMPYL     ACC,XT,@_s_right_motor+32 ; |175| 
        LSL64     ACC:P,#15             ; |175| 
        MOVL      @_s_right_motor+42,ACC ; |175| 
	.dwpsn	"Motor.c",176,2
        MOVL      ACC,@_s_right_motor+32 ; |176| 
        SUBL      ACC,@_s_right_motor+38 ; |176| 
        MOVL      XAR6,ACC              ; |176| 
        MOVL      ACC,@_s_right_motor+34 ; |176| 
        SUBL      ACC,@_s_right_motor+36 ; |176| 
        LSL       ACC,1                 ; |176| 
        ADDL      ACC,XAR6
        MOVL      XT,@_s_right_motor+16 ; |176| 
        IMPYL     P,XT,ACC              ; |176| 
        QMPYL     ACC,XT,ACC            ; |176| 
        LSL64     ACC:P,#15             ; |176| 
        MOVL      @_s_right_motor+44,ACC ; |176| 
	.dwpsn	"Motor.c",177,2
        MOVL      XT,@_s_right_motor+14 ; |177| 
        IMPYL     P,XT,@_s_right_motor+40 ; |177| 
        QMPYL     ACC,XT,@_s_right_motor+40 ; |177| 
        LSL64     ACC:P,#15             ; |177| 
        MOVL      @_s_right_motor+46,ACC ; |177| 
	.dwpsn	"Motor.c",179,2
        MOVL      XAR4,#655360          ; |179| 
        MOVL      ACC,XAR4              ; |179| 
        CMPL      ACC,@_s_right_motor+46 ; |179| 
        BF        L11,LT                ; |179| 
        ; branchcc occurs ; |179| 
;*** 181	-----------------------    if ( s_right_motor.q17_integral_term >= (-655360L) ) goto g21;
	.dwpsn	"Motor.c",181,7
        MOV       ACC,#-20 << 15
        CMPL      ACC,@_s_right_motor+46 ; |181| 
        BF        L12,LEQ               ; |181| 
        ; branchcc occurs ; |181| 
;*** 182	-----------------------    s_right_motor.q17_integral_term = (-655360L);
;*** 182	-----------------------    goto g21;
	.dwpsn	"Motor.c",182,3
        MOV       PH,#65526
        MOV       PL,#0
        MOVL      @_s_right_motor+46,P  ; |182| 
        BF        L12,UNC               ; |182| 
        ; branch occurs ; |182| 
L11:    
;***	-----------------------g20:
;*** 180	-----------------------    s_right_motor.q17_integral_term = 655360L;
	.dwpsn	"Motor.c",180,3
        MOVL      @_s_right_motor+46,XAR4 ; |180| 
L12:    
;***	-----------------------g21:
;*** 184	-----------------------    s_right_motor.q17_pid_out_term += s_right_motor.q17_proportional_term+s_right_motor.q17_derivative_term+s_right_motor.q17_integral_term;
;*** 187	-----------------------    C$5 = &s_left_motor;
;*** 187	-----------------------    (*(volatile struct $$fake0 *)C$5).q17_err_velocity_sum -= C$5[19];
;*** 188	-----------------------    *(&s_left_motor+38L) = C$5[18];
;*** 189	-----------------------    *(&s_left_motor+36L) = C$5[17];
;*** 190	-----------------------    *(&s_left_motor+34L) = C$5[16];
;*** 191	-----------------------    *(&s_left_motor+32L) = __IQxmpy(s_left_motor.q17_next_velocity, s_left_motor.q26_pos_adjrate, 6)-s_left_motor.q17_current_velocity;
;*** 192	-----------------------    s_left_motor.q17_err_velocity_sum += *(&s_left_motor+32L);
;*** 194	-----------------------    s_left_motor.q17_proportional_term = __IQmpy(s_left_motor.q17_kp, *(&s_left_motor+32L), 17);
;*** 195	-----------------------    s_left_motor.q17_derivative_term = __IQmpy(s_left_motor.q17_kd, *(&s_left_motor+32L)-*(&s_left_motor+38L)+(*(&s_left_motor+34L)-*(&s_left_motor+36L))*2L, 17);
;*** 196	-----------------------    s_left_motor.q17_integral_term = __IQmpy(s_left_motor.q17_ki, s_left_motor.q17_err_velocity_sum, 17);
;*** 198	-----------------------    if ( s_left_motor.q17_integral_term > 655360L ) goto g24;
	.dwpsn	"Motor.c",184,2
        MOVL      ACC,@_s_right_motor+42 ; |184| 
        ADDL      ACC,@_s_right_motor+48 ; |184| 
        ADDL      ACC,@_s_right_motor+44 ; |184| 
        ADDL      ACC,@_s_right_motor+46 ; |184| 
        MOVL      @_s_right_motor+48,ACC ; |184| 
	.dwpsn	"Motor.c",187,2
        MOVL      XAR5,#_s_left_motor   ; |187| 
        MOVB      ACC,#40
        ADDL      ACC,XAR5
        MOVL      XAR4,ACC              ; |187| 
        MOVB      XAR0,#38              ; |187| 
        MOVL      ACC,*+XAR5[AR0]       ; |187| 
        SUBL      *+XAR4[0],ACC         ; |187| 
	.dwpsn	"Motor.c",188,2
        MOVB      XAR0,#36              ; |188| 
        MOVW      DP,#_s_left_motor+38
        MOVL      ACC,*+XAR5[AR0]       ; |188| 
        MOVL      @_s_left_motor+38,ACC ; |188| 
	.dwpsn	"Motor.c",189,2
        MOVB      XAR0,#34              ; |189| 
        MOVL      ACC,*+XAR5[AR0]       ; |189| 
        MOVL      @_s_left_motor+36,ACC ; |189| 
	.dwpsn	"Motor.c",190,2
        MOVB      XAR0,#32              ; |190| 
        MOVL      ACC,*+XAR5[AR0]       ; |190| 
        MOVL      @_s_left_motor+34,ACC ; |190| 
	.dwpsn	"Motor.c",191,2
        MOVL      XT,@_s_left_motor+28  ; |191| 
        IMPYL     P,XT,@_s_left_motor+50 ; |191| 
        QMPYL     ACC,XT,@_s_left_motor+50 ; |191| 
        LSL64     ACC:P,#6              ; |191| 
        SUBL      ACC,@_s_left_motor+22 ; |191| 
        MOVL      @_s_left_motor+32,ACC ; |191| 
	.dwpsn	"Motor.c",192,2
        MOVL      ACC,@_s_left_motor+32 ; |192| 
        ADDL      @_s_left_motor+40,ACC ; |192| 
	.dwpsn	"Motor.c",194,2
        MOVL      XT,@_s_left_motor+12  ; |194| 
        IMPYL     P,XT,@_s_left_motor+32 ; |194| 
        QMPYL     ACC,XT,@_s_left_motor+32 ; |194| 
        LSL64     ACC:P,#15             ; |194| 
        MOVL      @_s_left_motor+42,ACC ; |194| 
	.dwpsn	"Motor.c",195,2
        MOVL      ACC,@_s_left_motor+32 ; |195| 
        SUBL      ACC,@_s_left_motor+38 ; |195| 
        MOVL      XAR6,ACC              ; |195| 
        MOVL      ACC,@_s_left_motor+34 ; |195| 
        SUBL      ACC,@_s_left_motor+36 ; |195| 
        LSL       ACC,1                 ; |195| 
        ADDL      ACC,XAR6
        MOVL      XT,@_s_left_motor+16  ; |195| 
        IMPYL     P,XT,ACC              ; |195| 
        QMPYL     ACC,XT,ACC            ; |195| 
        LSL64     ACC:P,#15             ; |195| 
        MOVL      @_s_left_motor+44,ACC ; |195| 
	.dwpsn	"Motor.c",196,2
        MOVL      XT,@_s_left_motor+14  ; |196| 
        IMPYL     P,XT,@_s_left_motor+40 ; |196| 
        QMPYL     ACC,XT,@_s_left_motor+40 ; |196| 
        LSL64     ACC:P,#15             ; |196| 
        MOVL      @_s_left_motor+46,ACC ; |196| 
	.dwpsn	"Motor.c",198,2
        MOVL      XAR4,#655360          ; |198| 
        MOVL      ACC,XAR4              ; |198| 
        CMPL      ACC,@_s_left_motor+46 ; |198| 
        BF        L13,LT                ; |198| 
        ; branchcc occurs ; |198| 
;*** 200	-----------------------    if ( s_left_motor.q17_integral_term >= (-655360L) ) goto g25;
	.dwpsn	"Motor.c",200,7
        MOV       ACC,#-20 << 15
        CMPL      ACC,@_s_left_motor+46 ; |200| 
        BF        L14,LEQ               ; |200| 
        ; branchcc occurs ; |200| 
;*** 201	-----------------------    s_left_motor.q17_integral_term = (-655360L);
;*** 201	-----------------------    goto g25;
	.dwpsn	"Motor.c",201,3
        MOV       PH,#65526
        MOV       PL,#0
        MOVL      @_s_left_motor+46,P   ; |201| 
        BF        L14,UNC               ; |201| 
        ; branch occurs ; |201| 
L13:    
;***	-----------------------g24:
;*** 199	-----------------------    s_left_motor.q17_integral_term = 655360L;
	.dwpsn	"Motor.c",199,3
        MOVL      @_s_left_motor+46,XAR4 ; |199| 
L14:    
;***	-----------------------g25:
;*** 203	-----------------------    s_left_motor.q17_pid_out_term += s_left_motor.q17_proportional_term+s_left_motor.q17_derivative_term+s_left_motor.q17_integral_term;
;*** 206	-----------------------    if ( !(*&s_flags&1u) ) goto g40;
	.dwpsn	"Motor.c",203,2
        MOVL      ACC,@_s_left_motor+42 ; |203| 
        ADDL      ACC,@_s_left_motor+48 ; |203| 
        ADDL      ACC,@_s_left_motor+44 ; |203| 
        ADDL      ACC,@_s_left_motor+46 ; |203| 
        MOVL      @_s_left_motor+48,ACC ; |203| 
	.dwpsn	"Motor.c",206,2
        MOVW      DP,#_s_flags
        TBIT      @_s_flags,#0          ; |206| 
        BF        L22,NTC               ; |206| 
        ; branchcc occurs ; |206| 
;*** 208	-----------------------    if ( s_right_motor.q17_pid_out_term >= 0L ) goto g30;
	.dwpsn	"Motor.c",208,3
        MOVW      DP,#_s_right_motor+48
        MOVL      ACC,@_s_right_motor+48 ; |208| 
        BF        L16,GEQ               ; |208| 
        ; branchcc occurs ; |208| 
;*** 219	-----------------------    if ( s_right_motor.q17_pid_out_term >= (-1179648000L) ) goto g29;
	.dwpsn	"Motor.c",219,4
        MOV       AL,#0
        MOV       AH,#47536
        CMPL      ACC,@_s_right_motor+48 ; |219| 
        BF        L15,LEQ               ; |219| 
        ; branchcc occurs ; |219| 
;*** 220	-----------------------    s_right_motor.q17_pid_out_term = (-1179648000L);
	.dwpsn	"Motor.c",220,5
        MOV       PH,#47536
        MOV       PL,#0
        MOVL      @_s_right_motor+48,P  ; |220| 
L15:    
;***	-----------------------g29:
;*** 222	-----------------------    C$4 = &EPwm1Regs;
;*** 222	-----------------------    *(&EPwm1Regs+11L) = ((volatile unsigned *)C$4)[11]&0xfffeu|2u;
;*** 223	-----------------------    *(&EPwm1Regs+12L) = ((volatile unsigned *)C$4)[12]&0xfffcu|1u;
;*** 224	-----------------------    EPwm1Regs.CMPA.half.CMPA = -(unsigned)(__IQxmpy(s_right_motor.q17_pid_out_term, 238609296L, 2)>>17);
;*** 224	-----------------------    goto g33;
	.dwpsn	"Motor.c",222,4
        MOVB      XAR0,#11              ; |222| 
        MOVL      XAR4,#_EPwm1Regs      ; |222| 
        MOVW      DP,#_EPwm1Regs+11
        AND       AL,*+XAR4[AR0],#0xfffe ; |222| 
        ORB       AL,#0x02              ; |222| 
        MOV       @_EPwm1Regs+11,AL     ; |222| 
	.dwpsn	"Motor.c",223,4
        MOVB      XAR0,#12              ; |223| 
        AND       AL,*+XAR4[AR0],#0xfffc ; |223| 
        ORB       AL,#0x01              ; |223| 
        MOV       @_EPwm1Regs+12,AL     ; |223| 
	.dwpsn	"Motor.c",224,4
        MOVW      DP,#_s_right_motor+48
        MOV       AH,#3640
        MOV       AL,#58256
        MOVL      XT,@_s_right_motor+48 ; |224| 
        IMPYL     P,XT,ACC              ; |224| 
        QMPYL     ACC,XT,ACC            ; |224| 
        MOV       T,#17                 ; |224| 
        LSL64     ACC:P,#2              ; |224| 
        ASRL      ACC,T                 ; |224| 
        MOVW      DP,#_EPwm1Regs+9
        NEG       AL                    ; |224| 
        MOV       @_EPwm1Regs+9,AL      ; |224| 
        BF        L18,UNC               ; |224| 
        ; branch occurs ; |224| 
L16:    
;***	-----------------------g30:
;*** 210	-----------------------    if ( s_right_motor.q17_pid_out_term <= 1179648000L ) goto g32;
	.dwpsn	"Motor.c",210,4
        MOV       AL,#0
        MOV       AH,#18000
        CMPL      ACC,@_s_right_motor+48 ; |210| 
        BF        L17,GEQ               ; |210| 
        ; branchcc occurs ; |210| 
;*** 211	-----------------------    s_right_motor.q17_pid_out_term = 1179648000L;
	.dwpsn	"Motor.c",211,5
        MOV       PH,#18000
        MOV       PL,#0
        MOVL      @_s_right_motor+48,P  ; |211| 
L17:    
;***	-----------------------g32:
;*** 213	-----------------------    C$3 = &EPwm1Regs;
;*** 213	-----------------------    *(&EPwm1Regs+11L) = ((volatile unsigned *)C$3)[11]&0xfffcu|1u;
;*** 214	-----------------------    *(&EPwm1Regs+12L) = ((volatile unsigned *)C$3)[12]&0xfffeu|2u;
;*** 215	-----------------------    EPwm1Regs.CMPB = __IQxmpy(s_right_motor.q17_pid_out_term, 238609296L, 2)>>17;
	.dwpsn	"Motor.c",213,4
        MOVB      XAR0,#11              ; |213| 
        MOVL      XAR4,#_EPwm1Regs      ; |213| 
        MOVW      DP,#_EPwm1Regs+11
        AND       AL,*+XAR4[AR0],#0xfffc ; |213| 
        ORB       AL,#0x01              ; |213| 
        MOV       @_EPwm1Regs+11,AL     ; |213| 
	.dwpsn	"Motor.c",214,4
        MOVB      XAR0,#12              ; |214| 
        AND       AL,*+XAR4[AR0],#0xfffe ; |214| 
        ORB       AL,#0x02              ; |214| 
        MOV       @_EPwm1Regs+12,AL     ; |214| 
	.dwpsn	"Motor.c",215,4
        MOVW      DP,#_s_right_motor+48
        MOV       AH,#3640
        MOV       AL,#58256
        MOVL      XT,@_s_right_motor+48 ; |215| 
        IMPYL     P,XT,ACC              ; |215| 
        QMPYL     ACC,XT,ACC            ; |215| 
        MOV       T,#17                 ; |215| 
        LSL64     ACC:P,#2              ; |215| 
        MOVW      DP,#_EPwm1Regs+10
        ASRL      ACC,T                 ; |215| 
        MOV       @_EPwm1Regs+10,AL     ; |215| 
L18:    
;***	-----------------------g33:
;*** 216	-----------------------    if ( s_left_motor.q17_pid_out_term >= 0L ) goto g37;
	.dwpsn	"Motor.c",216,3
        MOVW      DP,#_s_left_motor+48
        MOVL      ACC,@_s_left_motor+48 ; |216| 
        BF        L20,GEQ               ; |216| 
        ; branchcc occurs ; |216| 
;*** 238	-----------------------    if ( s_left_motor.q17_pid_out_term >= (-1179648000L) ) goto g36;
	.dwpsn	"Motor.c",238,4
        MOV       AL,#0
        MOV       AH,#47536
        CMPL      ACC,@_s_left_motor+48 ; |238| 
        BF        L19,LEQ               ; |238| 
        ; branchcc occurs ; |238| 
;*** 239	-----------------------    s_left_motor.q17_pid_out_term = (-1179648000L);
	.dwpsn	"Motor.c",239,5
        MOV       PH,#47536
        MOV       PL,#0
        MOVL      @_s_left_motor+48,P   ; |239| 
L19:    
;***	-----------------------g36:
;*** 241	-----------------------    C$2 = &EPwm2Regs;
;*** 241	-----------------------    *(&EPwm2Regs+11L) = ((volatile unsigned *)C$2)[11]&0xfffcu|1u;
;*** 242	-----------------------    *(&EPwm2Regs+12L) = ((volatile unsigned *)C$2)[12]&0xfffeu|2u;
;*** 243	-----------------------    EPwm2Regs.CMPB = -(unsigned)(__IQxmpy(s_left_motor.q17_pid_out_term, 238609296L, 2)>>17);
;*** 243	-----------------------    goto g40;
	.dwpsn	"Motor.c",241,4
        MOVB      XAR0,#11              ; |241| 
        MOVL      XAR4,#_EPwm2Regs      ; |241| 
        MOVW      DP,#_EPwm2Regs+11
        AND       AL,*+XAR4[AR0],#0xfffc ; |241| 
        ORB       AL,#0x01              ; |241| 
        MOV       @_EPwm2Regs+11,AL     ; |241| 
	.dwpsn	"Motor.c",242,4
        MOVB      XAR0,#12              ; |242| 
        AND       AL,*+XAR4[AR0],#0xfffe ; |242| 
        ORB       AL,#0x02              ; |242| 
        MOV       @_EPwm2Regs+12,AL     ; |242| 
	.dwpsn	"Motor.c",243,4
        MOVW      DP,#_s_left_motor+48
        MOV       AH,#3640
        MOV       AL,#58256
        MOVL      XT,@_s_left_motor+48  ; |243| 
        IMPYL     P,XT,ACC              ; |243| 
        QMPYL     ACC,XT,ACC            ; |243| 
        MOV       T,#17                 ; |243| 
        LSL64     ACC:P,#2              ; |243| 
        ASRL      ACC,T                 ; |243| 
        MOVW      DP,#_EPwm2Regs+10
        NEG       AL                    ; |243| 
        MOV       @_EPwm2Regs+10,AL     ; |243| 
        BF        L22,UNC               ; |243| 
        ; branch occurs ; |243| 
L20:    
;***	-----------------------g37:
;*** 229	-----------------------    if ( s_left_motor.q17_pid_out_term <= 1179648000L ) goto g39;
	.dwpsn	"Motor.c",229,4
        MOV       AL,#0
        MOV       AH,#18000
        CMPL      ACC,@_s_left_motor+48 ; |229| 
        BF        L21,GEQ               ; |229| 
        ; branchcc occurs ; |229| 
;*** 230	-----------------------    s_left_motor.q17_pid_out_term = 1179648000L;
	.dwpsn	"Motor.c",230,5
        MOV       PH,#18000
        MOV       PL,#0
        MOVL      @_s_left_motor+48,P   ; |230| 
L21:    
;***	-----------------------g39:
;*** 232	-----------------------    C$1 = &EPwm2Regs;
;*** 232	-----------------------    *(&EPwm2Regs+11L) = ((volatile unsigned *)C$1)[11]&0xfffeu|2u;
;*** 233	-----------------------    *(&EPwm2Regs+12L) = ((volatile unsigned *)C$1)[12]&0xfffcu|1u;
;*** 234	-----------------------    EPwm2Regs.CMPA.half.CMPA = __IQxmpy(s_left_motor.q17_pid_out_term, 238609296L, 2)>>17;
	.dwpsn	"Motor.c",232,4
        MOVB      XAR0,#11              ; |232| 
        MOVL      XAR4,#_EPwm2Regs      ; |232| 
        MOVW      DP,#_EPwm2Regs+11
        AND       AL,*+XAR4[AR0],#0xfffe ; |232| 
        ORB       AL,#0x02              ; |232| 
        MOV       @_EPwm2Regs+11,AL     ; |232| 
	.dwpsn	"Motor.c",233,4
        MOVB      XAR0,#12              ; |233| 
        AND       AL,*+XAR4[AR0],#0xfffc ; |233| 
        ORB       AL,#0x01              ; |233| 
        MOV       @_EPwm2Regs+12,AL     ; |233| 
	.dwpsn	"Motor.c",234,4
        MOVW      DP,#_s_left_motor+48
        MOV       AH,#3640
        MOV       AL,#58256
        MOVL      XT,@_s_left_motor+48  ; |234| 
        IMPYL     P,XT,ACC              ; |234| 
        QMPYL     ACC,XT,ACC            ; |234| 
        MOV       T,#17                 ; |234| 
        LSL64     ACC:P,#2              ; |234| 
        MOVW      DP,#_EPwm2Regs+9
        ASRL      ACC,T                 ; |234| 
        MOV       @_EPwm2Regs+9,AL      ; |234| 
L22:    
;***	-----------------------g40:
;*** 255	-----------------------    *(&CpuTimer2Regs+4L) |= 0x20u;
;*** 256	-----------------------    *(&CpuTimer0Regs+4L) &= 0xffefu;
;*** 256	-----------------------    return;
	.dwpsn	"Motor.c",255,2
        MOVW      DP,#_CpuTimer2Regs+4
        OR        @_CpuTimer2Regs+4,#0x0020 ; |255| 
	.dwpsn	"Motor.c",256,2
        MOVW      DP,#_CpuTimer0Regs+4
        AND       @_CpuTimer0Regs+4,#0xffef ; |256| 
	.dwpsn	"Motor.c",257,1
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
	.dwattr DW$22, DW_AT_end_file("Motor.c")
	.dwattr DW$22, DW_AT_end_line(0x101)
	.dwattr DW$22, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$22

	.sect	".text"
	.global	_init_motor

DW$29	.dwtag  DW_TAG_subprogram, DW_AT_name("init_motor"), DW_AT_symbol_name("_init_motor")
	.dwattr DW$29, DW_AT_low_pc(_init_motor)
	.dwattr DW$29, DW_AT_high_pc(0x00)
	.dwattr DW$29, DW_AT_begin_file("Motor.c")
	.dwattr DW$29, DW_AT_begin_line(0x32)
	.dwattr DW$29, DW_AT_begin_column(0x06)
	.dwpsn	"Motor.c",51,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _init_motor                   FR SIZE:   0           *
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
_init_motor:
;*** 40	-----------------------    memset(&s_right_motor, 0, 52uL);  // [3]
;*** 42	-----------------------    s_right_motor.q17_kp = 589824L;  // [3]
;*** 43	-----------------------    s_right_motor.q17_ki = 2L;  // [3]
;*** 44	-----------------------    s_right_motor.q17_kd = 589824L;  // [3]
;*** 46	-----------------------    s_right_motor.i32_accel = 6500uL;  // [3]
;*** 47	-----------------------    s_right_motor.q17_user_velocity = 0L;  // [3]
;*** 40	-----------------------    memset(&s_left_motor, 0, 52uL);  // [3]
;*** 42	-----------------------    s_left_motor.q17_kp = 589824L;  // [3]
;*** 43	-----------------------    s_left_motor.q17_ki = 2L;  // [3]
;*** 44	-----------------------    s_left_motor.q17_kd = 589824L;  // [3]
;*** 46	-----------------------    s_left_motor.i32_accel = 6500uL;  // [3]
;*** 47	-----------------------    s_left_motor.q17_user_velocity = 0L;  // [3]
;*** 47	-----------------------    return;  // [3]
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
	.dwpsn	"Motor.c",40,2
        MOVB      ACC,#52
        MOVB      XAR5,#0
        MOVL      XAR4,#_s_right_motor  ; |40| 
        LCR       #_memset              ; |40| 
        ; call occurs [#_memset] ; |40| 
	.dwpsn	"Motor.c",42,2
        MOVW      DP,#_s_right_motor+12
        MOVL      XAR4,#589824          ; |42| 
        MOVL      @_s_right_motor+12,XAR4 ; |42| 
	.dwpsn	"Motor.c",43,2
        MOVB      ACC,#2
        MOVL      @_s_right_motor+14,ACC ; |43| 
	.dwpsn	"Motor.c",44,2
        MOVL      @_s_right_motor+16,XAR4 ; |44| 
	.dwpsn	"Motor.c",46,2
        MOVL      XAR4,#6500            ; |46| 
        MOVL      @_s_right_motor+6,XAR4 ; |46| 
	.dwpsn	"Motor.c",47,2
        MOVB      ACC,#0
        MOVL      @_s_right_motor+30,ACC ; |47| 
	.dwpsn	"Motor.c",40,2
        MOVB      XAR5,#0
        MOVL      XAR4,#_s_left_motor   ; |40| 
        MOVB      ACC,#52
        LCR       #_memset              ; |40| 
        ; call occurs [#_memset] ; |40| 
	.dwpsn	"Motor.c",42,2
        MOVL      XAR4,#589824          ; |42| 
        MOVW      DP,#_s_left_motor+12
        MOVL      @_s_left_motor+12,XAR4 ; |42| 
	.dwpsn	"Motor.c",43,2
        MOVB      ACC,#2
        MOVL      @_s_left_motor+14,ACC ; |43| 
	.dwpsn	"Motor.c",44,2
        MOVL      @_s_left_motor+16,XAR4 ; |44| 
	.dwpsn	"Motor.c",46,2
        MOVL      XAR4,#6500            ; |46| 
        MOVL      @_s_left_motor+6,XAR4 ; |46| 
	.dwpsn	"Motor.c",47,2
        MOVB      ACC,#0
        MOVL      @_s_left_motor+30,ACC ; |47| 
	.dwpsn	"Motor.c",54,1
        LRETR
        ; return occurs
	.dwattr DW$29, DW_AT_end_file("Motor.c")
	.dwattr DW$29, DW_AT_end_line(0x36)
	.dwattr DW$29, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$29

;* Inlined function references:
;* [  3] _init_motor_structure
;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_s_flags
	.global	_memset
	.global	_CpuTimer2Regs
	.global	_CpuTimer0Regs
	.global	_EPwm1Regs
	.global	_EPwm2Regs
	.global	_s_left_motor
	.global	_s_right_motor
	.global	_LeftQepRegs
	.global	_RightQepRegs

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************
DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr DW$T$3, DW_AT_address_class(0x16)

DW$T$103	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$103, DW_AT_language(DW_LANG_C)
DW$30	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$31	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$32	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$102)
	.dwendtag DW$T$103


DW$T$108	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$108, DW_AT_language(DW_LANG_C)
DW$33	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$107)
	.dwendtag DW$T$108


DW$T$109	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$109, DW_AT_language(DW_LANG_C)
DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x01)
DW$T$12	.dwtag  DW_TAG_base_type, DW_AT_name("long")
	.dwattr DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$12, DW_AT_byte_size(0x02)

DW$T$113	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$113, DW_AT_language(DW_LANG_C)
DW$34	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$35	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$36	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$113

DW$T$116	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$115)
	.dwattr DW$T$116, DW_AT_address_class(0x16)
DW$T$102	.dwtag  DW_TAG_typedef, DW_AT_name("size_t"), DW_AT_type(*DW$T$13)
	.dwattr DW$T$102, DW_AT_language(DW_LANG_C)
DW$T$106	.dwtag  DW_TAG_typedef, DW_AT_name("MotorVariable"), DW_AT_type(*DW$T$105)
	.dwattr DW$T$106, DW_AT_language(DW_LANG_C)
DW$T$107	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$106)
	.dwattr DW$T$107, DW_AT_address_class(0x16)
DW$37	.dwtag  DW_TAG_far_type
	.dwattr DW$37, DW_AT_type(*DW$T$37)
DW$T$122	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$122, DW_AT_type(*DW$37)
DW$T$129	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$128)
	.dwattr DW$T$129, DW_AT_address_class(0x16)
DW$38	.dwtag  DW_TAG_far_type
	.dwattr DW$38, DW_AT_type(*DW$T$82)
DW$T$130	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$130, DW_AT_type(*DW$38)
DW$39	.dwtag  DW_TAG_far_type
	.dwattr DW$39, DW_AT_type(*DW$T$100)
DW$T$134	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$134, DW_AT_type(*DW$39)
DW$T$137	.dwtag  DW_TAG_typedef, DW_AT_name("Flags"), DW_AT_type(*DW$T$136)
	.dwattr DW$T$137, DW_AT_language(DW_LANG_C)

DW$T$115	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$114)
	.dwattr DW$T$115, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$115, DW_AT_byte_size(0x08)
DW$40	.dwtag  DW_TAG_subrange_type
	.dwattr DW$40, DW_AT_upper_bound(0x03)
	.dwendtag DW$T$115

DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x02)
DW$41	.dwtag  DW_TAG_far_type
	.dwattr DW$41, DW_AT_type(*DW$T$26)
DW$T$105	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$105, DW_AT_type(*DW$41)

DW$T$37	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$37, DW_AT_name("CPUTIMER_REGS")
	.dwattr DW$T$37, DW_AT_byte_size(0x08)
DW$42	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$28)
	.dwattr DW$42, DW_AT_name("TIM"), DW_AT_symbol_name("_TIM")
	.dwattr DW$42, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$42, DW_AT_accessibility(DW_ACCESS_public)
DW$43	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$30)
	.dwattr DW$43, DW_AT_name("PRD"), DW_AT_symbol_name("_PRD")
	.dwattr DW$43, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$43, DW_AT_accessibility(DW_ACCESS_public)
DW$44	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$44, DW_AT_name("TCR"), DW_AT_symbol_name("_TCR")
	.dwattr DW$44, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$44, DW_AT_accessibility(DW_ACCESS_public)
DW$45	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$45, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$45, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$45, DW_AT_accessibility(DW_ACCESS_public)
DW$46	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$46, DW_AT_name("TPR"), DW_AT_symbol_name("_TPR")
	.dwattr DW$46, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$46, DW_AT_accessibility(DW_ACCESS_public)
DW$47	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$47, DW_AT_name("TPRH"), DW_AT_symbol_name("_TPRH")
	.dwattr DW$47, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$47, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$37

DW$48	.dwtag  DW_TAG_far_type
	.dwattr DW$48, DW_AT_type(*DW$T$48)
DW$T$128	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$128, DW_AT_type(*DW$48)

DW$T$82	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$82, DW_AT_name("EPWM_REGS")
	.dwattr DW$T$82, DW_AT_byte_size(0x22)
DW$49	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$49, DW_AT_name("TBCTL"), DW_AT_symbol_name("_TBCTL")
	.dwattr DW$49, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$49, DW_AT_accessibility(DW_ACCESS_public)
DW$50	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$50, DW_AT_name("TBSTS"), DW_AT_symbol_name("_TBSTS")
	.dwattr DW$50, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$50, DW_AT_accessibility(DW_ACCESS_public)
DW$51	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$43)
	.dwattr DW$51, DW_AT_name("TBPHS"), DW_AT_symbol_name("_TBPHS")
	.dwattr DW$51, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$51, DW_AT_accessibility(DW_ACCESS_public)
DW$52	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$52, DW_AT_name("TBCTR"), DW_AT_symbol_name("_TBCTR")
	.dwattr DW$52, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$52, DW_AT_accessibility(DW_ACCESS_public)
DW$53	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$53, DW_AT_name("TBPRD"), DW_AT_symbol_name("_TBPRD")
	.dwattr DW$53, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$53, DW_AT_accessibility(DW_ACCESS_public)
DW$54	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$54, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$54, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$54, DW_AT_accessibility(DW_ACCESS_public)
DW$55	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$55, DW_AT_name("CMPCTL"), DW_AT_symbol_name("_CMPCTL")
	.dwattr DW$55, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$55, DW_AT_accessibility(DW_ACCESS_public)
DW$56	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$47)
	.dwattr DW$56, DW_AT_name("CMPA"), DW_AT_symbol_name("_CMPA")
	.dwattr DW$56, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$56, DW_AT_accessibility(DW_ACCESS_public)
DW$57	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$57, DW_AT_name("CMPB"), DW_AT_symbol_name("_CMPB")
	.dwattr DW$57, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$57, DW_AT_accessibility(DW_ACCESS_public)
DW$58	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$49)
	.dwattr DW$58, DW_AT_name("AQCTLA"), DW_AT_symbol_name("_AQCTLA")
	.dwattr DW$58, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$58, DW_AT_accessibility(DW_ACCESS_public)
DW$59	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$49)
	.dwattr DW$59, DW_AT_name("AQCTLB"), DW_AT_symbol_name("_AQCTLB")
	.dwattr DW$59, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$59, DW_AT_accessibility(DW_ACCESS_public)
DW$60	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$51)
	.dwattr DW$60, DW_AT_name("AQSFRC"), DW_AT_symbol_name("_AQSFRC")
	.dwattr DW$60, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$60, DW_AT_accessibility(DW_ACCESS_public)
DW$61	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$53)
	.dwattr DW$61, DW_AT_name("AQCSFRC"), DW_AT_symbol_name("_AQCSFRC")
	.dwattr DW$61, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$61, DW_AT_accessibility(DW_ACCESS_public)
DW$62	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$55)
	.dwattr DW$62, DW_AT_name("DBCTL"), DW_AT_symbol_name("_DBCTL")
	.dwattr DW$62, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$62, DW_AT_accessibility(DW_ACCESS_public)
DW$63	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$63, DW_AT_name("DBRED"), DW_AT_symbol_name("_DBRED")
	.dwattr DW$63, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$63, DW_AT_accessibility(DW_ACCESS_public)
DW$64	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$64, DW_AT_name("DBFED"), DW_AT_symbol_name("_DBFED")
	.dwattr DW$64, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$64, DW_AT_accessibility(DW_ACCESS_public)
DW$65	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$57)
	.dwattr DW$65, DW_AT_name("TZSEL"), DW_AT_symbol_name("_TZSEL")
	.dwattr DW$65, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$65, DW_AT_accessibility(DW_ACCESS_public)
DW$66	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$66, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$66, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$66, DW_AT_accessibility(DW_ACCESS_public)
DW$67	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$59)
	.dwattr DW$67, DW_AT_name("TZCTL"), DW_AT_symbol_name("_TZCTL")
	.dwattr DW$67, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$67, DW_AT_accessibility(DW_ACCESS_public)
DW$68	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$61)
	.dwattr DW$68, DW_AT_name("TZEINT"), DW_AT_symbol_name("_TZEINT")
	.dwattr DW$68, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$68, DW_AT_accessibility(DW_ACCESS_public)
DW$69	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$63)
	.dwattr DW$69, DW_AT_name("TZFLG"), DW_AT_symbol_name("_TZFLG")
	.dwattr DW$69, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$69, DW_AT_accessibility(DW_ACCESS_public)
DW$70	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$65)
	.dwattr DW$70, DW_AT_name("TZCLR"), DW_AT_symbol_name("_TZCLR")
	.dwattr DW$70, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$70, DW_AT_accessibility(DW_ACCESS_public)
DW$71	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$67)
	.dwattr DW$71, DW_AT_name("TZFRC"), DW_AT_symbol_name("_TZFRC")
	.dwattr DW$71, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$71, DW_AT_accessibility(DW_ACCESS_public)
DW$72	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$69)
	.dwattr DW$72, DW_AT_name("ETSEL"), DW_AT_symbol_name("_ETSEL")
	.dwattr DW$72, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr DW$72, DW_AT_accessibility(DW_ACCESS_public)
DW$73	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$71)
	.dwattr DW$73, DW_AT_name("ETPS"), DW_AT_symbol_name("_ETPS")
	.dwattr DW$73, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$73, DW_AT_accessibility(DW_ACCESS_public)
DW$74	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$73)
	.dwattr DW$74, DW_AT_name("ETFLG"), DW_AT_symbol_name("_ETFLG")
	.dwattr DW$74, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr DW$74, DW_AT_accessibility(DW_ACCESS_public)
DW$75	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$75)
	.dwattr DW$75, DW_AT_name("ETCLR"), DW_AT_symbol_name("_ETCLR")
	.dwattr DW$75, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$75, DW_AT_accessibility(DW_ACCESS_public)
DW$76	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$77)
	.dwattr DW$76, DW_AT_name("ETFRC"), DW_AT_symbol_name("_ETFRC")
	.dwattr DW$76, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$76, DW_AT_accessibility(DW_ACCESS_public)
DW$77	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$79)
	.dwattr DW$77, DW_AT_name("PCCTL"), DW_AT_symbol_name("_PCCTL")
	.dwattr DW$77, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$77, DW_AT_accessibility(DW_ACCESS_public)
DW$78	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$78, DW_AT_name("rsvd3"), DW_AT_symbol_name("_rsvd3")
	.dwattr DW$78, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr DW$78, DW_AT_accessibility(DW_ACCESS_public)
DW$79	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$81)
	.dwattr DW$79, DW_AT_name("HRCNFG"), DW_AT_symbol_name("_HRCNFG")
	.dwattr DW$79, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr DW$79, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$82


DW$T$100	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$100, DW_AT_name("EQEP_REGS")
	.dwattr DW$T$100, DW_AT_byte_size(0x40)
DW$80	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$80, DW_AT_name("QPOSCNT"), DW_AT_symbol_name("_QPOSCNT")
	.dwattr DW$80, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$80, DW_AT_accessibility(DW_ACCESS_public)
DW$81	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$81, DW_AT_name("QPOSINIT"), DW_AT_symbol_name("_QPOSINIT")
	.dwattr DW$81, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$81, DW_AT_accessibility(DW_ACCESS_public)
DW$82	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$82, DW_AT_name("QPOSMAX"), DW_AT_symbol_name("_QPOSMAX")
	.dwattr DW$82, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$82, DW_AT_accessibility(DW_ACCESS_public)
DW$83	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$83, DW_AT_name("QPOSCMP"), DW_AT_symbol_name("_QPOSCMP")
	.dwattr DW$83, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$83, DW_AT_accessibility(DW_ACCESS_public)
DW$84	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$84, DW_AT_name("QPOSILAT"), DW_AT_symbol_name("_QPOSILAT")
	.dwattr DW$84, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$84, DW_AT_accessibility(DW_ACCESS_public)
DW$85	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$85, DW_AT_name("QPOSSLAT"), DW_AT_symbol_name("_QPOSSLAT")
	.dwattr DW$85, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$85, DW_AT_accessibility(DW_ACCESS_public)
DW$86	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$86, DW_AT_name("QPOSLAT"), DW_AT_symbol_name("_QPOSLAT")
	.dwattr DW$86, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$86, DW_AT_accessibility(DW_ACCESS_public)
DW$87	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$87, DW_AT_name("QUTMR"), DW_AT_symbol_name("_QUTMR")
	.dwattr DW$87, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$87, DW_AT_accessibility(DW_ACCESS_public)
DW$88	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$88, DW_AT_name("QUPRD"), DW_AT_symbol_name("_QUPRD")
	.dwattr DW$88, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$88, DW_AT_accessibility(DW_ACCESS_public)
DW$89	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$89, DW_AT_name("QWDTMR"), DW_AT_symbol_name("_QWDTMR")
	.dwattr DW$89, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$89, DW_AT_accessibility(DW_ACCESS_public)
DW$90	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$90, DW_AT_name("QWDPRD"), DW_AT_symbol_name("_QWDPRD")
	.dwattr DW$90, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$90, DW_AT_accessibility(DW_ACCESS_public)
DW$91	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$84)
	.dwattr DW$91, DW_AT_name("QDECCTL"), DW_AT_symbol_name("_QDECCTL")
	.dwattr DW$91, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$91, DW_AT_accessibility(DW_ACCESS_public)
DW$92	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$86)
	.dwattr DW$92, DW_AT_name("QEPCTL"), DW_AT_symbol_name("_QEPCTL")
	.dwattr DW$92, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$92, DW_AT_accessibility(DW_ACCESS_public)
DW$93	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$88)
	.dwattr DW$93, DW_AT_name("QCAPCTL"), DW_AT_symbol_name("_QCAPCTL")
	.dwattr DW$93, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$93, DW_AT_accessibility(DW_ACCESS_public)
DW$94	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$90)
	.dwattr DW$94, DW_AT_name("QPOSCTL"), DW_AT_symbol_name("_QPOSCTL")
	.dwattr DW$94, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$94, DW_AT_accessibility(DW_ACCESS_public)
DW$95	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$92)
	.dwattr DW$95, DW_AT_name("QEINT"), DW_AT_symbol_name("_QEINT")
	.dwattr DW$95, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$95, DW_AT_accessibility(DW_ACCESS_public)
DW$96	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$94)
	.dwattr DW$96, DW_AT_name("QFLG"), DW_AT_symbol_name("_QFLG")
	.dwattr DW$96, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr DW$96, DW_AT_accessibility(DW_ACCESS_public)
DW$97	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$94)
	.dwattr DW$97, DW_AT_name("QCLR"), DW_AT_symbol_name("_QCLR")
	.dwattr DW$97, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$97, DW_AT_accessibility(DW_ACCESS_public)
DW$98	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$96)
	.dwattr DW$98, DW_AT_name("QFRC"), DW_AT_symbol_name("_QFRC")
	.dwattr DW$98, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr DW$98, DW_AT_accessibility(DW_ACCESS_public)
DW$99	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$98)
	.dwattr DW$99, DW_AT_name("QEPSTS"), DW_AT_symbol_name("_QEPSTS")
	.dwattr DW$99, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$99, DW_AT_accessibility(DW_ACCESS_public)
DW$100	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$100, DW_AT_name("QCTMR"), DW_AT_symbol_name("_QCTMR")
	.dwattr DW$100, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$100, DW_AT_accessibility(DW_ACCESS_public)
DW$101	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$101, DW_AT_name("QCPRD"), DW_AT_symbol_name("_QCPRD")
	.dwattr DW$101, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$101, DW_AT_accessibility(DW_ACCESS_public)
DW$102	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$102, DW_AT_name("QCTMRLAT"), DW_AT_symbol_name("_QCTMRLAT")
	.dwattr DW$102, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr DW$102, DW_AT_accessibility(DW_ACCESS_public)
DW$103	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$103, DW_AT_name("QCPRDLAT"), DW_AT_symbol_name("_QCPRDLAT")
	.dwattr DW$103, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr DW$103, DW_AT_accessibility(DW_ACCESS_public)
DW$104	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$99)
	.dwattr DW$104, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$104, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr DW$104, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$100

DW$105	.dwtag  DW_TAG_far_type
	.dwattr DW$105, DW_AT_type(*DW$T$101)
DW$T$136	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$136, DW_AT_type(*DW$105)
DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)

DW$T$99	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$99, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$99, DW_AT_byte_size(0x1e)
DW$106	.dwtag  DW_TAG_subrange_type
	.dwattr DW$106, DW_AT_upper_bound(0x1d)
	.dwendtag DW$T$99

DW$107	.dwtag  DW_TAG_far_type
	.dwattr DW$107, DW_AT_type(*DW$T$12)
DW$T$114	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$114, DW_AT_type(*DW$107)
DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32"), DW_AT_type(*DW$T$13)
	.dwattr DW$T$21, DW_AT_language(DW_LANG_C)

DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$26, DW_AT_byte_size(0x34)
DW$108	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$108, DW_AT_name("u16_qep_sample"), DW_AT_symbol_name("_u16_qep_sample")
	.dwattr DW$108, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$108, DW_AT_accessibility(DW_ACCESS_public)
DW$109	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$109, DW_AT_name("u16_tick"), DW_AT_symbol_name("_u16_tick")
	.dwattr DW$109, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$109, DW_AT_accessibility(DW_ACCESS_public)
DW$110	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$110, DW_AT_name("dong"), DW_AT_symbol_name("_dong")
	.dwattr DW$110, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$110, DW_AT_accessibility(DW_ACCESS_public)
DW$111	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$111, DW_AT_name("i16_qep_val"), DW_AT_symbol_name("_i16_qep_val")
	.dwattr DW$111, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$111, DW_AT_accessibility(DW_ACCESS_public)
DW$112	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$112, DW_AT_name("stop_flag"), DW_AT_symbol_name("_stop_flag")
	.dwattr DW$112, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$112, DW_AT_accessibility(DW_ACCESS_public)
DW$113	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$113, DW_AT_name("i32_accel"), DW_AT_symbol_name("_i32_accel")
	.dwattr DW$113, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$113, DW_AT_accessibility(DW_ACCESS_public)
DW$114	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$114, DW_AT_name("q27_tick_distance"), DW_AT_symbol_name("_q27_tick_distance")
	.dwattr DW$114, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$114, DW_AT_accessibility(DW_ACCESS_public)
DW$115	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$115, DW_AT_name("q17_distance_sum"), DW_AT_symbol_name("_q17_distance_sum")
	.dwattr DW$115, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$115, DW_AT_accessibility(DW_ACCESS_public)
DW$116	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$116, DW_AT_name("q17_kp"), DW_AT_symbol_name("_q17_kp")
	.dwattr DW$116, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$116, DW_AT_accessibility(DW_ACCESS_public)
DW$117	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$117, DW_AT_name("q17_ki"), DW_AT_symbol_name("_q17_ki")
	.dwattr DW$117, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$117, DW_AT_accessibility(DW_ACCESS_public)
DW$118	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$118, DW_AT_name("q17_kd"), DW_AT_symbol_name("_q17_kd")
	.dwattr DW$118, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$118, DW_AT_accessibility(DW_ACCESS_public)
DW$119	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$119, DW_AT_name("q17_user_distance"), DW_AT_symbol_name("_q17_user_distance")
	.dwattr DW$119, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$119, DW_AT_accessibility(DW_ACCESS_public)
DW$120	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$120, DW_AT_name("q17_remaining_distance"), DW_AT_symbol_name("_q17_remaining_distance")
	.dwattr DW$120, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$120, DW_AT_accessibility(DW_ACCESS_public)
DW$121	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$121, DW_AT_name("q17_current_velocity"), DW_AT_symbol_name("_q17_current_velocity")
	.dwattr DW$121, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$121, DW_AT_accessibility(DW_ACCESS_public)
DW$122	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$122, DW_AT_name("q17_stop_distance"), DW_AT_symbol_name("_q17_stop_distance")
	.dwattr DW$122, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$122, DW_AT_accessibility(DW_ACCESS_public)
DW$123	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$123, DW_AT_name("q17_decel_velocity"), DW_AT_symbol_name("_q17_decel_velocity")
	.dwattr DW$123, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$123, DW_AT_accessibility(DW_ACCESS_public)
DW$124	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$124, DW_AT_name("q17_next_velocity"), DW_AT_symbol_name("_q17_next_velocity")
	.dwattr DW$124, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$124, DW_AT_accessibility(DW_ACCESS_public)
DW$125	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$125, DW_AT_name("q17_user_velocity"), DW_AT_symbol_name("_q17_user_velocity")
	.dwattr DW$125, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$125, DW_AT_accessibility(DW_ACCESS_public)
DW$126	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$126, DW_AT_name("q17_err_velocity"), DW_AT_symbol_name("_q17_err_velocity")
	.dwattr DW$126, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr DW$126, DW_AT_accessibility(DW_ACCESS_public)
DW$127	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$127, DW_AT_name("q17_err_velocity_sum"), DW_AT_symbol_name("_q17_err_velocity_sum")
	.dwattr DW$127, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$127, DW_AT_accessibility(DW_ACCESS_public)
DW$128	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$128, DW_AT_name("q17_proportional_term"), DW_AT_symbol_name("_q17_proportional_term")
	.dwattr DW$128, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$128, DW_AT_accessibility(DW_ACCESS_public)
DW$129	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$129, DW_AT_name("q17_derivative_term"), DW_AT_symbol_name("_q17_derivative_term")
	.dwattr DW$129, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$129, DW_AT_accessibility(DW_ACCESS_public)
DW$130	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$130, DW_AT_name("q17_integral_term"), DW_AT_symbol_name("_q17_integral_term")
	.dwattr DW$130, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr DW$130, DW_AT_accessibility(DW_ACCESS_public)
DW$131	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$131, DW_AT_name("q17_pid_out_term"), DW_AT_symbol_name("_q17_pid_out_term")
	.dwattr DW$131, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr DW$131, DW_AT_accessibility(DW_ACCESS_public)
DW$132	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$132, DW_AT_name("q26_pos_adjrate"), DW_AT_symbol_name("_q26_pos_adjrate")
	.dwattr DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr DW$132, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$26


DW$T$28	.dwtag  DW_TAG_union_type
	.dwattr DW$T$28, DW_AT_name("TIM_GROUP")
	.dwattr DW$T$28, DW_AT_byte_size(0x02)
DW$133	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$133, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$133, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$133, DW_AT_accessibility(DW_ACCESS_public)
DW$134	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$134, DW_AT_name("half"), DW_AT_symbol_name("_half")
	.dwattr DW$134, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$134, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$28


DW$T$30	.dwtag  DW_TAG_union_type
	.dwattr DW$T$30, DW_AT_name("PRD_GROUP")
	.dwattr DW$T$30, DW_AT_byte_size(0x02)
DW$135	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$135, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$135, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$135, DW_AT_accessibility(DW_ACCESS_public)
DW$136	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$136, DW_AT_name("half"), DW_AT_symbol_name("_half")
	.dwattr DW$136, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$136, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$30


DW$T$32	.dwtag  DW_TAG_union_type
	.dwattr DW$T$32, DW_AT_name("TCR_REG")
	.dwattr DW$T$32, DW_AT_byte_size(0x01)
DW$137	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$137, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$137, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$137, DW_AT_accessibility(DW_ACCESS_public)
DW$138	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$138, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$138, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$138, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$32


DW$T$34	.dwtag  DW_TAG_union_type
	.dwattr DW$T$34, DW_AT_name("TPR_REG")
	.dwattr DW$T$34, DW_AT_byte_size(0x01)
DW$139	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$139, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$139, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$139, DW_AT_accessibility(DW_ACCESS_public)
DW$140	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$33)
	.dwattr DW$140, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$140, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$140, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$34


DW$T$36	.dwtag  DW_TAG_union_type
	.dwattr DW$T$36, DW_AT_name("TPRH_REG")
	.dwattr DW$T$36, DW_AT_byte_size(0x01)
DW$141	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$141, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$141, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$141, DW_AT_accessibility(DW_ACCESS_public)
DW$142	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$35)
	.dwattr DW$142, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$142, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$142, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$36


DW$T$39	.dwtag  DW_TAG_union_type
	.dwattr DW$T$39, DW_AT_name("TBCTL_REG")
	.dwattr DW$T$39, DW_AT_byte_size(0x01)
DW$143	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$143, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$143, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$143, DW_AT_accessibility(DW_ACCESS_public)
DW$144	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$38)
	.dwattr DW$144, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$144, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$144, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$39


DW$T$41	.dwtag  DW_TAG_union_type
	.dwattr DW$T$41, DW_AT_name("TBSTS_REG")
	.dwattr DW$T$41, DW_AT_byte_size(0x01)
DW$145	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$145, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$145, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$145, DW_AT_accessibility(DW_ACCESS_public)
DW$146	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$40)
	.dwattr DW$146, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$146, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$146, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$41


DW$T$43	.dwtag  DW_TAG_union_type
	.dwattr DW$T$43, DW_AT_name("TBPHS_HRPWM_GROUP")
	.dwattr DW$T$43, DW_AT_byte_size(0x02)
DW$147	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$147, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$147, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$147, DW_AT_accessibility(DW_ACCESS_public)
DW$148	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$42)
	.dwattr DW$148, DW_AT_name("half"), DW_AT_symbol_name("_half")
	.dwattr DW$148, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$148, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$43


DW$T$45	.dwtag  DW_TAG_union_type
	.dwattr DW$T$45, DW_AT_name("CMPCTL_REG")
	.dwattr DW$T$45, DW_AT_byte_size(0x01)
DW$149	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$149, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$149, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$149, DW_AT_accessibility(DW_ACCESS_public)
DW$150	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$44)
	.dwattr DW$150, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$150, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$150, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$45


DW$T$47	.dwtag  DW_TAG_union_type
	.dwattr DW$T$47, DW_AT_name("CMPA_HRPWM_GROUP")
	.dwattr DW$T$47, DW_AT_byte_size(0x02)
DW$151	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$151, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$151, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$151, DW_AT_accessibility(DW_ACCESS_public)
DW$152	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$152, DW_AT_name("half"), DW_AT_symbol_name("_half")
	.dwattr DW$152, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$152, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$47


DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$48, DW_AT_name("AQCTL_BITS")
	.dwattr DW$T$48, DW_AT_byte_size(0x01)
DW$153	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$153, DW_AT_name("ZRO"), DW_AT_symbol_name("_ZRO")
	.dwattr DW$153, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x02)
	.dwattr DW$153, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$153, DW_AT_accessibility(DW_ACCESS_public)
DW$154	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$154, DW_AT_name("PRD"), DW_AT_symbol_name("_PRD")
	.dwattr DW$154, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x02)
	.dwattr DW$154, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$154, DW_AT_accessibility(DW_ACCESS_public)
DW$155	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$155, DW_AT_name("CAU"), DW_AT_symbol_name("_CAU")
	.dwattr DW$155, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x02)
	.dwattr DW$155, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$155, DW_AT_accessibility(DW_ACCESS_public)
DW$156	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$156, DW_AT_name("CAD"), DW_AT_symbol_name("_CAD")
	.dwattr DW$156, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x02)
	.dwattr DW$156, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$156, DW_AT_accessibility(DW_ACCESS_public)
DW$157	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$157, DW_AT_name("CBU"), DW_AT_symbol_name("_CBU")
	.dwattr DW$157, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x02)
	.dwattr DW$157, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$157, DW_AT_accessibility(DW_ACCESS_public)
DW$158	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$158, DW_AT_name("CBD"), DW_AT_symbol_name("_CBD")
	.dwattr DW$158, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x02)
	.dwattr DW$158, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$158, DW_AT_accessibility(DW_ACCESS_public)
DW$159	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$159, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$159, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$159, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$159, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$48


DW$T$49	.dwtag  DW_TAG_union_type
	.dwattr DW$T$49, DW_AT_name("AQCTL_REG")
	.dwattr DW$T$49, DW_AT_byte_size(0x01)
DW$160	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$160, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$160, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$160, DW_AT_accessibility(DW_ACCESS_public)
DW$161	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$161, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$161, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$161, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$49


DW$T$51	.dwtag  DW_TAG_union_type
	.dwattr DW$T$51, DW_AT_name("AQSFRC_REG")
	.dwattr DW$T$51, DW_AT_byte_size(0x01)
DW$162	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$162, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$162, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$162, DW_AT_accessibility(DW_ACCESS_public)
DW$163	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$50)
	.dwattr DW$163, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$163, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$163, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$51


DW$T$53	.dwtag  DW_TAG_union_type
	.dwattr DW$T$53, DW_AT_name("AQCSFRC_REG")
	.dwattr DW$T$53, DW_AT_byte_size(0x01)
DW$164	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$164, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$164, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$164, DW_AT_accessibility(DW_ACCESS_public)
DW$165	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$52)
	.dwattr DW$165, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$165, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$165, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$53


DW$T$55	.dwtag  DW_TAG_union_type
	.dwattr DW$T$55, DW_AT_name("DBCTL_REG")
	.dwattr DW$T$55, DW_AT_byte_size(0x01)
DW$166	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$166, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$166, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$166, DW_AT_accessibility(DW_ACCESS_public)
DW$167	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$54)
	.dwattr DW$167, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$167, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$167, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$55


DW$T$57	.dwtag  DW_TAG_union_type
	.dwattr DW$T$57, DW_AT_name("TZSEL_REG")
	.dwattr DW$T$57, DW_AT_byte_size(0x01)
DW$168	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$168, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$168, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$168, DW_AT_accessibility(DW_ACCESS_public)
DW$169	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$56)
	.dwattr DW$169, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$169, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$57


DW$T$59	.dwtag  DW_TAG_union_type
	.dwattr DW$T$59, DW_AT_name("TZCTL_REG")
	.dwattr DW$T$59, DW_AT_byte_size(0x01)
DW$170	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$170, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$170, DW_AT_accessibility(DW_ACCESS_public)
DW$171	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$58)
	.dwattr DW$171, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$171, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$59


DW$T$61	.dwtag  DW_TAG_union_type
	.dwattr DW$T$61, DW_AT_name("TZEINT_REG")
	.dwattr DW$T$61, DW_AT_byte_size(0x01)
DW$172	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$172, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$172, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$172, DW_AT_accessibility(DW_ACCESS_public)
DW$173	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$60)
	.dwattr DW$173, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$173, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$61


DW$T$63	.dwtag  DW_TAG_union_type
	.dwattr DW$T$63, DW_AT_name("TZFLG_REG")
	.dwattr DW$T$63, DW_AT_byte_size(0x01)
DW$174	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$174, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$174, DW_AT_accessibility(DW_ACCESS_public)
DW$175	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$62)
	.dwattr DW$175, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$175, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$63


DW$T$65	.dwtag  DW_TAG_union_type
	.dwattr DW$T$65, DW_AT_name("TZCLR_REG")
	.dwattr DW$T$65, DW_AT_byte_size(0x01)
DW$176	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$176, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$176, DW_AT_accessibility(DW_ACCESS_public)
DW$177	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$64)
	.dwattr DW$177, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$177, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$65


DW$T$67	.dwtag  DW_TAG_union_type
	.dwattr DW$T$67, DW_AT_name("TZFRC_REG")
	.dwattr DW$T$67, DW_AT_byte_size(0x01)
DW$178	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$178, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$178, DW_AT_accessibility(DW_ACCESS_public)
DW$179	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$66)
	.dwattr DW$179, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$179, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$67


DW$T$69	.dwtag  DW_TAG_union_type
	.dwattr DW$T$69, DW_AT_name("ETSEL_REG")
	.dwattr DW$T$69, DW_AT_byte_size(0x01)
DW$180	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$180, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$180, DW_AT_accessibility(DW_ACCESS_public)
DW$181	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$68)
	.dwattr DW$181, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$181, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$69


DW$T$71	.dwtag  DW_TAG_union_type
	.dwattr DW$T$71, DW_AT_name("ETPS_REG")
	.dwattr DW$T$71, DW_AT_byte_size(0x01)
DW$182	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$182, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$182, DW_AT_accessibility(DW_ACCESS_public)
DW$183	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$70)
	.dwattr DW$183, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$183, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$71


DW$T$73	.dwtag  DW_TAG_union_type
	.dwattr DW$T$73, DW_AT_name("ETFLG_REG")
	.dwattr DW$T$73, DW_AT_byte_size(0x01)
DW$184	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$184, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$184, DW_AT_accessibility(DW_ACCESS_public)
DW$185	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$72)
	.dwattr DW$185, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$185, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$73


DW$T$75	.dwtag  DW_TAG_union_type
	.dwattr DW$T$75, DW_AT_name("ETCLR_REG")
	.dwattr DW$T$75, DW_AT_byte_size(0x01)
DW$186	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$186, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$186, DW_AT_accessibility(DW_ACCESS_public)
DW$187	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$74)
	.dwattr DW$187, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$187, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$75


DW$T$77	.dwtag  DW_TAG_union_type
	.dwattr DW$T$77, DW_AT_name("ETFRC_REG")
	.dwattr DW$T$77, DW_AT_byte_size(0x01)
DW$188	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$188, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$188, DW_AT_accessibility(DW_ACCESS_public)
DW$189	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$76)
	.dwattr DW$189, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$189, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$77


DW$T$79	.dwtag  DW_TAG_union_type
	.dwattr DW$T$79, DW_AT_name("PCCTL_REG")
	.dwattr DW$T$79, DW_AT_byte_size(0x01)
DW$190	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$190, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$190, DW_AT_accessibility(DW_ACCESS_public)
DW$191	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$78)
	.dwattr DW$191, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$191, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$79


DW$T$81	.dwtag  DW_TAG_union_type
	.dwattr DW$T$81, DW_AT_name("HRCNFG_REG")
	.dwattr DW$T$81, DW_AT_byte_size(0x01)
DW$192	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$192, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$192, DW_AT_accessibility(DW_ACCESS_public)
DW$193	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$80)
	.dwattr DW$193, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$193, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$193, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$81


DW$T$84	.dwtag  DW_TAG_union_type
	.dwattr DW$T$84, DW_AT_name("QDECCTL_REG")
	.dwattr DW$T$84, DW_AT_byte_size(0x01)
DW$194	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$194, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$194, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$194, DW_AT_accessibility(DW_ACCESS_public)
DW$195	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$83)
	.dwattr DW$195, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$195, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$195, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$84


DW$T$86	.dwtag  DW_TAG_union_type
	.dwattr DW$T$86, DW_AT_name("QEPCTL_REG")
	.dwattr DW$T$86, DW_AT_byte_size(0x01)
DW$196	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$196, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$196, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$196, DW_AT_accessibility(DW_ACCESS_public)
DW$197	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$85)
	.dwattr DW$197, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$197, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$197, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$86


DW$T$88	.dwtag  DW_TAG_union_type
	.dwattr DW$T$88, DW_AT_name("QCAPCTL_REG")
	.dwattr DW$T$88, DW_AT_byte_size(0x01)
DW$198	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$198, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$198, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$198, DW_AT_accessibility(DW_ACCESS_public)
DW$199	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$87)
	.dwattr DW$199, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$199, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$199, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$88


DW$T$90	.dwtag  DW_TAG_union_type
	.dwattr DW$T$90, DW_AT_name("QPOSCTL_REG")
	.dwattr DW$T$90, DW_AT_byte_size(0x01)
DW$200	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$200, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$200, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$200, DW_AT_accessibility(DW_ACCESS_public)
DW$201	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$89)
	.dwattr DW$201, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$201, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$201, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$90


DW$T$92	.dwtag  DW_TAG_union_type
	.dwattr DW$T$92, DW_AT_name("QEINT_REG")
	.dwattr DW$T$92, DW_AT_byte_size(0x01)
DW$202	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$202, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$202, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$202, DW_AT_accessibility(DW_ACCESS_public)
DW$203	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$91)
	.dwattr DW$203, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$203, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$203, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$92


DW$T$94	.dwtag  DW_TAG_union_type
	.dwattr DW$T$94, DW_AT_name("QFLG_REG")
	.dwattr DW$T$94, DW_AT_byte_size(0x01)
DW$204	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$204, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$204, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$204, DW_AT_accessibility(DW_ACCESS_public)
DW$205	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$93)
	.dwattr DW$205, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$205, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$205, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$94


DW$T$96	.dwtag  DW_TAG_union_type
	.dwattr DW$T$96, DW_AT_name("QFRC_REG")
	.dwattr DW$T$96, DW_AT_byte_size(0x01)
DW$206	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$206, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$206, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$206, DW_AT_accessibility(DW_ACCESS_public)
DW$207	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$95)
	.dwattr DW$207, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$207, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$207, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$96


DW$T$98	.dwtag  DW_TAG_union_type
	.dwattr DW$T$98, DW_AT_name("QEPSTS_REG")
	.dwattr DW$T$98, DW_AT_byte_size(0x01)
DW$208	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$208, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$208, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$208, DW_AT_accessibility(DW_ACCESS_public)
DW$209	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$97)
	.dwattr DW$209, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$209, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$209, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$98


DW$T$101	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$101, DW_AT_byte_size(0x01)
DW$210	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$210, DW_AT_name("u16_motor_pwm_flag"), DW_AT_symbol_name("_u16_motor_pwm_flag")
	.dwattr DW$210, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$210, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$210, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$101

DW$T$20	.dwtag  DW_TAG_typedef, DW_AT_name("int16"), DW_AT_type(*DW$T$10)
	.dwattr DW$T$20, DW_AT_language(DW_LANG_C)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x01)
DW$T$22	.dwtag  DW_TAG_typedef, DW_AT_name("_iq27"), DW_AT_type(*DW$T$12)
	.dwattr DW$T$22, DW_AT_language(DW_LANG_C)
DW$T$23	.dwtag  DW_TAG_typedef, DW_AT_name("_iq17"), DW_AT_type(*DW$T$12)
	.dwattr DW$T$23, DW_AT_language(DW_LANG_C)

DW$T$24	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$23)
	.dwattr DW$T$24, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$24, DW_AT_byte_size(0x08)
DW$211	.dwtag  DW_TAG_subrange_type
	.dwattr DW$211, DW_AT_upper_bound(0x03)
	.dwendtag DW$T$24

DW$T$25	.dwtag  DW_TAG_typedef, DW_AT_name("_iq26"), DW_AT_type(*DW$T$12)
	.dwattr DW$T$25, DW_AT_language(DW_LANG_C)

DW$T$27	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$27, DW_AT_name("TIM_REG")
	.dwattr DW$T$27, DW_AT_byte_size(0x02)
DW$212	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$212, DW_AT_name("LSW"), DW_AT_symbol_name("_LSW")
	.dwattr DW$212, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$212, DW_AT_accessibility(DW_ACCESS_public)
DW$213	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$213, DW_AT_name("MSW"), DW_AT_symbol_name("_MSW")
	.dwattr DW$213, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$213, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$27


DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$29, DW_AT_name("PRD_REG")
	.dwattr DW$T$29, DW_AT_byte_size(0x02)
DW$214	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$214, DW_AT_name("LSW"), DW_AT_symbol_name("_LSW")
	.dwattr DW$214, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$214, DW_AT_accessibility(DW_ACCESS_public)
DW$215	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$215, DW_AT_name("MSW"), DW_AT_symbol_name("_MSW")
	.dwattr DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$215, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$29


DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$31, DW_AT_name("TCR_BITS")
	.dwattr DW$T$31, DW_AT_byte_size(0x01)
DW$216	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$216, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$216, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$216, DW_AT_accessibility(DW_ACCESS_public)
DW$217	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$217, DW_AT_name("TSS"), DW_AT_symbol_name("_TSS")
	.dwattr DW$217, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$217, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$217, DW_AT_accessibility(DW_ACCESS_public)
DW$218	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$218, DW_AT_name("TRB"), DW_AT_symbol_name("_TRB")
	.dwattr DW$218, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$218, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$218, DW_AT_accessibility(DW_ACCESS_public)
DW$219	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$219, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$219, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x04)
	.dwattr DW$219, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$219, DW_AT_accessibility(DW_ACCESS_public)
DW$220	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$220, DW_AT_name("SOFT"), DW_AT_symbol_name("_SOFT")
	.dwattr DW$220, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$220, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$220, DW_AT_accessibility(DW_ACCESS_public)
DW$221	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$221, DW_AT_name("FREE"), DW_AT_symbol_name("_FREE")
	.dwattr DW$221, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$221, DW_AT_accessibility(DW_ACCESS_public)
DW$222	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$222, DW_AT_name("rsvd3"), DW_AT_symbol_name("_rsvd3")
	.dwattr DW$222, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x02)
	.dwattr DW$222, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$222, DW_AT_accessibility(DW_ACCESS_public)
DW$223	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$223, DW_AT_name("TIE"), DW_AT_symbol_name("_TIE")
	.dwattr DW$223, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$223, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$223, DW_AT_accessibility(DW_ACCESS_public)
DW$224	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$224, DW_AT_name("TIF"), DW_AT_symbol_name("_TIF")
	.dwattr DW$224, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$224, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$224, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$31


DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$33, DW_AT_name("TPR_BITS")
	.dwattr DW$T$33, DW_AT_byte_size(0x01)
DW$225	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$225, DW_AT_name("TDDR"), DW_AT_symbol_name("_TDDR")
	.dwattr DW$225, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x08)
	.dwattr DW$225, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$225, DW_AT_accessibility(DW_ACCESS_public)
DW$226	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$226, DW_AT_name("PSC"), DW_AT_symbol_name("_PSC")
	.dwattr DW$226, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$226, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$226, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$33


DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$35, DW_AT_name("TPRH_BITS")
	.dwattr DW$T$35, DW_AT_byte_size(0x01)
DW$227	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$227, DW_AT_name("TDDRH"), DW_AT_symbol_name("_TDDRH")
	.dwattr DW$227, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x08)
	.dwattr DW$227, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$227, DW_AT_accessibility(DW_ACCESS_public)
DW$228	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$228, DW_AT_name("PSCH"), DW_AT_symbol_name("_PSCH")
	.dwattr DW$228, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$228, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$228, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$35


DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$38, DW_AT_name("TBCTL_BITS")
	.dwattr DW$T$38, DW_AT_byte_size(0x01)
DW$229	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$229, DW_AT_name("CTRMODE"), DW_AT_symbol_name("_CTRMODE")
	.dwattr DW$229, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x02)
	.dwattr DW$229, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$229, DW_AT_accessibility(DW_ACCESS_public)
DW$230	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$230, DW_AT_name("PHSEN"), DW_AT_symbol_name("_PHSEN")
	.dwattr DW$230, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$230, DW_AT_accessibility(DW_ACCESS_public)
DW$231	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$231, DW_AT_name("PRDLD"), DW_AT_symbol_name("_PRDLD")
	.dwattr DW$231, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$231, DW_AT_accessibility(DW_ACCESS_public)
DW$232	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$232, DW_AT_name("SYNCOSEL"), DW_AT_symbol_name("_SYNCOSEL")
	.dwattr DW$232, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x02)
	.dwattr DW$232, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$232, DW_AT_accessibility(DW_ACCESS_public)
DW$233	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$233, DW_AT_name("SWFSYNC"), DW_AT_symbol_name("_SWFSYNC")
	.dwattr DW$233, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$233, DW_AT_accessibility(DW_ACCESS_public)
DW$234	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$234, DW_AT_name("HSPCLKDIV"), DW_AT_symbol_name("_HSPCLKDIV")
	.dwattr DW$234, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x03)
	.dwattr DW$234, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$234, DW_AT_accessibility(DW_ACCESS_public)
DW$235	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$235, DW_AT_name("CLKDIV"), DW_AT_symbol_name("_CLKDIV")
	.dwattr DW$235, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x03)
	.dwattr DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$235, DW_AT_accessibility(DW_ACCESS_public)
DW$236	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$236, DW_AT_name("PHSDIR"), DW_AT_symbol_name("_PHSDIR")
	.dwattr DW$236, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$236, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$236, DW_AT_accessibility(DW_ACCESS_public)
DW$237	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$237, DW_AT_name("FREE_SOFT"), DW_AT_symbol_name("_FREE_SOFT")
	.dwattr DW$237, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x02)
	.dwattr DW$237, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$237, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$38


DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$40, DW_AT_name("TBSTS_BITS")
	.dwattr DW$T$40, DW_AT_byte_size(0x01)
DW$238	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$238, DW_AT_name("CTRDIR"), DW_AT_symbol_name("_CTRDIR")
	.dwattr DW$238, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$238, DW_AT_accessibility(DW_ACCESS_public)
DW$239	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$239, DW_AT_name("SYNCI"), DW_AT_symbol_name("_SYNCI")
	.dwattr DW$239, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$239, DW_AT_accessibility(DW_ACCESS_public)
DW$240	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$240, DW_AT_name("CTRMAX"), DW_AT_symbol_name("_CTRMAX")
	.dwattr DW$240, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$240, DW_AT_accessibility(DW_ACCESS_public)
DW$241	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$241, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$241, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0d)
	.dwattr DW$241, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$241, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$40


DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$42, DW_AT_name("TBPHS_HRPWM_REG")
	.dwattr DW$T$42, DW_AT_byte_size(0x02)
DW$242	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$242, DW_AT_name("TBPHSHR"), DW_AT_symbol_name("_TBPHSHR")
	.dwattr DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$242, DW_AT_accessibility(DW_ACCESS_public)
DW$243	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$243, DW_AT_name("TBPHS"), DW_AT_symbol_name("_TBPHS")
	.dwattr DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$243, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$42


DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$44, DW_AT_name("CMPCTL_BITS")
	.dwattr DW$T$44, DW_AT_byte_size(0x01)
DW$244	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$244, DW_AT_name("LOADAMODE"), DW_AT_symbol_name("_LOADAMODE")
	.dwattr DW$244, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x02)
	.dwattr DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$244, DW_AT_accessibility(DW_ACCESS_public)
DW$245	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$245, DW_AT_name("LOADBMODE"), DW_AT_symbol_name("_LOADBMODE")
	.dwattr DW$245, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x02)
	.dwattr DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$245, DW_AT_accessibility(DW_ACCESS_public)
DW$246	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$246, DW_AT_name("SHDWAMODE"), DW_AT_symbol_name("_SHDWAMODE")
	.dwattr DW$246, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$246, DW_AT_accessibility(DW_ACCESS_public)
DW$247	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$247, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$247, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$247, DW_AT_accessibility(DW_ACCESS_public)
DW$248	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$248, DW_AT_name("SHDWBMODE"), DW_AT_symbol_name("_SHDWBMODE")
	.dwattr DW$248, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$248, DW_AT_accessibility(DW_ACCESS_public)
DW$249	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$249, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$249, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$249, DW_AT_accessibility(DW_ACCESS_public)
DW$250	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$250, DW_AT_name("SHDWAFULL"), DW_AT_symbol_name("_SHDWAFULL")
	.dwattr DW$250, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$250, DW_AT_accessibility(DW_ACCESS_public)
DW$251	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$251, DW_AT_name("SHDWBFULL"), DW_AT_symbol_name("_SHDWBFULL")
	.dwattr DW$251, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$251, DW_AT_accessibility(DW_ACCESS_public)
DW$252	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$252, DW_AT_name("rsvd3"), DW_AT_symbol_name("_rsvd3")
	.dwattr DW$252, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x06)
	.dwattr DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$252, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$44


DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$46, DW_AT_name("CMPA_HRPWM_REG")
	.dwattr DW$T$46, DW_AT_byte_size(0x02)
DW$253	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$253, DW_AT_name("CMPAHR"), DW_AT_symbol_name("_CMPAHR")
	.dwattr DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$253, DW_AT_accessibility(DW_ACCESS_public)
DW$254	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$254, DW_AT_name("CMPA"), DW_AT_symbol_name("_CMPA")
	.dwattr DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$254, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$46


DW$T$50	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$50, DW_AT_name("AQSFRC_BITS")
	.dwattr DW$T$50, DW_AT_byte_size(0x01)
DW$255	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$255, DW_AT_name("ACTSFA"), DW_AT_symbol_name("_ACTSFA")
	.dwattr DW$255, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x02)
	.dwattr DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$255, DW_AT_accessibility(DW_ACCESS_public)
DW$256	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$256, DW_AT_name("OTSFA"), DW_AT_symbol_name("_OTSFA")
	.dwattr DW$256, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$256, DW_AT_accessibility(DW_ACCESS_public)
DW$257	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$257, DW_AT_name("ACTSFB"), DW_AT_symbol_name("_ACTSFB")
	.dwattr DW$257, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x02)
	.dwattr DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$257, DW_AT_accessibility(DW_ACCESS_public)
DW$258	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$258, DW_AT_name("OTSFB"), DW_AT_symbol_name("_OTSFB")
	.dwattr DW$258, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$258, DW_AT_accessibility(DW_ACCESS_public)
DW$259	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$259, DW_AT_name("RLDCSF"), DW_AT_symbol_name("_RLDCSF")
	.dwattr DW$259, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x02)
	.dwattr DW$259, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$259, DW_AT_accessibility(DW_ACCESS_public)
DW$260	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$260, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$260, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$260, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$260, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$50


DW$T$52	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$52, DW_AT_name("AQCSFRC_BITS")
	.dwattr DW$T$52, DW_AT_byte_size(0x01)
DW$261	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$261, DW_AT_name("CSFA"), DW_AT_symbol_name("_CSFA")
	.dwattr DW$261, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x02)
	.dwattr DW$261, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$261, DW_AT_accessibility(DW_ACCESS_public)
DW$262	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$262, DW_AT_name("CSFB"), DW_AT_symbol_name("_CSFB")
	.dwattr DW$262, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x02)
	.dwattr DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$262, DW_AT_accessibility(DW_ACCESS_public)
DW$263	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$263, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$263, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0c)
	.dwattr DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$263, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$52


DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$54, DW_AT_name("DBCTL_BITS")
	.dwattr DW$T$54, DW_AT_byte_size(0x01)
DW$264	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$264, DW_AT_name("OUT_MODE"), DW_AT_symbol_name("_OUT_MODE")
	.dwattr DW$264, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x02)
	.dwattr DW$264, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$264, DW_AT_accessibility(DW_ACCESS_public)
DW$265	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$265, DW_AT_name("POLSEL"), DW_AT_symbol_name("_POLSEL")
	.dwattr DW$265, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x02)
	.dwattr DW$265, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$265, DW_AT_accessibility(DW_ACCESS_public)
DW$266	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$266, DW_AT_name("IN_MODE"), DW_AT_symbol_name("_IN_MODE")
	.dwattr DW$266, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x02)
	.dwattr DW$266, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$266, DW_AT_accessibility(DW_ACCESS_public)
DW$267	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$267, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$267, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0a)
	.dwattr DW$267, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$267, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$54


DW$T$56	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$56, DW_AT_name("TZSEL_BITS")
	.dwattr DW$T$56, DW_AT_byte_size(0x01)
DW$268	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$268, DW_AT_name("CBC1"), DW_AT_symbol_name("_CBC1")
	.dwattr DW$268, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$268, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$268, DW_AT_accessibility(DW_ACCESS_public)
DW$269	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$269, DW_AT_name("CBC2"), DW_AT_symbol_name("_CBC2")
	.dwattr DW$269, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$269, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$269, DW_AT_accessibility(DW_ACCESS_public)
DW$270	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$270, DW_AT_name("CBC3"), DW_AT_symbol_name("_CBC3")
	.dwattr DW$270, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$270, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$270, DW_AT_accessibility(DW_ACCESS_public)
DW$271	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$271, DW_AT_name("CBC4"), DW_AT_symbol_name("_CBC4")
	.dwattr DW$271, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$271, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$271, DW_AT_accessibility(DW_ACCESS_public)
DW$272	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$272, DW_AT_name("CBC5"), DW_AT_symbol_name("_CBC5")
	.dwattr DW$272, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$272, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$272, DW_AT_accessibility(DW_ACCESS_public)
DW$273	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$273, DW_AT_name("CBC6"), DW_AT_symbol_name("_CBC6")
	.dwattr DW$273, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$273, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$273, DW_AT_accessibility(DW_ACCESS_public)
DW$274	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$274, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$274, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x02)
	.dwattr DW$274, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$274, DW_AT_accessibility(DW_ACCESS_public)
DW$275	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$275, DW_AT_name("OSHT1"), DW_AT_symbol_name("_OSHT1")
	.dwattr DW$275, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$275, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$275, DW_AT_accessibility(DW_ACCESS_public)
DW$276	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$276, DW_AT_name("OSHT2"), DW_AT_symbol_name("_OSHT2")
	.dwattr DW$276, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$276, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$276, DW_AT_accessibility(DW_ACCESS_public)
DW$277	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$277, DW_AT_name("OSHT3"), DW_AT_symbol_name("_OSHT3")
	.dwattr DW$277, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$277, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$277, DW_AT_accessibility(DW_ACCESS_public)
DW$278	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$278, DW_AT_name("OSHT4"), DW_AT_symbol_name("_OSHT4")
	.dwattr DW$278, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$278, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$278, DW_AT_accessibility(DW_ACCESS_public)
DW$279	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$279, DW_AT_name("OSHT5"), DW_AT_symbol_name("_OSHT5")
	.dwattr DW$279, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$279, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$279, DW_AT_accessibility(DW_ACCESS_public)
DW$280	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$280, DW_AT_name("OSHT6"), DW_AT_symbol_name("_OSHT6")
	.dwattr DW$280, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$280, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$280, DW_AT_accessibility(DW_ACCESS_public)
DW$281	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$281, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$281, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x02)
	.dwattr DW$281, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$281, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$56


DW$T$58	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$58, DW_AT_name("TZCTL_BITS")
	.dwattr DW$T$58, DW_AT_byte_size(0x01)
DW$282	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$282, DW_AT_name("TZA"), DW_AT_symbol_name("_TZA")
	.dwattr DW$282, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x02)
	.dwattr DW$282, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$282, DW_AT_accessibility(DW_ACCESS_public)
DW$283	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$283, DW_AT_name("TZB"), DW_AT_symbol_name("_TZB")
	.dwattr DW$283, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x02)
	.dwattr DW$283, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$283, DW_AT_accessibility(DW_ACCESS_public)
DW$284	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$284, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$284, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0c)
	.dwattr DW$284, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$284, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$58


DW$T$60	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$60, DW_AT_name("TZEINT_BITS")
	.dwattr DW$T$60, DW_AT_byte_size(0x01)
DW$285	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$285, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$285, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$285, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$285, DW_AT_accessibility(DW_ACCESS_public)
DW$286	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$286, DW_AT_name("CBC"), DW_AT_symbol_name("_CBC")
	.dwattr DW$286, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$286, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$286, DW_AT_accessibility(DW_ACCESS_public)
DW$287	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$287, DW_AT_name("OST"), DW_AT_symbol_name("_OST")
	.dwattr DW$287, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$287, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$287, DW_AT_accessibility(DW_ACCESS_public)
DW$288	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$288, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$288, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0d)
	.dwattr DW$288, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$288, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$60


DW$T$62	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$62, DW_AT_name("TZFLG_BITS")
	.dwattr DW$T$62, DW_AT_byte_size(0x01)
DW$289	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$289, DW_AT_name("INT"), DW_AT_symbol_name("_INT")
	.dwattr DW$289, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$289, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$289, DW_AT_accessibility(DW_ACCESS_public)
DW$290	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$290, DW_AT_name("CBC"), DW_AT_symbol_name("_CBC")
	.dwattr DW$290, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$290, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$290, DW_AT_accessibility(DW_ACCESS_public)
DW$291	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$291, DW_AT_name("OST"), DW_AT_symbol_name("_OST")
	.dwattr DW$291, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$291, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$291, DW_AT_accessibility(DW_ACCESS_public)
DW$292	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$292, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$292, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0d)
	.dwattr DW$292, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$292, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$62


DW$T$64	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$64, DW_AT_name("TZCLR_BITS")
	.dwattr DW$T$64, DW_AT_byte_size(0x01)
DW$293	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$293, DW_AT_name("INT"), DW_AT_symbol_name("_INT")
	.dwattr DW$293, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$293, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$293, DW_AT_accessibility(DW_ACCESS_public)
DW$294	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$294, DW_AT_name("CBC"), DW_AT_symbol_name("_CBC")
	.dwattr DW$294, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$294, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$294, DW_AT_accessibility(DW_ACCESS_public)
DW$295	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$295, DW_AT_name("OST"), DW_AT_symbol_name("_OST")
	.dwattr DW$295, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$295, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$295, DW_AT_accessibility(DW_ACCESS_public)
DW$296	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$296, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$296, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0d)
	.dwattr DW$296, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$296, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$64


DW$T$66	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$66, DW_AT_name("TZFRC_BITS")
	.dwattr DW$T$66, DW_AT_byte_size(0x01)
DW$297	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$297, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$297, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$297, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$297, DW_AT_accessibility(DW_ACCESS_public)
DW$298	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$298, DW_AT_name("CBC"), DW_AT_symbol_name("_CBC")
	.dwattr DW$298, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$298, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$298, DW_AT_accessibility(DW_ACCESS_public)
DW$299	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$299, DW_AT_name("OST"), DW_AT_symbol_name("_OST")
	.dwattr DW$299, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$299, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$299, DW_AT_accessibility(DW_ACCESS_public)
DW$300	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$300, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$300, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0d)
	.dwattr DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$300, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$66


DW$T$68	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$68, DW_AT_name("ETSEL_BITS")
	.dwattr DW$T$68, DW_AT_byte_size(0x01)
DW$301	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$301, DW_AT_name("INTSEL"), DW_AT_symbol_name("_INTSEL")
	.dwattr DW$301, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x03)
	.dwattr DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$301, DW_AT_accessibility(DW_ACCESS_public)
DW$302	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$302, DW_AT_name("INTEN"), DW_AT_symbol_name("_INTEN")
	.dwattr DW$302, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$302, DW_AT_accessibility(DW_ACCESS_public)
DW$303	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$303, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$303, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x04)
	.dwattr DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$303, DW_AT_accessibility(DW_ACCESS_public)
DW$304	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$304, DW_AT_name("SOCASEL"), DW_AT_symbol_name("_SOCASEL")
	.dwattr DW$304, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x03)
	.dwattr DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$304, DW_AT_accessibility(DW_ACCESS_public)
DW$305	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$305, DW_AT_name("SOCAEN"), DW_AT_symbol_name("_SOCAEN")
	.dwattr DW$305, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$305, DW_AT_accessibility(DW_ACCESS_public)
DW$306	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$306, DW_AT_name("SOCBSEL"), DW_AT_symbol_name("_SOCBSEL")
	.dwattr DW$306, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x03)
	.dwattr DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$306, DW_AT_accessibility(DW_ACCESS_public)
DW$307	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$307, DW_AT_name("SOCBEN"), DW_AT_symbol_name("_SOCBEN")
	.dwattr DW$307, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$307, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$68


DW$T$70	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$70, DW_AT_name("ETPS_BITS")
	.dwattr DW$T$70, DW_AT_byte_size(0x01)
DW$308	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$308, DW_AT_name("INTPRD"), DW_AT_symbol_name("_INTPRD")
	.dwattr DW$308, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x02)
	.dwattr DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$308, DW_AT_accessibility(DW_ACCESS_public)
DW$309	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$309, DW_AT_name("INTCNT"), DW_AT_symbol_name("_INTCNT")
	.dwattr DW$309, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x02)
	.dwattr DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$309, DW_AT_accessibility(DW_ACCESS_public)
DW$310	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$310, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$310, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x04)
	.dwattr DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$310, DW_AT_accessibility(DW_ACCESS_public)
DW$311	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$311, DW_AT_name("SOCAPRD"), DW_AT_symbol_name("_SOCAPRD")
	.dwattr DW$311, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x02)
	.dwattr DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$311, DW_AT_accessibility(DW_ACCESS_public)
DW$312	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$312, DW_AT_name("SOCACNT"), DW_AT_symbol_name("_SOCACNT")
	.dwattr DW$312, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x02)
	.dwattr DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$312, DW_AT_accessibility(DW_ACCESS_public)
DW$313	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$313, DW_AT_name("SOCBPRD"), DW_AT_symbol_name("_SOCBPRD")
	.dwattr DW$313, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x02)
	.dwattr DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$313, DW_AT_accessibility(DW_ACCESS_public)
DW$314	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$314, DW_AT_name("SOCBCNT"), DW_AT_symbol_name("_SOCBCNT")
	.dwattr DW$314, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x02)
	.dwattr DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$314, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$70


DW$T$72	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$72, DW_AT_name("ETFLG_BITS")
	.dwattr DW$T$72, DW_AT_byte_size(0x01)
DW$315	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$315, DW_AT_name("INT"), DW_AT_symbol_name("_INT")
	.dwattr DW$315, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$315, DW_AT_accessibility(DW_ACCESS_public)
DW$316	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$316, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$316, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$316, DW_AT_accessibility(DW_ACCESS_public)
DW$317	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$317, DW_AT_name("SOCA"), DW_AT_symbol_name("_SOCA")
	.dwattr DW$317, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$317, DW_AT_accessibility(DW_ACCESS_public)
DW$318	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$318, DW_AT_name("SOCB"), DW_AT_symbol_name("_SOCB")
	.dwattr DW$318, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$318, DW_AT_accessibility(DW_ACCESS_public)
DW$319	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$319, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$319, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0c)
	.dwattr DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$319, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$72


DW$T$74	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$74, DW_AT_name("ETCLR_BITS")
	.dwattr DW$T$74, DW_AT_byte_size(0x01)
DW$320	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$320, DW_AT_name("INT"), DW_AT_symbol_name("_INT")
	.dwattr DW$320, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$320, DW_AT_accessibility(DW_ACCESS_public)
DW$321	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$321, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$321, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$321, DW_AT_accessibility(DW_ACCESS_public)
DW$322	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$322, DW_AT_name("SOCA"), DW_AT_symbol_name("_SOCA")
	.dwattr DW$322, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$322, DW_AT_accessibility(DW_ACCESS_public)
DW$323	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$323, DW_AT_name("SOCB"), DW_AT_symbol_name("_SOCB")
	.dwattr DW$323, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$323, DW_AT_accessibility(DW_ACCESS_public)
DW$324	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$324, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$324, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0c)
	.dwattr DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$324, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$74


DW$T$76	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$76, DW_AT_name("ETFRC_BITS")
	.dwattr DW$T$76, DW_AT_byte_size(0x01)
DW$325	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$325, DW_AT_name("INT"), DW_AT_symbol_name("_INT")
	.dwattr DW$325, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$325, DW_AT_accessibility(DW_ACCESS_public)
DW$326	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$326, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$326, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$326, DW_AT_accessibility(DW_ACCESS_public)
DW$327	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$327, DW_AT_name("SOCA"), DW_AT_symbol_name("_SOCA")
	.dwattr DW$327, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$327, DW_AT_accessibility(DW_ACCESS_public)
DW$328	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$328, DW_AT_name("SOCB"), DW_AT_symbol_name("_SOCB")
	.dwattr DW$328, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$328, DW_AT_accessibility(DW_ACCESS_public)
DW$329	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$329, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$329, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0c)
	.dwattr DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$329, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$76


DW$T$78	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$78, DW_AT_name("PCCTL_BITS")
	.dwattr DW$T$78, DW_AT_byte_size(0x01)
DW$330	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$330, DW_AT_name("CHPEN"), DW_AT_symbol_name("_CHPEN")
	.dwattr DW$330, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$330, DW_AT_accessibility(DW_ACCESS_public)
DW$331	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$331, DW_AT_name("OSHTWTH"), DW_AT_symbol_name("_OSHTWTH")
	.dwattr DW$331, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x04)
	.dwattr DW$331, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$331, DW_AT_accessibility(DW_ACCESS_public)
DW$332	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$332, DW_AT_name("CHPFREQ"), DW_AT_symbol_name("_CHPFREQ")
	.dwattr DW$332, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x03)
	.dwattr DW$332, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$332, DW_AT_accessibility(DW_ACCESS_public)
DW$333	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$333, DW_AT_name("CHPDUTY"), DW_AT_symbol_name("_CHPDUTY")
	.dwattr DW$333, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x03)
	.dwattr DW$333, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$333, DW_AT_accessibility(DW_ACCESS_public)
DW$334	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$334, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$334, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x05)
	.dwattr DW$334, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$334, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$78


DW$T$80	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$80, DW_AT_name("HRCNFG_BITS")
	.dwattr DW$T$80, DW_AT_byte_size(0x01)
DW$335	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$335, DW_AT_name("EDGMODE"), DW_AT_symbol_name("_EDGMODE")
	.dwattr DW$335, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x02)
	.dwattr DW$335, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$335, DW_AT_accessibility(DW_ACCESS_public)
DW$336	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$336, DW_AT_name("CTLMODE"), DW_AT_symbol_name("_CTLMODE")
	.dwattr DW$336, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$336, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$336, DW_AT_accessibility(DW_ACCESS_public)
DW$337	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$337, DW_AT_name("HRLOAD"), DW_AT_symbol_name("_HRLOAD")
	.dwattr DW$337, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$337, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$337, DW_AT_accessibility(DW_ACCESS_public)
DW$338	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$338, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$338, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0c)
	.dwattr DW$338, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$338, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$80


DW$T$83	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$83, DW_AT_name("QDECCTL_BITS")
	.dwattr DW$T$83, DW_AT_byte_size(0x01)
DW$339	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$339, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$339, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x05)
	.dwattr DW$339, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$339, DW_AT_accessibility(DW_ACCESS_public)
DW$340	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$340, DW_AT_name("QSP"), DW_AT_symbol_name("_QSP")
	.dwattr DW$340, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$340, DW_AT_accessibility(DW_ACCESS_public)
DW$341	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$341, DW_AT_name("QIP"), DW_AT_symbol_name("_QIP")
	.dwattr DW$341, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$341, DW_AT_accessibility(DW_ACCESS_public)
DW$342	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$342, DW_AT_name("QBP"), DW_AT_symbol_name("_QBP")
	.dwattr DW$342, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$342, DW_AT_accessibility(DW_ACCESS_public)
DW$343	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$343, DW_AT_name("QAP"), DW_AT_symbol_name("_QAP")
	.dwattr DW$343, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$343, DW_AT_accessibility(DW_ACCESS_public)
DW$344	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$344, DW_AT_name("IGATE"), DW_AT_symbol_name("_IGATE")
	.dwattr DW$344, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$344, DW_AT_accessibility(DW_ACCESS_public)
DW$345	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$345, DW_AT_name("SWAP"), DW_AT_symbol_name("_SWAP")
	.dwattr DW$345, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$345, DW_AT_accessibility(DW_ACCESS_public)
DW$346	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$346, DW_AT_name("XCR"), DW_AT_symbol_name("_XCR")
	.dwattr DW$346, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$346, DW_AT_accessibility(DW_ACCESS_public)
DW$347	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$347, DW_AT_name("SPSEL"), DW_AT_symbol_name("_SPSEL")
	.dwattr DW$347, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$347, DW_AT_accessibility(DW_ACCESS_public)
DW$348	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$348, DW_AT_name("SOEN"), DW_AT_symbol_name("_SOEN")
	.dwattr DW$348, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$348, DW_AT_accessibility(DW_ACCESS_public)
DW$349	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$349, DW_AT_name("QSRC"), DW_AT_symbol_name("_QSRC")
	.dwattr DW$349, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x02)
	.dwattr DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$349, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$83


DW$T$85	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$85, DW_AT_name("QEPCTL_BITS")
	.dwattr DW$T$85, DW_AT_byte_size(0x01)
DW$350	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$350, DW_AT_name("WDE"), DW_AT_symbol_name("_WDE")
	.dwattr DW$350, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$350, DW_AT_accessibility(DW_ACCESS_public)
DW$351	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$351, DW_AT_name("UTE"), DW_AT_symbol_name("_UTE")
	.dwattr DW$351, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$351, DW_AT_accessibility(DW_ACCESS_public)
DW$352	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$352, DW_AT_name("QCLM"), DW_AT_symbol_name("_QCLM")
	.dwattr DW$352, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$352, DW_AT_accessibility(DW_ACCESS_public)
DW$353	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$353, DW_AT_name("QPEN"), DW_AT_symbol_name("_QPEN")
	.dwattr DW$353, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$353, DW_AT_accessibility(DW_ACCESS_public)
DW$354	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$354, DW_AT_name("IEL"), DW_AT_symbol_name("_IEL")
	.dwattr DW$354, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x02)
	.dwattr DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$354, DW_AT_accessibility(DW_ACCESS_public)
DW$355	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$355, DW_AT_name("SEL"), DW_AT_symbol_name("_SEL")
	.dwattr DW$355, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$355, DW_AT_accessibility(DW_ACCESS_public)
DW$356	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$356, DW_AT_name("SWI"), DW_AT_symbol_name("_SWI")
	.dwattr DW$356, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$356, DW_AT_accessibility(DW_ACCESS_public)
DW$357	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$357, DW_AT_name("IEI"), DW_AT_symbol_name("_IEI")
	.dwattr DW$357, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x02)
	.dwattr DW$357, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$357, DW_AT_accessibility(DW_ACCESS_public)
DW$358	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$358, DW_AT_name("SEI"), DW_AT_symbol_name("_SEI")
	.dwattr DW$358, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x02)
	.dwattr DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$358, DW_AT_accessibility(DW_ACCESS_public)
DW$359	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$359, DW_AT_name("PCRM"), DW_AT_symbol_name("_PCRM")
	.dwattr DW$359, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x02)
	.dwattr DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$359, DW_AT_accessibility(DW_ACCESS_public)
DW$360	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$360, DW_AT_name("FREE_SOFT"), DW_AT_symbol_name("_FREE_SOFT")
	.dwattr DW$360, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x02)
	.dwattr DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$360, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$85


DW$T$87	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$87, DW_AT_name("QCAPCTL_BITS")
	.dwattr DW$T$87, DW_AT_byte_size(0x01)
DW$361	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$361, DW_AT_name("UPPS"), DW_AT_symbol_name("_UPPS")
	.dwattr DW$361, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$361, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$361, DW_AT_accessibility(DW_ACCESS_public)
DW$362	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$362, DW_AT_name("CCPS"), DW_AT_symbol_name("_CCPS")
	.dwattr DW$362, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x03)
	.dwattr DW$362, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$362, DW_AT_accessibility(DW_ACCESS_public)
DW$363	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$363, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$363, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x08)
	.dwattr DW$363, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$363, DW_AT_accessibility(DW_ACCESS_public)
DW$364	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$364, DW_AT_name("CEN"), DW_AT_symbol_name("_CEN")
	.dwattr DW$364, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$364, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$364, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$87


DW$T$89	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$89, DW_AT_name("QPOSCTL_BITS")
	.dwattr DW$T$89, DW_AT_byte_size(0x01)
DW$365	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$365, DW_AT_name("PCSPW"), DW_AT_symbol_name("_PCSPW")
	.dwattr DW$365, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x0c)
	.dwattr DW$365, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$365, DW_AT_accessibility(DW_ACCESS_public)
DW$366	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$366, DW_AT_name("PCE"), DW_AT_symbol_name("_PCE")
	.dwattr DW$366, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$366, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$366, DW_AT_accessibility(DW_ACCESS_public)
DW$367	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$367, DW_AT_name("PCPOL"), DW_AT_symbol_name("_PCPOL")
	.dwattr DW$367, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$367, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$367, DW_AT_accessibility(DW_ACCESS_public)
DW$368	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$368, DW_AT_name("PCLOAD"), DW_AT_symbol_name("_PCLOAD")
	.dwattr DW$368, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$368, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$368, DW_AT_accessibility(DW_ACCESS_public)
DW$369	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$369, DW_AT_name("PCSHDW"), DW_AT_symbol_name("_PCSHDW")
	.dwattr DW$369, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$369, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$369, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$89


DW$T$91	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$91, DW_AT_name("QEINT_BITS")
	.dwattr DW$T$91, DW_AT_byte_size(0x01)
DW$370	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$370, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$370, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$370, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$370, DW_AT_accessibility(DW_ACCESS_public)
DW$371	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$371, DW_AT_name("PCE"), DW_AT_symbol_name("_PCE")
	.dwattr DW$371, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$371, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$371, DW_AT_accessibility(DW_ACCESS_public)
DW$372	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$372, DW_AT_name("QPE"), DW_AT_symbol_name("_QPE")
	.dwattr DW$372, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$372, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$372, DW_AT_accessibility(DW_ACCESS_public)
DW$373	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$373, DW_AT_name("QDC"), DW_AT_symbol_name("_QDC")
	.dwattr DW$373, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$373, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$373, DW_AT_accessibility(DW_ACCESS_public)
DW$374	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$374, DW_AT_name("WTO"), DW_AT_symbol_name("_WTO")
	.dwattr DW$374, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$374, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$374, DW_AT_accessibility(DW_ACCESS_public)
DW$375	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$375, DW_AT_name("PCU"), DW_AT_symbol_name("_PCU")
	.dwattr DW$375, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$375, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$375, DW_AT_accessibility(DW_ACCESS_public)
DW$376	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$376, DW_AT_name("PCO"), DW_AT_symbol_name("_PCO")
	.dwattr DW$376, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$376, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$376, DW_AT_accessibility(DW_ACCESS_public)
DW$377	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$377, DW_AT_name("PCR"), DW_AT_symbol_name("_PCR")
	.dwattr DW$377, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$377, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$377, DW_AT_accessibility(DW_ACCESS_public)
DW$378	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$378, DW_AT_name("PCM"), DW_AT_symbol_name("_PCM")
	.dwattr DW$378, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$378, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$378, DW_AT_accessibility(DW_ACCESS_public)
DW$379	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$379, DW_AT_name("SEL"), DW_AT_symbol_name("_SEL")
	.dwattr DW$379, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$379, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$379, DW_AT_accessibility(DW_ACCESS_public)
DW$380	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$380, DW_AT_name("IEL"), DW_AT_symbol_name("_IEL")
	.dwattr DW$380, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$380, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$380, DW_AT_accessibility(DW_ACCESS_public)
DW$381	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$381, DW_AT_name("UTO"), DW_AT_symbol_name("_UTO")
	.dwattr DW$381, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$381, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$381, DW_AT_accessibility(DW_ACCESS_public)
DW$382	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$382, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$382, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$382, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$382, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$91


DW$T$93	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$93, DW_AT_name("QFLG_BITS")
	.dwattr DW$T$93, DW_AT_byte_size(0x01)
DW$383	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$383, DW_AT_name("INT"), DW_AT_symbol_name("_INT")
	.dwattr DW$383, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$383, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$383, DW_AT_accessibility(DW_ACCESS_public)
DW$384	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$384, DW_AT_name("PCE"), DW_AT_symbol_name("_PCE")
	.dwattr DW$384, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$384, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$384, DW_AT_accessibility(DW_ACCESS_public)
DW$385	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$385, DW_AT_name("PHE"), DW_AT_symbol_name("_PHE")
	.dwattr DW$385, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$385, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$385, DW_AT_accessibility(DW_ACCESS_public)
DW$386	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$386, DW_AT_name("QDC"), DW_AT_symbol_name("_QDC")
	.dwattr DW$386, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$386, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$386, DW_AT_accessibility(DW_ACCESS_public)
DW$387	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$387, DW_AT_name("WTO"), DW_AT_symbol_name("_WTO")
	.dwattr DW$387, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$387, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$387, DW_AT_accessibility(DW_ACCESS_public)
DW$388	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$388, DW_AT_name("PCU"), DW_AT_symbol_name("_PCU")
	.dwattr DW$388, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$388, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$388, DW_AT_accessibility(DW_ACCESS_public)
DW$389	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$389, DW_AT_name("PCO"), DW_AT_symbol_name("_PCO")
	.dwattr DW$389, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$389, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$389, DW_AT_accessibility(DW_ACCESS_public)
DW$390	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$390, DW_AT_name("PCR"), DW_AT_symbol_name("_PCR")
	.dwattr DW$390, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$390, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$390, DW_AT_accessibility(DW_ACCESS_public)
DW$391	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$391, DW_AT_name("PCM"), DW_AT_symbol_name("_PCM")
	.dwattr DW$391, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$391, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$391, DW_AT_accessibility(DW_ACCESS_public)
DW$392	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$392, DW_AT_name("SEL"), DW_AT_symbol_name("_SEL")
	.dwattr DW$392, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$392, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$392, DW_AT_accessibility(DW_ACCESS_public)
DW$393	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$393, DW_AT_name("IEL"), DW_AT_symbol_name("_IEL")
	.dwattr DW$393, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$393, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$393, DW_AT_accessibility(DW_ACCESS_public)
DW$394	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$394, DW_AT_name("UTO"), DW_AT_symbol_name("_UTO")
	.dwattr DW$394, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$394, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$394, DW_AT_accessibility(DW_ACCESS_public)
DW$395	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$395, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$395, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$395, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$395, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$93


DW$T$95	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$95, DW_AT_name("QFRC_BITS")
	.dwattr DW$T$95, DW_AT_byte_size(0x01)
DW$396	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$396, DW_AT_name("reserved"), DW_AT_symbol_name("_reserved")
	.dwattr DW$396, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$396, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$396, DW_AT_accessibility(DW_ACCESS_public)
DW$397	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$397, DW_AT_name("PCE"), DW_AT_symbol_name("_PCE")
	.dwattr DW$397, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$397, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$397, DW_AT_accessibility(DW_ACCESS_public)
DW$398	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$398, DW_AT_name("PHE"), DW_AT_symbol_name("_PHE")
	.dwattr DW$398, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$398, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$398, DW_AT_accessibility(DW_ACCESS_public)
DW$399	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$399, DW_AT_name("QDC"), DW_AT_symbol_name("_QDC")
	.dwattr DW$399, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$399, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$399, DW_AT_accessibility(DW_ACCESS_public)
DW$400	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$400, DW_AT_name("WTO"), DW_AT_symbol_name("_WTO")
	.dwattr DW$400, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$400, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$400, DW_AT_accessibility(DW_ACCESS_public)
DW$401	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$401, DW_AT_name("PCU"), DW_AT_symbol_name("_PCU")
	.dwattr DW$401, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$401, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$401, DW_AT_accessibility(DW_ACCESS_public)
DW$402	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$402, DW_AT_name("PCO"), DW_AT_symbol_name("_PCO")
	.dwattr DW$402, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$402, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$402, DW_AT_accessibility(DW_ACCESS_public)
DW$403	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$403, DW_AT_name("PCR"), DW_AT_symbol_name("_PCR")
	.dwattr DW$403, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$403, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$403, DW_AT_accessibility(DW_ACCESS_public)
DW$404	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$404, DW_AT_name("PCM"), DW_AT_symbol_name("_PCM")
	.dwattr DW$404, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$404, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$404, DW_AT_accessibility(DW_ACCESS_public)
DW$405	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$405, DW_AT_name("SEL"), DW_AT_symbol_name("_SEL")
	.dwattr DW$405, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$405, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$405, DW_AT_accessibility(DW_ACCESS_public)
DW$406	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$406, DW_AT_name("IEL"), DW_AT_symbol_name("_IEL")
	.dwattr DW$406, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$406, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$406, DW_AT_accessibility(DW_ACCESS_public)
DW$407	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$407, DW_AT_name("UTO"), DW_AT_symbol_name("_UTO")
	.dwattr DW$407, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$407, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$407, DW_AT_accessibility(DW_ACCESS_public)
DW$408	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$408, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$408, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$408, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$408, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$95


DW$T$97	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$97, DW_AT_name("QEPSTS_BITS")
	.dwattr DW$T$97, DW_AT_byte_size(0x01)
DW$409	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$409, DW_AT_name("PCEF"), DW_AT_symbol_name("_PCEF")
	.dwattr DW$409, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$409, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$409, DW_AT_accessibility(DW_ACCESS_public)
DW$410	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$410, DW_AT_name("FIMF"), DW_AT_symbol_name("_FIMF")
	.dwattr DW$410, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$410, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$410, DW_AT_accessibility(DW_ACCESS_public)
DW$411	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$411, DW_AT_name("CDEF"), DW_AT_symbol_name("_CDEF")
	.dwattr DW$411, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$411, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$411, DW_AT_accessibility(DW_ACCESS_public)
DW$412	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$412, DW_AT_name("COEF"), DW_AT_symbol_name("_COEF")
	.dwattr DW$412, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$412, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$412, DW_AT_accessibility(DW_ACCESS_public)
DW$413	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$413, DW_AT_name("QDLF"), DW_AT_symbol_name("_QDLF")
	.dwattr DW$413, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$413, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$413, DW_AT_accessibility(DW_ACCESS_public)
DW$414	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$414, DW_AT_name("QDF"), DW_AT_symbol_name("_QDF")
	.dwattr DW$414, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$414, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$414, DW_AT_accessibility(DW_ACCESS_public)
DW$415	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$415, DW_AT_name("FIDF"), DW_AT_symbol_name("_FIDF")
	.dwattr DW$415, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$415, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$415, DW_AT_accessibility(DW_ACCESS_public)
DW$416	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$416, DW_AT_name("UPEVNT"), DW_AT_symbol_name("_UPEVNT")
	.dwattr DW$416, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$416, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$416, DW_AT_accessibility(DW_ACCESS_public)
DW$417	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$417, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$417, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$417, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$417, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$97


	.dwattr DW$29, DW_AT_external(0x01)
	.dwattr DW$22, DW_AT_external(0x01)
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

DW$418	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$418, DW_AT_location[DW_OP_reg0]
DW$419	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$419, DW_AT_location[DW_OP_reg1]
DW$420	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$420, DW_AT_location[DW_OP_reg2]
DW$421	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$421, DW_AT_location[DW_OP_reg3]
DW$422	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$422, DW_AT_location[DW_OP_reg4]
DW$423	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$423, DW_AT_location[DW_OP_reg5]
DW$424	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$424, DW_AT_location[DW_OP_reg6]
DW$425	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$425, DW_AT_location[DW_OP_reg7]
DW$426	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$426, DW_AT_location[DW_OP_reg8]
DW$427	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$427, DW_AT_location[DW_OP_reg9]
DW$428	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$428, DW_AT_location[DW_OP_reg10]
DW$429	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$429, DW_AT_location[DW_OP_reg11]
DW$430	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$430, DW_AT_location[DW_OP_reg12]
DW$431	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$431, DW_AT_location[DW_OP_reg13]
DW$432	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$432, DW_AT_location[DW_OP_reg14]
DW$433	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$433, DW_AT_location[DW_OP_reg15]
DW$434	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$434, DW_AT_location[DW_OP_reg16]
DW$435	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$435, DW_AT_location[DW_OP_reg17]
DW$436	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$436, DW_AT_location[DW_OP_reg18]
DW$437	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$437, DW_AT_location[DW_OP_reg19]
DW$438	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$438, DW_AT_location[DW_OP_reg20]
DW$439	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$439, DW_AT_location[DW_OP_reg21]
DW$440	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$440, DW_AT_location[DW_OP_reg22]
DW$441	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$441, DW_AT_location[DW_OP_reg23]
DW$442	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$442, DW_AT_location[DW_OP_reg24]
DW$443	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$443, DW_AT_location[DW_OP_reg25]
DW$444	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$444, DW_AT_location[DW_OP_reg26]
DW$445	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$445, DW_AT_location[DW_OP_reg27]
DW$446	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$446, DW_AT_location[DW_OP_reg28]
DW$447	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$447, DW_AT_location[DW_OP_reg29]
DW$448	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$448, DW_AT_location[DW_OP_reg30]
DW$449	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$449, DW_AT_location[DW_OP_reg31]
DW$450	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$450, DW_AT_location[DW_OP_regx 0x20]
DW$451	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$451, DW_AT_location[DW_OP_regx 0x21]
DW$452	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$452, DW_AT_location[DW_OP_regx 0x22]
DW$453	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$453, DW_AT_location[DW_OP_regx 0x23]
DW$454	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$454, DW_AT_location[DW_OP_regx 0x24]
DW$455	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$455, DW_AT_location[DW_OP_regx 0x25]
DW$456	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$456, DW_AT_location[DW_OP_regx 0x26]
DW$457	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$457, DW_AT_location[DW_OP_regx 0x27]
DW$458	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$458, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU

