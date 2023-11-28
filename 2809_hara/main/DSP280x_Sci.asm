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
DW$1	.dwtag  DW_TAG_variable, DW_AT_name("g_u16_sci_on"), DW_AT_symbol_name("_g_u16_sci_on")
	.dwattr DW$1, DW_AT_type(*DW$T$67)
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)

DW$2	.dwtag  DW_TAG_subprogram, DW_AT_name("vsprintf"), DW_AT_symbol_name("_vsprintf")
	.dwattr DW$2, DW_AT_type(*DW$T$10)
	.dwattr DW$2, DW_AT_declaration(0x01)
	.dwattr DW$2, DW_AT_external(0x01)
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$51)
DW$4	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$59)
DW$5	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$60)
	.dwendtag DW$2

DW$6	.dwtag  DW_TAG_variable, DW_AT_name("SciaRegs"), DW_AT_symbol_name("_SciaRegs")
	.dwattr DW$6, DW_AT_type(*DW$T$84)
	.dwattr DW$6, DW_AT_declaration(0x01)
	.dwattr DW$6, DW_AT_external(0x01)
DW$7	.dwtag  DW_TAG_variable, DW_AT_name("PieCtrlRegs"), DW_AT_symbol_name("_PieCtrlRegs")
	.dwattr DW$7, DW_AT_type(*DW$T$71)
	.dwattr DW$7, DW_AT_declaration(0x01)
	.dwattr DW$7, DW_AT_external(0x01)
_Buff$1$0:	.usect	".ebss",128,1,0
;	..\Compiler\bin\opt2000.exe C:\Users\노호진\AppData\Local\Temp\TI32410 C:\Users\노호진\AppData\Local\Temp\TI3244 
;	..\Compiler\bin\ac2000.exe --keep_unneeded_types -D_INLINE -DLARGE_MODEL -I..\include --version=28 --keep_unneeded_types --mem_model:code=flat --mem_model:data=large -m --i_output_file C:\Users\노호진\AppData\Local\Temp\TI3242 --template_info_file C:\Users\노호진\AppData\Local\Temp\TI3246 --object_file DSP280x_Sci.obj --embed_opts 10 --call_assumptions=0 --mem_model:code=flat --mem_model:data=large --opt_for_speed --opt_level=3 --optimizer_comments --optimizer_interlist --program_level_compile 
	.sect	".text"
	.global	_SCIx_RxChar

DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("SCIx_RxChar"), DW_AT_symbol_name("_SCIx_RxChar")
	.dwattr DW$8, DW_AT_low_pc(_SCIx_RxChar)
	.dwattr DW$8, DW_AT_high_pc(0x00)
	.dwattr DW$8, DW_AT_begin_file("DSP280x_Sci.c")
	.dwattr DW$8, DW_AT_begin_line(0x43)
	.dwattr DW$8, DW_AT_begin_column(0x06)
	.dwpsn	"DSP280x_Sci.c",68,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _SCIx_RxChar                  FR SIZE:   0           *
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
_SCIx_RxChar:
;***  	-----------------------    #pragma LOOP_FLAGS(4096u)
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
L1:    
DW$L$_SCIx_RxChar$2$B:
;***	-----------------------g2:
;*** 71	-----------------------    if ( !(*((volatile struct _SCIRXST_BITS *)&SciaRegs+5L)&0x40u) ) goto g2;
	.dwpsn	"DSP280x_Sci.c",71,12
        MOVW      DP,#_SciaRegs+5
        TBIT      @_SciaRegs+5,#6       ; |71| 
        BF        L1,NTC                ; |71| 
        ; branchcc occurs ; |71| 
DW$L$_SCIx_RxChar$2$E:
;*** 72	-----------------------    return (int)SciaRegs.SCIRXBUF.all;
	.dwpsn	"DSP280x_Sci.c",72,5
        MOV       AL,@_SciaRegs+7       ; |72| 
	.dwpsn	"DSP280x_Sci.c",73,1
        LRETR
        ; return occurs

DW$9	.dwtag  DW_TAG_loop
	.dwattr DW$9, DW_AT_name("C:\Users\노호진\Desktop\2809_MICROMOUSE\2809_hara\main\DSP280x_Sci.asm:L1:1:1701145761")
	.dwattr DW$9, DW_AT_begin_file("DSP280x_Sci.c")
	.dwattr DW$9, DW_AT_begin_line(0x47)
	.dwattr DW$9, DW_AT_end_line(0x47)
DW$10	.dwtag  DW_TAG_loop_range
	.dwattr DW$10, DW_AT_low_pc(DW$L$_SCIx_RxChar$2$B)
	.dwattr DW$10, DW_AT_high_pc(DW$L$_SCIx_RxChar$2$E)
	.dwendtag DW$9

	.dwattr DW$8, DW_AT_end_file("DSP280x_Sci.c")
	.dwattr DW$8, DW_AT_end_line(0x49)
	.dwattr DW$8, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$8

	.sect	".text"
	.global	_scia_ISR

DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("scia_ISR"), DW_AT_symbol_name("_scia_ISR")
	.dwattr DW$11, DW_AT_low_pc(_scia_ISR)
	.dwattr DW$11, DW_AT_high_pc(0x00)
	.dwattr DW$11, DW_AT_begin_file("DSP280x_Sci.c")
	.dwattr DW$11, DW_AT_begin_line(0x68)
	.dwattr DW$11, DW_AT_begin_column(0x10)
	.dwattr DW$11, DW_AT_TI_interrupt(0x01)
	.dwpsn	"DSP280x_Sci.c",105,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _scia_ISR                     FR SIZE:   0           *
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
_scia_ISR:
;*** 108	-----------------------    PieCtrlRegs.PIEACK.all = 256u;
;***  	-----------------------    #pragma LOOP_FLAGS(4096u)
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        CLRC      PAGE0,OVM
        CLRC      AMODE
	.dwpsn	"DSP280x_Sci.c",108,2
        MOVW      DP,#_PieCtrlRegs+1
        MOV       @_PieCtrlRegs+1,#256  ; |108| 
L2:    
DW$L$_scia_ISR$2$B:
;***	-----------------------g2:
;*** 71	-----------------------    if ( !(*((volatile struct _SCIRXST_BITS *)&SciaRegs+5L)&0x40u) ) goto g2;  // [2]
	.dwpsn	"DSP280x_Sci.c",71,12
        MOVW      DP,#_SciaRegs+5
        TBIT      @_SciaRegs+5,#6       ; |71| 
        BF        L2,NTC                ; |71| 
        ; branchcc occurs ; |71| 
DW$L$_scia_ISR$2$E:
;*** 72	-----------------------    SciaRegs.SCIRXBUF.all;  // [2]
;*** 72	-----------------------    g_u16_sci_on = 1u;  // [2]
;*** 112	-----------------------    return;
	.dwpsn	"DSP280x_Sci.c",72,5
        MOV       AL,@_SciaRegs+7       ; |72| 
        MOVW      DP,#_g_u16_sci_on
        MOV       @_g_u16_sci_on,#1     ; |72| 
	.dwpsn	"DSP280x_Sci.c",112,2
	.dwpsn	"DSP280x_Sci.c",113,1
        NASP
        IRET
        ; return occurs

DW$12	.dwtag  DW_TAG_loop
	.dwattr DW$12, DW_AT_name("C:\Users\노호진\Desktop\2809_MICROMOUSE\2809_hara\main\DSP280x_Sci.asm:L2:1:1701145761")
	.dwattr DW$12, DW_AT_begin_file("DSP280x_Sci.c")
	.dwattr DW$12, DW_AT_begin_line(0x47)
	.dwattr DW$12, DW_AT_end_line(0x6c)
DW$13	.dwtag  DW_TAG_loop_range
	.dwattr DW$13, DW_AT_low_pc(DW$L$_scia_ISR$2$B)
	.dwattr DW$13, DW_AT_high_pc(DW$L$_scia_ISR$2$E)
	.dwendtag DW$12

	.dwattr DW$11, DW_AT_end_file("DSP280x_Sci.c")
	.dwattr DW$11, DW_AT_end_line(0x71)
	.dwattr DW$11, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$11

	.sect	".text"
	.global	_SCIx_TxChar

DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("SCIx_TxChar"), DW_AT_symbol_name("_SCIx_TxChar")
	.dwattr DW$14, DW_AT_low_pc(_SCIx_TxChar)
	.dwattr DW$14, DW_AT_high_pc(0x00)
	.dwattr DW$14, DW_AT_begin_file("DSP280x_Sci.c")
	.dwattr DW$14, DW_AT_begin_line(0x4b)
	.dwattr DW$14, DW_AT_begin_column(0x06)
	.dwpsn	"DSP280x_Sci.c",76,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _SCIx_TxChar                  FR SIZE:   0           *
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
_SCIx_TxChar:
;***  	-----------------------    #pragma LOOP_FLAGS(4096u)
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
;* AL    assigned to _Data
DW$15	.dwtag  DW_TAG_formal_parameter, DW_AT_name("Data"), DW_AT_symbol_name("_Data")
	.dwattr DW$15, DW_AT_type(*DW$T$49)
	.dwattr DW$15, DW_AT_location[DW_OP_reg0]
;* AL    assigned to _Data
DW$16	.dwtag  DW_TAG_variable, DW_AT_name("Data"), DW_AT_symbol_name("_Data")
	.dwattr DW$16, DW_AT_type(*DW$T$58)
	.dwattr DW$16, DW_AT_location[DW_OP_reg0]
L3:    
DW$L$_SCIx_TxChar$2$B:
;***	-----------------------g2:
;*** 79	-----------------------    if ( !(*((volatile struct _SCICTL2_BITS *)&SciaRegs+4L)&0x80u) ) goto g2;
	.dwpsn	"DSP280x_Sci.c",79,11
        MOVW      DP,#_SciaRegs+4
        TBIT      @_SciaRegs+4,#7       ; |79| 
        BF        L3,NTC                ; |79| 
        ; branchcc occurs ; |79| 
DW$L$_SCIx_TxChar$2$E:
;*** 80	-----------------------    SciaRegs.SCITXBUF = Data;
;*** 80	-----------------------    return;
	.dwpsn	"DSP280x_Sci.c",80,5
        MOV       @_SciaRegs+9,AL       ; |80| 
	.dwpsn	"DSP280x_Sci.c",81,1
        LRETR
        ; return occurs

DW$17	.dwtag  DW_TAG_loop
	.dwattr DW$17, DW_AT_name("C:\Users\노호진\Desktop\2809_MICROMOUSE\2809_hara\main\DSP280x_Sci.asm:L3:1:1701145761")
	.dwattr DW$17, DW_AT_begin_file("DSP280x_Sci.c")
	.dwattr DW$17, DW_AT_begin_line(0x4f)
	.dwattr DW$17, DW_AT_end_line(0x4f)
DW$18	.dwtag  DW_TAG_loop_range
	.dwattr DW$18, DW_AT_low_pc(DW$L$_SCIx_TxChar$2$B)
	.dwattr DW$18, DW_AT_high_pc(DW$L$_SCIx_TxChar$2$E)
	.dwendtag DW$17

	.dwattr DW$14, DW_AT_end_file("DSP280x_Sci.c")
	.dwattr DW$14, DW_AT_end_line(0x51)
	.dwattr DW$14, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$14

	.sect	".text"
	.global	_SCIx_TxString

DW$19	.dwtag  DW_TAG_subprogram, DW_AT_name("SCIx_TxString"), DW_AT_symbol_name("_SCIx_TxString")
	.dwattr DW$19, DW_AT_low_pc(_SCIx_TxString)
	.dwattr DW$19, DW_AT_high_pc(0x00)
	.dwattr DW$19, DW_AT_begin_file("DSP280x_Sci.c")
	.dwattr DW$19, DW_AT_begin_line(0x53)
	.dwattr DW$19, DW_AT_begin_column(0x06)
	.dwpsn	"DSP280x_Sci.c",84,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _SCIx_TxString                FR SIZE:   0           *
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
_SCIx_TxString:
;*** 85	-----------------------    if ( !(U$1 = *Str) ) goto g10;
;***  	-----------------------    #pragma LOOP_FLAGS(4096u)
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
;* AR4   assigned to _Str
DW$20	.dwtag  DW_TAG_formal_parameter, DW_AT_name("Str"), DW_AT_symbol_name("_Str")
	.dwattr DW$20, DW_AT_type(*DW$T$51)
	.dwattr DW$20, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _Data
DW$21	.dwtag  DW_TAG_variable, DW_AT_name("Data"), DW_AT_symbol_name("_Data")
	.dwattr DW$21, DW_AT_type(*DW$T$49)
	.dwattr DW$21, DW_AT_location[DW_OP_reg0]
;* AR4   assigned to _Str
DW$22	.dwtag  DW_TAG_variable, DW_AT_name("Str"), DW_AT_symbol_name("_Str")
	.dwattr DW$22, DW_AT_type(*DW$T$51)
	.dwattr DW$22, DW_AT_location[DW_OP_reg12]
;* AL    assigned to U$1
DW$23	.dwtag  DW_TAG_variable, DW_AT_name("U$1"), DW_AT_symbol_name("U$1")
	.dwattr DW$23, DW_AT_type(*DW$T$49)
	.dwattr DW$23, DW_AT_location[DW_OP_reg0]
	.dwpsn	"DSP280x_Sci.c",85,5
        MOV       AL,*+XAR4[0]          ; |85| 
        BF        L8,EQ                 ; |85| 
        ; branchcc occurs ; |85| 
L4:    
DW$L$_SCIx_TxString$2$B:
;***	-----------------------g3:
;*** 87	-----------------------    if ( U$1 != 10 ) goto g7;
;***  	-----------------------    #pragma LOOP_FLAGS(4096u)
	.dwpsn	"DSP280x_Sci.c",87,9
        CMPB      AL,#10                ; |87| 
        BF        L6,NEQ                ; |87| 
        ; branchcc occurs ; |87| 
DW$L$_SCIx_TxString$2$E:
L5:    
DW$L$_SCIx_TxString$3$B:
;***	-----------------------g5:
;*** 79	-----------------------    if ( !(*((volatile struct _SCICTL2_BITS *)&SciaRegs+4L)&0x80u) ) goto g5;  // [3]
	.dwpsn	"DSP280x_Sci.c",79,11
        MOVW      DP,#_SciaRegs+4
        TBIT      @_SciaRegs+4,#7       ; |79| 
        BF        L5,NTC                ; |79| 
        ; branchcc occurs ; |79| 
DW$L$_SCIx_TxString$3$E:
DW$L$_SCIx_TxString$4$B:
;*** 80	-----------------------    SciaRegs.SCITXBUF = 13u;  // [3]
	.dwpsn	"DSP280x_Sci.c",80,5
        MOV       @_SciaRegs+9,#13      ; |80| 
DW$L$_SCIx_TxString$4$E:
L6:    
DW$L$_SCIx_TxString$5$B:
;***	-----------------------g7:
;*** 91	-----------------------    Data = U$1;
;***  	-----------------------    #pragma LOOP_FLAGS(4096u)
	.dwpsn	"DSP280x_Sci.c",91,9
DW$L$_SCIx_TxString$5$E:
L7:    
DW$L$_SCIx_TxString$6$B:
;***	-----------------------g8:
;*** 79	-----------------------    if ( !(*((volatile struct _SCICTL2_BITS *)&SciaRegs+4L)&0x80u) ) goto g8;  // [3]
	.dwpsn	"DSP280x_Sci.c",79,11
        MOVW      DP,#_SciaRegs+4
        TBIT      @_SciaRegs+4,#7       ; |79| 
        BF        L7,NTC                ; |79| 
        ; branchcc occurs ; |79| 
DW$L$_SCIx_TxString$6$E:
DW$L$_SCIx_TxString$7$B:
;*** 80	-----------------------    SciaRegs.SCITXBUF = Data;  // [3]
;*** 80	-----------------------    if ( U$1 = *(++Str) ) goto g3;  // [3]
;***	-----------------------g10:
;***  	-----------------------    return;
	.dwpsn	"DSP280x_Sci.c",80,5
        MOV       @_SciaRegs+9,AL       ; |80| 
        MOVB      XAR5,#1               ; |80| 
        MOVL      ACC,XAR4              ; |80| 
        ADDU      ACC,AR5               ; |80| 
        MOVL      XAR4,ACC              ; |80| 
        MOV       AL,*+XAR4[0]          ; |80| 
        BF        L4,NEQ                ; |80| 
        ; branchcc occurs ; |80| 
DW$L$_SCIx_TxString$7$E:
L8:    
	.dwpsn	"DSP280x_Sci.c",93,1
        LRETR
        ; return occurs

DW$24	.dwtag  DW_TAG_loop
	.dwattr DW$24, DW_AT_name("C:\Users\노호진\Desktop\2809_MICROMOUSE\2809_hara\main\DSP280x_Sci.asm:L4:1:1701145761")
	.dwattr DW$24, DW_AT_begin_file("DSP280x_Sci.c")
	.dwattr DW$24, DW_AT_begin_line(0x50)
	.dwattr DW$24, DW_AT_end_line(0x5c)
DW$25	.dwtag  DW_TAG_loop_range
	.dwattr DW$25, DW_AT_low_pc(DW$L$_SCIx_TxString$2$B)
	.dwattr DW$25, DW_AT_high_pc(DW$L$_SCIx_TxString$2$E)
DW$26	.dwtag  DW_TAG_loop_range
	.dwattr DW$26, DW_AT_low_pc(DW$L$_SCIx_TxString$4$B)
	.dwattr DW$26, DW_AT_high_pc(DW$L$_SCIx_TxString$4$E)
DW$27	.dwtag  DW_TAG_loop_range
	.dwattr DW$27, DW_AT_low_pc(DW$L$_SCIx_TxString$5$B)
	.dwattr DW$27, DW_AT_high_pc(DW$L$_SCIx_TxString$5$E)
DW$28	.dwtag  DW_TAG_loop_range
	.dwattr DW$28, DW_AT_low_pc(DW$L$_SCIx_TxString$7$B)
	.dwattr DW$28, DW_AT_high_pc(DW$L$_SCIx_TxString$7$E)

DW$29	.dwtag  DW_TAG_loop
	.dwattr DW$29, DW_AT_name("C:\Users\노호진\Desktop\2809_MICROMOUSE\2809_hara\main\DSP280x_Sci.asm:L5:2:1701145761")
	.dwattr DW$29, DW_AT_begin_file("DSP280x_Sci.c")
	.dwattr DW$29, DW_AT_begin_line(0x4f)
	.dwattr DW$29, DW_AT_end_line(0x57)
DW$30	.dwtag  DW_TAG_loop_range
	.dwattr DW$30, DW_AT_low_pc(DW$L$_SCIx_TxString$3$B)
	.dwattr DW$30, DW_AT_high_pc(DW$L$_SCIx_TxString$3$E)
	.dwendtag DW$29


DW$31	.dwtag  DW_TAG_loop
	.dwattr DW$31, DW_AT_name("C:\Users\노호진\Desktop\2809_MICROMOUSE\2809_hara\main\DSP280x_Sci.asm:L7:2:1701145761")
	.dwattr DW$31, DW_AT_begin_file("DSP280x_Sci.c")
	.dwattr DW$31, DW_AT_begin_line(0x4f)
	.dwattr DW$31, DW_AT_end_line(0x5b)
DW$32	.dwtag  DW_TAG_loop_range
	.dwattr DW$32, DW_AT_low_pc(DW$L$_SCIx_TxString$6$B)
	.dwattr DW$32, DW_AT_high_pc(DW$L$_SCIx_TxString$6$E)
	.dwendtag DW$31

	.dwendtag DW$24

	.dwattr DW$19, DW_AT_end_file("DSP280x_Sci.c")
	.dwattr DW$19, DW_AT_end_line(0x5d)
	.dwattr DW$19, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$19

	.sect	".text"
	.global	_TxPrintf

DW$33	.dwtag  DW_TAG_subprogram, DW_AT_name("TxPrintf"), DW_AT_symbol_name("_TxPrintf")
	.dwattr DW$33, DW_AT_low_pc(_TxPrintf)
	.dwattr DW$33, DW_AT_high_pc(0x00)
	.dwattr DW$33, DW_AT_begin_file("DSP280x_Sci.c")
	.dwattr DW$33, DW_AT_begin_line(0x5e)
	.dwattr DW$33, DW_AT_begin_column(0x06)
	.dwpsn	"DSP280x_Sci.c",95,1

	.dwfde DW$CIE
DW$34	.dwtag  DW_TAG_variable, DW_AT_name("Buff"), DW_AT_symbol_name("_Buff$1$0")
	.dwattr DW$34, DW_AT_type(*DW$T$87)
	.dwattr DW$34, DW_AT_location[DW_OP_addr _Buff$1$0]

;***************************************************************
;* FNAME: _TxPrintf                     FR SIZE:   4           *
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
_TxPrintf:
;*** 99	-----------------------    C$1 = &Buff[0];
;*** 99	-----------------------    vsprintf(C$1, (char *)Form, (char *)(&Form));
;*** 101	-----------------------    SCIx_TxString(C$1);
;*** 101	-----------------------    return;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        MOVL      *SP++,XAR3
	.dwcfa	0x80, 11, 2
	.dwcfa	0x1d, -4
        ADDB      SP,#2
	.dwcfa	0x1d, -6
DW$35	.dwtag  DW_TAG_formal_parameter, DW_AT_name("Form"), DW_AT_symbol_name("_Form")
	.dwattr DW$35, DW_AT_type(*DW$T$51)
	.dwattr DW$35, DW_AT_location[DW_OP_breg20 -8]
DW$36	.dwtag  DW_TAG_unspecified_parameters
;* AR3   assigned to C$1
DW$37	.dwtag  DW_TAG_variable, DW_AT_name("C$1"), DW_AT_symbol_name("C$1")
	.dwattr DW$37, DW_AT_type(*DW$T$56)
	.dwattr DW$37, DW_AT_location[DW_OP_reg10]
	.dwpsn	"DSP280x_Sci.c",99,5
        MOVZ      AR4,SP                ; |99| 
        SUBB      XAR4,#8               ; |99| 
        MOVL      *-SP[2],XAR4          ; |99| 
        MOVL      XAR5,*-SP[8]          ; |99| 
        MOVL      XAR3,#_Buff$1$0       ; |99| 
        MOVL      XAR4,XAR3             ; |99| 
        LCR       #_vsprintf            ; |99| 
        ; call occurs [#_vsprintf] ; |99| 
	.dwpsn	"DSP280x_Sci.c",101,5
        MOVL      XAR4,XAR3             ; |101| 
        LCR       #_SCIx_TxString       ; |101| 
        ; call occurs [#_SCIx_TxString] ; |101| 
	.dwpsn	"DSP280x_Sci.c",102,1
        SUBB      SP,#2
	.dwcfa	0x1d, -4
        MOVL      XAR3,*--SP
	.dwcfa	0x1d, -2
	.dwcfa	0xc0, 11
        LRETR
        ; return occurs
	.dwattr DW$33, DW_AT_end_file("DSP280x_Sci.c")
	.dwattr DW$33, DW_AT_end_line(0x66)
	.dwattr DW$33, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$33

	.sect	".text"
	.global	_InitSci

DW$38	.dwtag  DW_TAG_subprogram, DW_AT_name("InitSci"), DW_AT_symbol_name("_InitSci")
	.dwattr DW$38, DW_AT_low_pc(_InitSci)
	.dwattr DW$38, DW_AT_high_pc(0x00)
	.dwattr DW$38, DW_AT_begin_file("DSP280x_Sci.c")
	.dwattr DW$38, DW_AT_begin_line(0x1b)
	.dwattr DW$38, DW_AT_begin_column(0x06)
	.dwpsn	"DSP280x_Sci.c",28,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _InitSci                      FR SIZE:   0           *
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
_InitSci:
;*** 39	-----------------------    SciaRegs.SCICCR.all = 7u;
;*** 48	-----------------------    SciaRegs.SCICTL1.all = 3u;
;*** 52	-----------------------    SciaRegs.SCIHBAUD = 0u;
;*** 53	-----------------------    SciaRegs.SCILBAUD = 26u;
;*** 55	-----------------------    C$1 = &SciaRegs;
;*** 55	-----------------------    *((volatile struct _SCICTL2_BITS *)C$1+4L) &= 0xfffdu;
;*** 56	-----------------------    *((volatile struct _SCICTL2_BITS *)C$1+4L) &= 0xfffeu;
;*** 58	-----------------------    SciaRegs.SCIFFTX.all = 0xa000u;
;*** 59	-----------------------    SciaRegs.SCIFFCT.all = 16384u;
;*** 63	-----------------------    *((volatile struct _SCICTL1_BITS *)C$1+1L) |= 0x20u;
;*** 63	-----------------------    return;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
;* AR4   assigned to C$1
DW$39	.dwtag  DW_TAG_variable, DW_AT_name("C$1"), DW_AT_symbol_name("C$1")
	.dwattr DW$39, DW_AT_type(*DW$T$85)
	.dwattr DW$39, DW_AT_location[DW_OP_reg12]
	.dwpsn	"DSP280x_Sci.c",39,2
        MOVW      DP,#_SciaRegs
        MOV       @_SciaRegs,#7         ; |39| 
	.dwpsn	"DSP280x_Sci.c",48,2
        MOV       @_SciaRegs+1,#3       ; |48| 
	.dwpsn	"DSP280x_Sci.c",52,2
        MOV       @_SciaRegs+2,#0       ; |52| 
	.dwpsn	"DSP280x_Sci.c",53,2
        MOV       @_SciaRegs+3,#26      ; |53| 
	.dwpsn	"DSP280x_Sci.c",55,2
        MOVL      XAR4,#_SciaRegs       ; |55| 
        AND       *+XAR4[4],#0xfffd     ; |55| 
	.dwpsn	"DSP280x_Sci.c",56,2
        AND       *+XAR4[4],#0xfffe     ; |56| 
	.dwpsn	"DSP280x_Sci.c",58,3
        MOV       @_SciaRegs+10,#40960  ; |58| 
	.dwpsn	"DSP280x_Sci.c",59,3
        MOV       @_SciaRegs+12,#16384  ; |59| 
	.dwpsn	"DSP280x_Sci.c",63,2
        OR        *+XAR4[1],#0x0020     ; |63| 
	.dwpsn	"DSP280x_Sci.c",65,1
        LRETR
        ; return occurs
	.dwattr DW$38, DW_AT_end_file("DSP280x_Sci.c")
	.dwattr DW$38, DW_AT_end_line(0x41)
	.dwattr DW$38, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$38

;* Inlined function references:
;* [  2] SCIx_RxChar
;* [  3] SCIx_TxChar
;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_g_u16_sci_on
	.global	_vsprintf
	.global	_SciaRegs
	.global	_PieCtrlRegs

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

DW$T$48	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$48, DW_AT_language(DW_LANG_C)

DW$T$50	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$50, DW_AT_language(DW_LANG_C)
DW$40	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$49)
	.dwendtag DW$T$50


DW$T$52	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$52, DW_AT_language(DW_LANG_C)
DW$41	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$51)
	.dwendtag DW$T$52


DW$T$54	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$54, DW_AT_language(DW_LANG_C)
DW$42	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$51)
DW$43	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$T$54


DW$T$55	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$55, DW_AT_language(DW_LANG_C)
DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x01)
DW$T$56	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$56, DW_AT_address_class(0x16)

DW$T$61	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$61, DW_AT_language(DW_LANG_C)
DW$44	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$51)
DW$45	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$59)
DW$46	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$60)
	.dwendtag DW$T$61

DW$47	.dwtag  DW_TAG_far_type
	.dwattr DW$47, DW_AT_type(*DW$T$19)
DW$T$67	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$67, DW_AT_type(*DW$47)
DW$48	.dwtag  DW_TAG_far_type
	.dwattr DW$48, DW_AT_type(*DW$T$28)
DW$T$71	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$71, DW_AT_type(*DW$48)
DW$49	.dwtag  DW_TAG_far_type
	.dwattr DW$49, DW_AT_type(*DW$T$47)
DW$T$84	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$84, DW_AT_type(*DW$49)
DW$T$85	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$84)
	.dwattr DW$T$85, DW_AT_address_class(0x16)
DW$T$49	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$49, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$49, DW_AT_byte_size(0x01)
DW$T$51	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$49)
	.dwattr DW$T$51, DW_AT_address_class(0x16)
DW$T$60	.dwtag  DW_TAG_typedef, DW_AT_name("va_list"), DW_AT_type(*DW$T$51)
	.dwattr DW$T$60, DW_AT_language(DW_LANG_C)
DW$50	.dwtag  DW_TAG_far_type
	.dwattr DW$50, DW_AT_type(*DW$T$49)
DW$T$58	.dwtag  DW_TAG_const_type
	.dwattr DW$T$58, DW_AT_type(*DW$50)
DW$T$59	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$58)
	.dwattr DW$T$59, DW_AT_address_class(0x16)

DW$T$86	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$49)
	.dwattr DW$T$86, DW_AT_language(DW_LANG_C)

DW$T$87	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$49)
	.dwattr DW$T$87, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$87, DW_AT_byte_size(0x80)
DW$51	.dwtag  DW_TAG_subrange_type
	.dwattr DW$51, DW_AT_upper_bound(0x7f)
	.dwendtag DW$T$87

DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)

DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$28, DW_AT_name("PIE_CTRL_REGS")
	.dwattr DW$T$28, DW_AT_byte_size(0x1a)
DW$52	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$52, DW_AT_name("PIECTRL"), DW_AT_symbol_name("_PIECTRL")
	.dwattr DW$52, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$52, DW_AT_accessibility(DW_ACCESS_public)
DW$53	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$53, DW_AT_name("PIEACK"), DW_AT_symbol_name("_PIEACK")
	.dwattr DW$53, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$53, DW_AT_accessibility(DW_ACCESS_public)
DW$54	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$54, DW_AT_name("PIEIER1"), DW_AT_symbol_name("_PIEIER1")
	.dwattr DW$54, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$54, DW_AT_accessibility(DW_ACCESS_public)
DW$55	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$55, DW_AT_name("PIEIFR1"), DW_AT_symbol_name("_PIEIFR1")
	.dwattr DW$55, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$55, DW_AT_accessibility(DW_ACCESS_public)
DW$56	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$56, DW_AT_name("PIEIER2"), DW_AT_symbol_name("_PIEIER2")
	.dwattr DW$56, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$56, DW_AT_accessibility(DW_ACCESS_public)
DW$57	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$57, DW_AT_name("PIEIFR2"), DW_AT_symbol_name("_PIEIFR2")
	.dwattr DW$57, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$57, DW_AT_accessibility(DW_ACCESS_public)
DW$58	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$58, DW_AT_name("PIEIER3"), DW_AT_symbol_name("_PIEIER3")
	.dwattr DW$58, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$58, DW_AT_accessibility(DW_ACCESS_public)
DW$59	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$59, DW_AT_name("PIEIFR3"), DW_AT_symbol_name("_PIEIFR3")
	.dwattr DW$59, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$59, DW_AT_accessibility(DW_ACCESS_public)
DW$60	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$60, DW_AT_name("PIEIER4"), DW_AT_symbol_name("_PIEIER4")
	.dwattr DW$60, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$60, DW_AT_accessibility(DW_ACCESS_public)
DW$61	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$61, DW_AT_name("PIEIFR4"), DW_AT_symbol_name("_PIEIFR4")
	.dwattr DW$61, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$61, DW_AT_accessibility(DW_ACCESS_public)
DW$62	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$62, DW_AT_name("PIEIER5"), DW_AT_symbol_name("_PIEIER5")
	.dwattr DW$62, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$62, DW_AT_accessibility(DW_ACCESS_public)
DW$63	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$63, DW_AT_name("PIEIFR5"), DW_AT_symbol_name("_PIEIFR5")
	.dwattr DW$63, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$63, DW_AT_accessibility(DW_ACCESS_public)
DW$64	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$64, DW_AT_name("PIEIER6"), DW_AT_symbol_name("_PIEIER6")
	.dwattr DW$64, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$64, DW_AT_accessibility(DW_ACCESS_public)
DW$65	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$65, DW_AT_name("PIEIFR6"), DW_AT_symbol_name("_PIEIFR6")
	.dwattr DW$65, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$65, DW_AT_accessibility(DW_ACCESS_public)
DW$66	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$66, DW_AT_name("PIEIER7"), DW_AT_symbol_name("_PIEIER7")
	.dwattr DW$66, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$66, DW_AT_accessibility(DW_ACCESS_public)
DW$67	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$67, DW_AT_name("PIEIFR7"), DW_AT_symbol_name("_PIEIFR7")
	.dwattr DW$67, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$67, DW_AT_accessibility(DW_ACCESS_public)
DW$68	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$68, DW_AT_name("PIEIER8"), DW_AT_symbol_name("_PIEIER8")
	.dwattr DW$68, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$68, DW_AT_accessibility(DW_ACCESS_public)
DW$69	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$69, DW_AT_name("PIEIFR8"), DW_AT_symbol_name("_PIEIFR8")
	.dwattr DW$69, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$69, DW_AT_accessibility(DW_ACCESS_public)
DW$70	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$70, DW_AT_name("PIEIER9"), DW_AT_symbol_name("_PIEIER9")
	.dwattr DW$70, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$70, DW_AT_accessibility(DW_ACCESS_public)
DW$71	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$71, DW_AT_name("PIEIFR9"), DW_AT_symbol_name("_PIEIFR9")
	.dwattr DW$71, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$71, DW_AT_accessibility(DW_ACCESS_public)
DW$72	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$72, DW_AT_name("PIEIER10"), DW_AT_symbol_name("_PIEIER10")
	.dwattr DW$72, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$72, DW_AT_accessibility(DW_ACCESS_public)
DW$73	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$73, DW_AT_name("PIEIFR10"), DW_AT_symbol_name("_PIEIFR10")
	.dwattr DW$73, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$73, DW_AT_accessibility(DW_ACCESS_public)
DW$74	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$74, DW_AT_name("PIEIER11"), DW_AT_symbol_name("_PIEIER11")
	.dwattr DW$74, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$74, DW_AT_accessibility(DW_ACCESS_public)
DW$75	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$75, DW_AT_name("PIEIFR11"), DW_AT_symbol_name("_PIEIFR11")
	.dwattr DW$75, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$75, DW_AT_accessibility(DW_ACCESS_public)
DW$76	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$76, DW_AT_name("PIEIER12"), DW_AT_symbol_name("_PIEIER12")
	.dwattr DW$76, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$76, DW_AT_accessibility(DW_ACCESS_public)
DW$77	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$77, DW_AT_name("PIEIFR12"), DW_AT_symbol_name("_PIEIFR12")
	.dwattr DW$77, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr DW$77, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$28


DW$T$47	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$47, DW_AT_name("SCI_REGS")
	.dwattr DW$T$47, DW_AT_byte_size(0x10)
DW$78	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$30)
	.dwattr DW$78, DW_AT_name("SCICCR"), DW_AT_symbol_name("_SCICCR")
	.dwattr DW$78, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$78, DW_AT_accessibility(DW_ACCESS_public)
DW$79	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$79, DW_AT_name("SCICTL1"), DW_AT_symbol_name("_SCICTL1")
	.dwattr DW$79, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$79, DW_AT_accessibility(DW_ACCESS_public)
DW$80	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$80, DW_AT_name("SCIHBAUD"), DW_AT_symbol_name("_SCIHBAUD")
	.dwattr DW$80, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$80, DW_AT_accessibility(DW_ACCESS_public)
DW$81	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$81, DW_AT_name("SCILBAUD"), DW_AT_symbol_name("_SCILBAUD")
	.dwattr DW$81, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$81, DW_AT_accessibility(DW_ACCESS_public)
DW$82	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$82, DW_AT_name("SCICTL2"), DW_AT_symbol_name("_SCICTL2")
	.dwattr DW$82, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$82, DW_AT_accessibility(DW_ACCESS_public)
DW$83	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$83, DW_AT_name("SCIRXST"), DW_AT_symbol_name("_SCIRXST")
	.dwattr DW$83, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$83, DW_AT_accessibility(DW_ACCESS_public)
DW$84	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$84, DW_AT_name("SCIRXEMU"), DW_AT_symbol_name("_SCIRXEMU")
	.dwattr DW$84, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$84, DW_AT_accessibility(DW_ACCESS_public)
DW$85	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$38)
	.dwattr DW$85, DW_AT_name("SCIRXBUF"), DW_AT_symbol_name("_SCIRXBUF")
	.dwattr DW$85, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$85, DW_AT_accessibility(DW_ACCESS_public)
DW$86	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$86, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$86, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$86, DW_AT_accessibility(DW_ACCESS_public)
DW$87	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$87, DW_AT_name("SCITXBUF"), DW_AT_symbol_name("_SCITXBUF")
	.dwattr DW$87, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$87, DW_AT_accessibility(DW_ACCESS_public)
DW$88	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$40)
	.dwattr DW$88, DW_AT_name("SCIFFTX"), DW_AT_symbol_name("_SCIFFTX")
	.dwattr DW$88, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$88, DW_AT_accessibility(DW_ACCESS_public)
DW$89	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$42)
	.dwattr DW$89, DW_AT_name("SCIFFRX"), DW_AT_symbol_name("_SCIFFRX")
	.dwattr DW$89, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$89, DW_AT_accessibility(DW_ACCESS_public)
DW$90	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$44)
	.dwattr DW$90, DW_AT_name("SCIFFCT"), DW_AT_symbol_name("_SCIFFCT")
	.dwattr DW$90, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$90, DW_AT_accessibility(DW_ACCESS_public)
DW$91	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$91, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$91, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$91, DW_AT_accessibility(DW_ACCESS_public)
DW$92	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$92, DW_AT_name("rsvd3"), DW_AT_symbol_name("_rsvd3")
	.dwattr DW$92, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$92, DW_AT_accessibility(DW_ACCESS_public)
DW$93	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$93, DW_AT_name("SCIPRI"), DW_AT_symbol_name("_SCIPRI")
	.dwattr DW$93, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$93, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$47

DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x01)

DW$T$21	.dwtag  DW_TAG_union_type
	.dwattr DW$T$21, DW_AT_name("PIECTRL_REG")
	.dwattr DW$T$21, DW_AT_byte_size(0x01)
DW$94	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$94, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$94, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$94, DW_AT_accessibility(DW_ACCESS_public)
DW$95	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$95, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$95, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$95, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$21


DW$T$23	.dwtag  DW_TAG_union_type
	.dwattr DW$T$23, DW_AT_name("PIEACK_REG")
	.dwattr DW$T$23, DW_AT_byte_size(0x01)
DW$96	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$96, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$96, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$96, DW_AT_accessibility(DW_ACCESS_public)
DW$97	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$97, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$97, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$97, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$23


DW$T$25	.dwtag  DW_TAG_union_type
	.dwattr DW$T$25, DW_AT_name("PIEIER_REG")
	.dwattr DW$T$25, DW_AT_byte_size(0x01)
DW$98	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$98, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$98, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$98, DW_AT_accessibility(DW_ACCESS_public)
DW$99	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$99, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$99, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$99, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$25


DW$T$27	.dwtag  DW_TAG_union_type
	.dwattr DW$T$27, DW_AT_name("PIEIFR_REG")
	.dwattr DW$T$27, DW_AT_byte_size(0x01)
DW$100	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$100, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$100, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$100, DW_AT_accessibility(DW_ACCESS_public)
DW$101	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$101, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$101, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$101, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$27


DW$T$30	.dwtag  DW_TAG_union_type
	.dwattr DW$T$30, DW_AT_name("SCICCR_REG")
	.dwattr DW$T$30, DW_AT_byte_size(0x01)
DW$102	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$102, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$102, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$102, DW_AT_accessibility(DW_ACCESS_public)
DW$103	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$103, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$103, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$103, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$30


DW$T$32	.dwtag  DW_TAG_union_type
	.dwattr DW$T$32, DW_AT_name("SCICTL1_REG")
	.dwattr DW$T$32, DW_AT_byte_size(0x01)
DW$104	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$104, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$104, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$104, DW_AT_accessibility(DW_ACCESS_public)
DW$105	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$105, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$105, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$105, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$32


DW$T$34	.dwtag  DW_TAG_union_type
	.dwattr DW$T$34, DW_AT_name("SCICTL2_REG")
	.dwattr DW$T$34, DW_AT_byte_size(0x01)
DW$106	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$106, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$106, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$106, DW_AT_accessibility(DW_ACCESS_public)
DW$107	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$33)
	.dwattr DW$107, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$107, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$107, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$34


DW$T$36	.dwtag  DW_TAG_union_type
	.dwattr DW$T$36, DW_AT_name("SCIRXST_REG")
	.dwattr DW$T$36, DW_AT_byte_size(0x01)
DW$108	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$108, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$108, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$108, DW_AT_accessibility(DW_ACCESS_public)
DW$109	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$35)
	.dwattr DW$109, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$109, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$109, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$36


DW$T$38	.dwtag  DW_TAG_union_type
	.dwattr DW$T$38, DW_AT_name("SCIRXBUF_REG")
	.dwattr DW$T$38, DW_AT_byte_size(0x01)
DW$110	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$110, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$110, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$110, DW_AT_accessibility(DW_ACCESS_public)
DW$111	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$37)
	.dwattr DW$111, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$111, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$111, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$38


DW$T$40	.dwtag  DW_TAG_union_type
	.dwattr DW$T$40, DW_AT_name("SCIFFTX_REG")
	.dwattr DW$T$40, DW_AT_byte_size(0x01)
DW$112	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$112, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$112, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$112, DW_AT_accessibility(DW_ACCESS_public)
DW$113	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$113, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$113, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$113, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$40


DW$T$42	.dwtag  DW_TAG_union_type
	.dwattr DW$T$42, DW_AT_name("SCIFFRX_REG")
	.dwattr DW$T$42, DW_AT_byte_size(0x01)
DW$114	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$114, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$114, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$114, DW_AT_accessibility(DW_ACCESS_public)
DW$115	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$115, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$115, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$115, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$42


DW$T$44	.dwtag  DW_TAG_union_type
	.dwattr DW$T$44, DW_AT_name("SCIFFCT_REG")
	.dwattr DW$T$44, DW_AT_byte_size(0x01)
DW$116	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$116, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$116, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$116, DW_AT_accessibility(DW_ACCESS_public)
DW$117	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$43)
	.dwattr DW$117, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$117, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$117, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$44


DW$T$46	.dwtag  DW_TAG_union_type
	.dwattr DW$T$46, DW_AT_name("SCIPRI_REG")
	.dwattr DW$T$46, DW_AT_byte_size(0x01)
DW$118	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$118, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$118, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$118, DW_AT_accessibility(DW_ACCESS_public)
DW$119	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$119, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$119, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$119, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$46


DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$20, DW_AT_name("PIECTRL_BITS")
	.dwattr DW$T$20, DW_AT_byte_size(0x01)
DW$120	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$120, DW_AT_name("ENPIE"), DW_AT_symbol_name("_ENPIE")
	.dwattr DW$120, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$120, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$120, DW_AT_accessibility(DW_ACCESS_public)
DW$121	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$121, DW_AT_name("PIEVECT"), DW_AT_symbol_name("_PIEVECT")
	.dwattr DW$121, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0f)
	.dwattr DW$121, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$121, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20


DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$22, DW_AT_name("PIEACK_BITS")
	.dwattr DW$T$22, DW_AT_byte_size(0x01)
DW$122	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$122, DW_AT_name("ACK1"), DW_AT_symbol_name("_ACK1")
	.dwattr DW$122, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$122, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$122, DW_AT_accessibility(DW_ACCESS_public)
DW$123	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$123, DW_AT_name("ACK2"), DW_AT_symbol_name("_ACK2")
	.dwattr DW$123, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$123, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$123, DW_AT_accessibility(DW_ACCESS_public)
DW$124	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$124, DW_AT_name("ACK3"), DW_AT_symbol_name("_ACK3")
	.dwattr DW$124, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$124, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$124, DW_AT_accessibility(DW_ACCESS_public)
DW$125	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$125, DW_AT_name("ACK4"), DW_AT_symbol_name("_ACK4")
	.dwattr DW$125, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$125, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$125, DW_AT_accessibility(DW_ACCESS_public)
DW$126	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$126, DW_AT_name("ACK5"), DW_AT_symbol_name("_ACK5")
	.dwattr DW$126, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$126, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$126, DW_AT_accessibility(DW_ACCESS_public)
DW$127	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$127, DW_AT_name("ACK6"), DW_AT_symbol_name("_ACK6")
	.dwattr DW$127, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$127, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$127, DW_AT_accessibility(DW_ACCESS_public)
DW$128	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$128, DW_AT_name("ACK7"), DW_AT_symbol_name("_ACK7")
	.dwattr DW$128, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$128, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$128, DW_AT_accessibility(DW_ACCESS_public)
DW$129	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$129, DW_AT_name("ACK8"), DW_AT_symbol_name("_ACK8")
	.dwattr DW$129, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$129, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$129, DW_AT_accessibility(DW_ACCESS_public)
DW$130	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$130, DW_AT_name("ACK9"), DW_AT_symbol_name("_ACK9")
	.dwattr DW$130, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$130, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$130, DW_AT_accessibility(DW_ACCESS_public)
DW$131	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$131, DW_AT_name("ACK10"), DW_AT_symbol_name("_ACK10")
	.dwattr DW$131, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$131, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$131, DW_AT_accessibility(DW_ACCESS_public)
DW$132	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$132, DW_AT_name("ACK11"), DW_AT_symbol_name("_ACK11")
	.dwattr DW$132, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$132, DW_AT_accessibility(DW_ACCESS_public)
DW$133	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$133, DW_AT_name("ACK12"), DW_AT_symbol_name("_ACK12")
	.dwattr DW$133, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$133, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$133, DW_AT_accessibility(DW_ACCESS_public)
DW$134	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$134, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$134, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$134, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$134, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$22


DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$24, DW_AT_name("PIEIER_BITS")
	.dwattr DW$T$24, DW_AT_byte_size(0x01)
DW$135	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$135, DW_AT_name("INTx1"), DW_AT_symbol_name("_INTx1")
	.dwattr DW$135, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$135, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$135, DW_AT_accessibility(DW_ACCESS_public)
DW$136	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$136, DW_AT_name("INTx2"), DW_AT_symbol_name("_INTx2")
	.dwattr DW$136, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$136, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$136, DW_AT_accessibility(DW_ACCESS_public)
DW$137	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$137, DW_AT_name("INTx3"), DW_AT_symbol_name("_INTx3")
	.dwattr DW$137, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$137, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$137, DW_AT_accessibility(DW_ACCESS_public)
DW$138	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$138, DW_AT_name("INTx4"), DW_AT_symbol_name("_INTx4")
	.dwattr DW$138, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$138, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$138, DW_AT_accessibility(DW_ACCESS_public)
DW$139	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$139, DW_AT_name("INTx5"), DW_AT_symbol_name("_INTx5")
	.dwattr DW$139, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$139, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$139, DW_AT_accessibility(DW_ACCESS_public)
DW$140	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$140, DW_AT_name("INTx6"), DW_AT_symbol_name("_INTx6")
	.dwattr DW$140, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$140, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$140, DW_AT_accessibility(DW_ACCESS_public)
DW$141	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$141, DW_AT_name("INTx7"), DW_AT_symbol_name("_INTx7")
	.dwattr DW$141, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$141, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$141, DW_AT_accessibility(DW_ACCESS_public)
DW$142	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$142, DW_AT_name("INTx8"), DW_AT_symbol_name("_INTx8")
	.dwattr DW$142, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$142, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$142, DW_AT_accessibility(DW_ACCESS_public)
DW$143	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$143, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$143, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$143, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$143, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$24


DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$26, DW_AT_name("PIEIFR_BITS")
	.dwattr DW$T$26, DW_AT_byte_size(0x01)
DW$144	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$144, DW_AT_name("INTx1"), DW_AT_symbol_name("_INTx1")
	.dwattr DW$144, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$144, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$144, DW_AT_accessibility(DW_ACCESS_public)
DW$145	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$145, DW_AT_name("INTx2"), DW_AT_symbol_name("_INTx2")
	.dwattr DW$145, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$145, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$145, DW_AT_accessibility(DW_ACCESS_public)
DW$146	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$146, DW_AT_name("INTx3"), DW_AT_symbol_name("_INTx3")
	.dwattr DW$146, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$146, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$146, DW_AT_accessibility(DW_ACCESS_public)
DW$147	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$147, DW_AT_name("INTx4"), DW_AT_symbol_name("_INTx4")
	.dwattr DW$147, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$147, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$147, DW_AT_accessibility(DW_ACCESS_public)
DW$148	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$148, DW_AT_name("INTx5"), DW_AT_symbol_name("_INTx5")
	.dwattr DW$148, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$148, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$148, DW_AT_accessibility(DW_ACCESS_public)
DW$149	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$149, DW_AT_name("INTx6"), DW_AT_symbol_name("_INTx6")
	.dwattr DW$149, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$149, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$149, DW_AT_accessibility(DW_ACCESS_public)
DW$150	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$150, DW_AT_name("INTx7"), DW_AT_symbol_name("_INTx7")
	.dwattr DW$150, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$150, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$150, DW_AT_accessibility(DW_ACCESS_public)
DW$151	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$151, DW_AT_name("INTx8"), DW_AT_symbol_name("_INTx8")
	.dwattr DW$151, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$151, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$151, DW_AT_accessibility(DW_ACCESS_public)
DW$152	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$152, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$152, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$152, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$152, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$26


DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$29, DW_AT_name("SCICCR_BITS")
	.dwattr DW$T$29, DW_AT_byte_size(0x01)
DW$153	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$153, DW_AT_name("SCICHAR"), DW_AT_symbol_name("_SCICHAR")
	.dwattr DW$153, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x03)
	.dwattr DW$153, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$153, DW_AT_accessibility(DW_ACCESS_public)
DW$154	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$154, DW_AT_name("ADDRIDLE_MODE"), DW_AT_symbol_name("_ADDRIDLE_MODE")
	.dwattr DW$154, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$154, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$154, DW_AT_accessibility(DW_ACCESS_public)
DW$155	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$155, DW_AT_name("LOOPBKENA"), DW_AT_symbol_name("_LOOPBKENA")
	.dwattr DW$155, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$155, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$155, DW_AT_accessibility(DW_ACCESS_public)
DW$156	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$156, DW_AT_name("PARITYENA"), DW_AT_symbol_name("_PARITYENA")
	.dwattr DW$156, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$156, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$156, DW_AT_accessibility(DW_ACCESS_public)
DW$157	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$157, DW_AT_name("PARITY"), DW_AT_symbol_name("_PARITY")
	.dwattr DW$157, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$157, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$157, DW_AT_accessibility(DW_ACCESS_public)
DW$158	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$158, DW_AT_name("STOPBITS"), DW_AT_symbol_name("_STOPBITS")
	.dwattr DW$158, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$158, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$158, DW_AT_accessibility(DW_ACCESS_public)
DW$159	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$159, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$159, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$159, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$159, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$29


DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$31, DW_AT_name("SCICTL1_BITS")
	.dwattr DW$T$31, DW_AT_byte_size(0x01)
DW$160	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$160, DW_AT_name("RXENA"), DW_AT_symbol_name("_RXENA")
	.dwattr DW$160, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$160, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$160, DW_AT_accessibility(DW_ACCESS_public)
DW$161	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$161, DW_AT_name("TXENA"), DW_AT_symbol_name("_TXENA")
	.dwattr DW$161, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$161, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$161, DW_AT_accessibility(DW_ACCESS_public)
DW$162	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$162, DW_AT_name("SLEEP"), DW_AT_symbol_name("_SLEEP")
	.dwattr DW$162, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$162, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$162, DW_AT_accessibility(DW_ACCESS_public)
DW$163	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$163, DW_AT_name("TXWAKE"), DW_AT_symbol_name("_TXWAKE")
	.dwattr DW$163, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$163, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$163, DW_AT_accessibility(DW_ACCESS_public)
DW$164	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$164, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$164, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$164, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$164, DW_AT_accessibility(DW_ACCESS_public)
DW$165	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$165, DW_AT_name("SWRESET"), DW_AT_symbol_name("_SWRESET")
	.dwattr DW$165, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$165, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$165, DW_AT_accessibility(DW_ACCESS_public)
DW$166	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$166, DW_AT_name("RXERRINTENA"), DW_AT_symbol_name("_RXERRINTENA")
	.dwattr DW$166, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$166, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$166, DW_AT_accessibility(DW_ACCESS_public)
DW$167	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$167, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$167, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x09)
	.dwattr DW$167, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$167, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$31


DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$33, DW_AT_name("SCICTL2_BITS")
	.dwattr DW$T$33, DW_AT_byte_size(0x01)
DW$168	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$168, DW_AT_name("TXINTENA"), DW_AT_symbol_name("_TXINTENA")
	.dwattr DW$168, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$168, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$168, DW_AT_accessibility(DW_ACCESS_public)
DW$169	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$169, DW_AT_name("RXBKINTENA"), DW_AT_symbol_name("_RXBKINTENA")
	.dwattr DW$169, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$169, DW_AT_accessibility(DW_ACCESS_public)
DW$170	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$170, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$170, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x04)
	.dwattr DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$170, DW_AT_accessibility(DW_ACCESS_public)
DW$171	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$171, DW_AT_name("TXEMPTY"), DW_AT_symbol_name("_TXEMPTY")
	.dwattr DW$171, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$171, DW_AT_accessibility(DW_ACCESS_public)
DW$172	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$172, DW_AT_name("TXRDY"), DW_AT_symbol_name("_TXRDY")
	.dwattr DW$172, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$172, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$172, DW_AT_accessibility(DW_ACCESS_public)
DW$173	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$173, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$173, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$173, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$33


DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$35, DW_AT_name("SCIRXST_BITS")
	.dwattr DW$T$35, DW_AT_byte_size(0x01)
DW$174	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$174, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$174, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$174, DW_AT_accessibility(DW_ACCESS_public)
DW$175	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$175, DW_AT_name("RXWAKE"), DW_AT_symbol_name("_RXWAKE")
	.dwattr DW$175, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$175, DW_AT_accessibility(DW_ACCESS_public)
DW$176	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$176, DW_AT_name("PE"), DW_AT_symbol_name("_PE")
	.dwattr DW$176, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$176, DW_AT_accessibility(DW_ACCESS_public)
DW$177	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$177, DW_AT_name("OE"), DW_AT_symbol_name("_OE")
	.dwattr DW$177, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$177, DW_AT_accessibility(DW_ACCESS_public)
DW$178	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$178, DW_AT_name("FE"), DW_AT_symbol_name("_FE")
	.dwattr DW$178, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$178, DW_AT_accessibility(DW_ACCESS_public)
DW$179	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$179, DW_AT_name("BRKDT"), DW_AT_symbol_name("_BRKDT")
	.dwattr DW$179, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$179, DW_AT_accessibility(DW_ACCESS_public)
DW$180	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$180, DW_AT_name("RXRDY"), DW_AT_symbol_name("_RXRDY")
	.dwattr DW$180, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$180, DW_AT_accessibility(DW_ACCESS_public)
DW$181	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$181, DW_AT_name("RXERROR"), DW_AT_symbol_name("_RXERROR")
	.dwattr DW$181, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$181, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$35


DW$T$37	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$37, DW_AT_name("SCIRXBUF_BITS")
	.dwattr DW$T$37, DW_AT_byte_size(0x01)
DW$182	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$182, DW_AT_name("RXDT"), DW_AT_symbol_name("_RXDT")
	.dwattr DW$182, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x08)
	.dwattr DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$182, DW_AT_accessibility(DW_ACCESS_public)
DW$183	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$183, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$183, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x06)
	.dwattr DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$183, DW_AT_accessibility(DW_ACCESS_public)
DW$184	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$184, DW_AT_name("SCIFFPE"), DW_AT_symbol_name("_SCIFFPE")
	.dwattr DW$184, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$184, DW_AT_accessibility(DW_ACCESS_public)
DW$185	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$185, DW_AT_name("SCIFFFE"), DW_AT_symbol_name("_SCIFFFE")
	.dwattr DW$185, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$185, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$37


DW$T$39	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$39, DW_AT_name("SCIFFTX_BITS")
	.dwattr DW$T$39, DW_AT_byte_size(0x01)
DW$186	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$186, DW_AT_name("TXFFIL"), DW_AT_symbol_name("_TXFFIL")
	.dwattr DW$186, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x05)
	.dwattr DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$186, DW_AT_accessibility(DW_ACCESS_public)
DW$187	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$187, DW_AT_name("TXFFIENA"), DW_AT_symbol_name("_TXFFIENA")
	.dwattr DW$187, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$187, DW_AT_accessibility(DW_ACCESS_public)
DW$188	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$188, DW_AT_name("TXFFINTCLR"), DW_AT_symbol_name("_TXFFINTCLR")
	.dwattr DW$188, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$188, DW_AT_accessibility(DW_ACCESS_public)
DW$189	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$189, DW_AT_name("TXFFINT"), DW_AT_symbol_name("_TXFFINT")
	.dwattr DW$189, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$189, DW_AT_accessibility(DW_ACCESS_public)
DW$190	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$190, DW_AT_name("TXFFST"), DW_AT_symbol_name("_TXFFST")
	.dwattr DW$190, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x05)
	.dwattr DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$190, DW_AT_accessibility(DW_ACCESS_public)
DW$191	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$191, DW_AT_name("TXFIFOXRESET"), DW_AT_symbol_name("_TXFIFOXRESET")
	.dwattr DW$191, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$191, DW_AT_accessibility(DW_ACCESS_public)
DW$192	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$192, DW_AT_name("SCIFFENA"), DW_AT_symbol_name("_SCIFFENA")
	.dwattr DW$192, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$192, DW_AT_accessibility(DW_ACCESS_public)
DW$193	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$193, DW_AT_name("SCIRST"), DW_AT_symbol_name("_SCIRST")
	.dwattr DW$193, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$193, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$193, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$39


DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$41, DW_AT_name("SCIFFRX_BITS")
	.dwattr DW$T$41, DW_AT_byte_size(0x01)
DW$194	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$194, DW_AT_name("RXFFIL"), DW_AT_symbol_name("_RXFFIL")
	.dwattr DW$194, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x05)
	.dwattr DW$194, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$194, DW_AT_accessibility(DW_ACCESS_public)
DW$195	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$195, DW_AT_name("RXFFIENA"), DW_AT_symbol_name("_RXFFIENA")
	.dwattr DW$195, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$195, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$195, DW_AT_accessibility(DW_ACCESS_public)
DW$196	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$196, DW_AT_name("RXFFINTCLR"), DW_AT_symbol_name("_RXFFINTCLR")
	.dwattr DW$196, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$196, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$196, DW_AT_accessibility(DW_ACCESS_public)
DW$197	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$197, DW_AT_name("RXFFINT"), DW_AT_symbol_name("_RXFFINT")
	.dwattr DW$197, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$197, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$197, DW_AT_accessibility(DW_ACCESS_public)
DW$198	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$198, DW_AT_name("RXFFST"), DW_AT_symbol_name("_RXFFST")
	.dwattr DW$198, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x05)
	.dwattr DW$198, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$198, DW_AT_accessibility(DW_ACCESS_public)
DW$199	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$199, DW_AT_name("RXFIFORESET"), DW_AT_symbol_name("_RXFIFORESET")
	.dwattr DW$199, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$199, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$199, DW_AT_accessibility(DW_ACCESS_public)
DW$200	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$200, DW_AT_name("RXFFOVRCLR"), DW_AT_symbol_name("_RXFFOVRCLR")
	.dwattr DW$200, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$200, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$200, DW_AT_accessibility(DW_ACCESS_public)
DW$201	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$201, DW_AT_name("RXFFOVF"), DW_AT_symbol_name("_RXFFOVF")
	.dwattr DW$201, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$201, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$201, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$41


DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$43, DW_AT_name("SCIFFCT_BITS")
	.dwattr DW$T$43, DW_AT_byte_size(0x01)
DW$202	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$202, DW_AT_name("FFTXDLY"), DW_AT_symbol_name("_FFTXDLY")
	.dwattr DW$202, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x08)
	.dwattr DW$202, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$202, DW_AT_accessibility(DW_ACCESS_public)
DW$203	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$203, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$203, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x05)
	.dwattr DW$203, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$203, DW_AT_accessibility(DW_ACCESS_public)
DW$204	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$204, DW_AT_name("CDC"), DW_AT_symbol_name("_CDC")
	.dwattr DW$204, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$204, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$204, DW_AT_accessibility(DW_ACCESS_public)
DW$205	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$205, DW_AT_name("ABDCLR"), DW_AT_symbol_name("_ABDCLR")
	.dwattr DW$205, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$205, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$205, DW_AT_accessibility(DW_ACCESS_public)
DW$206	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$206, DW_AT_name("ABD"), DW_AT_symbol_name("_ABD")
	.dwattr DW$206, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$206, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$206, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$43


DW$T$45	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$45, DW_AT_name("SCIPRI_BITS")
	.dwattr DW$T$45, DW_AT_byte_size(0x01)
DW$207	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$207, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$207, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x03)
	.dwattr DW$207, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$207, DW_AT_accessibility(DW_ACCESS_public)
DW$208	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$208, DW_AT_name("FREE"), DW_AT_symbol_name("_FREE")
	.dwattr DW$208, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$208, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$208, DW_AT_accessibility(DW_ACCESS_public)
DW$209	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$209, DW_AT_name("SOFT"), DW_AT_symbol_name("_SOFT")
	.dwattr DW$209, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$209, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$209, DW_AT_accessibility(DW_ACCESS_public)
DW$210	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$210, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$210, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x03)
	.dwattr DW$210, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$210, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$45


	.dwattr DW$38, DW_AT_external(0x01)
	.dwattr DW$8, DW_AT_external(0x01)
	.dwattr DW$8, DW_AT_type(*DW$T$49)
	.dwattr DW$14, DW_AT_external(0x01)
	.dwattr DW$19, DW_AT_external(0x01)
	.dwattr DW$33, DW_AT_external(0x01)
	.dwattr DW$11, DW_AT_external(0x01)
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

DW$211	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$211, DW_AT_location[DW_OP_reg0]
DW$212	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$212, DW_AT_location[DW_OP_reg1]
DW$213	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$213, DW_AT_location[DW_OP_reg2]
DW$214	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$214, DW_AT_location[DW_OP_reg3]
DW$215	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$215, DW_AT_location[DW_OP_reg4]
DW$216	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$216, DW_AT_location[DW_OP_reg5]
DW$217	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$217, DW_AT_location[DW_OP_reg6]
DW$218	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$218, DW_AT_location[DW_OP_reg7]
DW$219	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$219, DW_AT_location[DW_OP_reg8]
DW$220	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$220, DW_AT_location[DW_OP_reg9]
DW$221	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$221, DW_AT_location[DW_OP_reg10]
DW$222	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$222, DW_AT_location[DW_OP_reg11]
DW$223	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$223, DW_AT_location[DW_OP_reg12]
DW$224	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$224, DW_AT_location[DW_OP_reg13]
DW$225	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$225, DW_AT_location[DW_OP_reg14]
DW$226	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$226, DW_AT_location[DW_OP_reg15]
DW$227	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$227, DW_AT_location[DW_OP_reg16]
DW$228	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$228, DW_AT_location[DW_OP_reg17]
DW$229	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$229, DW_AT_location[DW_OP_reg18]
DW$230	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$230, DW_AT_location[DW_OP_reg19]
DW$231	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$231, DW_AT_location[DW_OP_reg20]
DW$232	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$232, DW_AT_location[DW_OP_reg21]
DW$233	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$233, DW_AT_location[DW_OP_reg22]
DW$234	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$234, DW_AT_location[DW_OP_reg23]
DW$235	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$235, DW_AT_location[DW_OP_reg24]
DW$236	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$236, DW_AT_location[DW_OP_reg25]
DW$237	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$237, DW_AT_location[DW_OP_reg26]
DW$238	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$238, DW_AT_location[DW_OP_reg27]
DW$239	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$239, DW_AT_location[DW_OP_reg28]
DW$240	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$240, DW_AT_location[DW_OP_reg29]
DW$241	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$241, DW_AT_location[DW_OP_reg30]
DW$242	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$242, DW_AT_location[DW_OP_reg31]
DW$243	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$243, DW_AT_location[DW_OP_regx 0x20]
DW$244	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$244, DW_AT_location[DW_OP_regx 0x21]
DW$245	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$245, DW_AT_location[DW_OP_regx 0x22]
DW$246	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$246, DW_AT_location[DW_OP_regx 0x23]
DW$247	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$247, DW_AT_location[DW_OP_regx 0x24]
DW$248	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$248, DW_AT_location[DW_OP_regx 0x25]
DW$249	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$249, DW_AT_location[DW_OP_regx 0x26]
DW$250	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$250, DW_AT_location[DW_OP_regx 0x27]
DW$251	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$251, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU

