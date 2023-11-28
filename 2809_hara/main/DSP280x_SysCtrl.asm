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
DW$1	.dwtag  DW_TAG_variable, DW_AT_name("FlashRegs"), DW_AT_symbol_name("_FlashRegs")
	.dwattr DW$1, DW_AT_type(*DW$T$87)
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_variable, DW_AT_name("SysCtrlRegs"), DW_AT_symbol_name("_SysCtrlRegs")
	.dwattr DW$2, DW_AT_type(*DW$T$75)
	.dwattr DW$2, DW_AT_declaration(0x01)
	.dwattr DW$2, DW_AT_external(0x01)
;	..\Compiler\bin\opt2000.exe C:\Users\노호진\AppData\Local\Temp\TI25610 C:\Users\노호진\AppData\Local\Temp\TI2564 
;	..\Compiler\bin\ac2000.exe --keep_unneeded_types -D_INLINE -DLARGE_MODEL -I..\include --version=28 --keep_unneeded_types --mem_model:code=flat --mem_model:data=large -m --i_output_file C:\Users\노호진\AppData\Local\Temp\TI2562 --template_info_file C:\Users\노호진\AppData\Local\Temp\TI2566 --object_file DSP280x_SysCtrl.obj --embed_opts 10 --call_assumptions=0 --mem_model:code=flat --mem_model:data=large --opt_for_speed --opt_level=3 --optimizer_comments --optimizer_interlist --program_level_compile 
	.sect	".text"
	.global	_ServiceDog

DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("ServiceDog"), DW_AT_symbol_name("_ServiceDog")
	.dwattr DW$3, DW_AT_low_pc(_ServiceDog)
	.dwattr DW$3, DW_AT_high_pc(0x00)
	.dwattr DW$3, DW_AT_begin_file("DSP280x_SysCtrl.c")
	.dwattr DW$3, DW_AT_begin_line(0x68)
	.dwattr DW$3, DW_AT_begin_column(0x06)
	.dwpsn	"DSP280x_SysCtrl.c",105,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _ServiceDog                   FR SIZE:   0           *
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
_ServiceDog:
;*** 106	-----------------------    asm(" EALLOW");
;*** 107	-----------------------    SysCtrlRegs.WDKEY = 85u;
;*** 108	-----------------------    SysCtrlRegs.WDKEY = 170u;
;*** 109	-----------------------    asm(" EDIS");
;*** 109	-----------------------    return;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
	.dwpsn	"DSP280x_SysCtrl.c",106,5
 EALLOW
	.dwpsn	"DSP280x_SysCtrl.c",107,5
        MOVW      DP,#_SysCtrlRegs+21
        MOV       @_SysCtrlRegs+21,#85  ; |107| 
	.dwpsn	"DSP280x_SysCtrl.c",108,5
        MOV       @_SysCtrlRegs+21,#170 ; |108| 
	.dwpsn	"DSP280x_SysCtrl.c",109,5
 EDIS
	.dwpsn	"DSP280x_SysCtrl.c",110,1
        SPM       #0
        LRETR
        ; return occurs
	.dwattr DW$3, DW_AT_end_file("DSP280x_SysCtrl.c")
	.dwattr DW$3, DW_AT_end_line(0x6e)
	.dwattr DW$3, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$3

	.sect	".text"
	.global	_DisableDog

DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("DisableDog"), DW_AT_symbol_name("_DisableDog")
	.dwattr DW$4, DW_AT_low_pc(_DisableDog)
	.dwattr DW$4, DW_AT_high_pc(0x00)
	.dwattr DW$4, DW_AT_begin_file("DSP280x_SysCtrl.c")
	.dwattr DW$4, DW_AT_begin_line(0x75)
	.dwattr DW$4, DW_AT_begin_column(0x06)
	.dwpsn	"DSP280x_SysCtrl.c",118,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _DisableDog                   FR SIZE:   0           *
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
_DisableDog:
;*** 119	-----------------------    asm(" EALLOW");
;*** 120	-----------------------    SysCtrlRegs.WDCR = 104u;
;*** 121	-----------------------    asm(" EDIS");
;*** 121	-----------------------    return;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
	.dwpsn	"DSP280x_SysCtrl.c",119,5
 EALLOW
	.dwpsn	"DSP280x_SysCtrl.c",120,5
        MOVW      DP,#_SysCtrlRegs+25
        MOV       @_SysCtrlRegs+25,#104 ; |120| 
	.dwpsn	"DSP280x_SysCtrl.c",121,5
 EDIS
	.dwpsn	"DSP280x_SysCtrl.c",122,1
        SPM       #0
        LRETR
        ; return occurs
	.dwattr DW$4, DW_AT_end_file("DSP280x_SysCtrl.c")
	.dwattr DW$4, DW_AT_end_line(0x7a)
	.dwattr DW$4, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$4

	.sect	".text"
	.global	_InitPll

DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("InitPll"), DW_AT_symbol_name("_InitPll")
	.dwattr DW$5, DW_AT_low_pc(_InitPll)
	.dwattr DW$5, DW_AT_high_pc(0x00)
	.dwattr DW$5, DW_AT_begin_file("DSP280x_SysCtrl.c")
	.dwattr DW$5, DW_AT_begin_line(0x81)
	.dwattr DW$5, DW_AT_begin_column(0x06)
	.dwpsn	"DSP280x_SysCtrl.c",130,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _InitPll                      FR SIZE:   0           *
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
_InitPll:
;*** 134	-----------------------    if ( !(*(&SysCtrlRegs+1L)&0x8u) ) goto g3;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
;* AL    assigned to _val
DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$6, DW_AT_type(*DW$T$19)
	.dwattr DW$6, DW_AT_location[DW_OP_reg0]
;* AR4   assigned to C$1
DW$7	.dwtag  DW_TAG_variable, DW_AT_name("C$1"), DW_AT_symbol_name("C$1")
	.dwattr DW$7, DW_AT_type(*DW$T$74)
	.dwattr DW$7, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _val
DW$8	.dwtag  DW_TAG_variable, DW_AT_name("val"), DW_AT_symbol_name("_val")
	.dwattr DW$8, DW_AT_type(*DW$T$59)
	.dwattr DW$8, DW_AT_location[DW_OP_reg0]
	.dwpsn	"DSP280x_SysCtrl.c",134,4
        MOVW      DP,#_SysCtrlRegs+1
        TBIT      @_SysCtrlRegs+1,#3    ; |134| 
        BF        L1,NTC                ; |134| 
        ; branchcc occurs ; |134| 
;*** 139	-----------------------    asm("        ESTOP0");
	.dwpsn	"DSP280x_SysCtrl.c",139,7
        ESTOP0
L1:    
;***	-----------------------g3:
;*** 144	-----------------------    if ( !(*(&SysCtrlRegs+1L)&2u) ) goto g5;
	.dwpsn	"DSP280x_SysCtrl.c",144,4
        TBIT      @_SysCtrlRegs+1,#1    ; |144| 
        BF        L2,NTC                ; |144| 
        ; branchcc occurs ; |144| 
;*** 146	-----------------------    *(&SysCtrlRegs+1L) &= 0xfffdu;
	.dwpsn	"DSP280x_SysCtrl.c",146,8
        AND       @_SysCtrlRegs+1,#0xfffd ; |146| 
L2:    
;***	-----------------------g5:
;*** 150	-----------------------    C$1 = &SysCtrlRegs;
;*** 150	-----------------------    if ( (((volatile unsigned *)C$1)[17]&0xfu) == val ) goto g9;
	.dwpsn	"DSP280x_SysCtrl.c",150,4
        MOVB      XAR0,#17              ; |150| 
        MOVL      XAR4,#_SysCtrlRegs    ; |150| 
        MOV       AH,*+XAR4[AR0]        ; |150| 
        ANDB      AH,#0x0f              ; |150| 
        CMP       AH,AL                 ; |150| 
        BF        L4,EQ                 ; |150| 
        ; branchcc occurs ; |150| 
;*** 153	-----------------------    asm(" EALLOW");
;*** 155	-----------------------    *((volatile struct _PLLSTS_BITS *)C$1+1L) |= 0x40u;
;*** 156	-----------------------    *(&SysCtrlRegs+17L) = *(&SysCtrlRegs+17L)&0xfff0u|val&0xfu;
;*** 157	-----------------------    asm(" EDIS");
;*** 179	-----------------------    DisableDog();
;***  	-----------------------    #pragma LOOP_FLAGS(4096u)
	.dwpsn	"DSP280x_SysCtrl.c",153,7
 EALLOW
	.dwpsn	"DSP280x_SysCtrl.c",155,7
        OR        *+XAR4[1],#0x0040     ; |155| 
	.dwpsn	"DSP280x_SysCtrl.c",156,7
        AND       AH,@_SysCtrlRegs+17,#0xfff0 ; |156| 
        ANDB      AL,#15                ; |156| 
        OR        AL,AH                 ; |156| 
        MOV       @_SysCtrlRegs+17,AL   ; |156| 
	.dwpsn	"DSP280x_SysCtrl.c",157,7
 EDIS
	.dwpsn	"DSP280x_SysCtrl.c",179,7
        SPM       #0
        LCR       #_DisableDog          ; |179| 
        ; call occurs [#_DisableDog] ; |179| 
L3:    
DW$L$_InitPll$7$B:
;***	-----------------------g7:
;*** 181	-----------------------    if ( !(*(&SysCtrlRegs+1L)&1u) ) goto g7;
	.dwpsn	"DSP280x_SysCtrl.c",181,13
        TBIT      @_SysCtrlRegs+1,#0    ; |181| 
        BF        L3,NTC                ; |181| 
        ; branchcc occurs ; |181| 
DW$L$_InitPll$7$E:
;*** 187	-----------------------    asm(" EALLOW");
;*** 188	-----------------------    *(&SysCtrlRegs+1L) &= 0xffbfu;
;*** 189	-----------------------    asm(" EDIS");
;***	-----------------------g9:
;***  	-----------------------    return;
	.dwpsn	"DSP280x_SysCtrl.c",187,7
 EALLOW
	.dwpsn	"DSP280x_SysCtrl.c",188,7
        AND       @_SysCtrlRegs+1,#0xffbf ; |188| 
	.dwpsn	"DSP280x_SysCtrl.c",189,7
 EDIS
L4:    
	.dwpsn	"DSP280x_SysCtrl.c",191,1
        SPM       #0
        LRETR
        ; return occurs

DW$9	.dwtag  DW_TAG_loop
	.dwattr DW$9, DW_AT_name("C:\Users\노호진\Desktop\2809_MICROMOUSE\2809_hara\main\DSP280x_SysCtrl.asm:L3:1:1701145761")
	.dwattr DW$9, DW_AT_begin_file("DSP280x_SysCtrl.c")
	.dwattr DW$9, DW_AT_begin_line(0xb5)
	.dwattr DW$9, DW_AT_end_line(0xb9)
DW$10	.dwtag  DW_TAG_loop_range
	.dwattr DW$10, DW_AT_low_pc(DW$L$_InitPll$7$B)
	.dwattr DW$10, DW_AT_high_pc(DW$L$_InitPll$7$E)
	.dwendtag DW$9

	.dwattr DW$5, DW_AT_end_file("DSP280x_SysCtrl.c")
	.dwattr DW$5, DW_AT_end_line(0xbf)
	.dwattr DW$5, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$5

	.sect	".text"
	.global	_InitPeripheralClocks

DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("InitPeripheralClocks"), DW_AT_symbol_name("_InitPeripheralClocks")
	.dwattr DW$11, DW_AT_low_pc(_InitPeripheralClocks)
	.dwattr DW$11, DW_AT_high_pc(0x00)
	.dwattr DW$11, DW_AT_begin_file("DSP280x_SysCtrl.c")
	.dwattr DW$11, DW_AT_begin_line(0xcc)
	.dwattr DW$11, DW_AT_begin_column(0x06)
	.dwpsn	"DSP280x_SysCtrl.c",205,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _InitPeripheralClocks         FR SIZE:   0           *
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
_InitPeripheralClocks:
;*** 206	-----------------------    asm(" EALLOW");
;*** 209	-----------------------    SysCtrlRegs.HISPCP.all = 1u;
;*** 210	-----------------------    SysCtrlRegs.LOSPCP.all = 2u;
;*** 213	-----------------------    C$1 = &SysCtrlRegs;
;*** 213	-----------------------    *C$1 = *C$1&0xfffeu|2u;
;*** 222	-----------------------    SysCtrlRegs.PCLKCR0.all = 0u;
;*** 223	-----------------------    SysCtrlRegs.PCLKCR1.all = 0u;
;*** 244	-----------------------    *((volatile struct _PCLKCR0_BITS *)C$1+12L) |= 0x8u;
;*** 245	-----------------------    *(&SysCtrlRegs+12L) |= 0x400u;
;*** 246	-----------------------    *(&SysCtrlRegs+12L) |= 0x100u;
;*** 267	-----------------------    *((volatile struct _PCLKCR1_BITS *)C$1+13L) |= 0x4000u;
;*** 268	-----------------------    *(&SysCtrlRegs+13L) |= 0x8000u;
;*** 270	-----------------------    *(&SysCtrlRegs+13L) |= 1u;
;*** 271	-----------------------    *(&SysCtrlRegs+13L) |= 2u;
;*** 272	-----------------------    *(&SysCtrlRegs+12L) |= 4u;
;*** 274	-----------------------    asm(" EDIS");
;*** 274	-----------------------    return;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
;* AR5   assigned to C$1
DW$12	.dwtag  DW_TAG_variable, DW_AT_name("C$1"), DW_AT_symbol_name("C$1")
	.dwattr DW$12, DW_AT_type(*DW$T$61)
	.dwattr DW$12, DW_AT_location[DW_OP_reg14]
	.dwpsn	"DSP280x_SysCtrl.c",206,4
 EALLOW
	.dwpsn	"DSP280x_SysCtrl.c",209,4
        MOVW      DP,#_SysCtrlRegs+10
        MOV       @_SysCtrlRegs+10,#1   ; |209| 
	.dwpsn	"DSP280x_SysCtrl.c",210,4
        MOV       @_SysCtrlRegs+11,#2   ; |210| 
	.dwpsn	"DSP280x_SysCtrl.c",213,4
        MOVL      XAR5,#_SysCtrlRegs    ; |213| 
        AND       AL,*+XAR5[0],#0xfffe  ; |213| 
        ORB       AL,#0x02              ; |213| 
        MOV       *+XAR5[0],AL          ; |213| 
	.dwpsn	"DSP280x_SysCtrl.c",222,2
        MOV       @_SysCtrlRegs+12,#0   ; |222| 
	.dwpsn	"DSP280x_SysCtrl.c",223,2
        MOV       @_SysCtrlRegs+13,#0   ; |223| 
	.dwpsn	"DSP280x_SysCtrl.c",244,2
        MOVB      ACC,#12
        ADDL      ACC,XAR5
        MOVL      XAR4,ACC              ; |244| 
        OR        *+XAR4[0],#0x0008     ; |244| 
	.dwpsn	"DSP280x_SysCtrl.c",245,2
        OR        @_SysCtrlRegs+12,#0x0400 ; |245| 
	.dwpsn	"DSP280x_SysCtrl.c",246,2
        OR        @_SysCtrlRegs+12,#0x0100 ; |246| 
	.dwpsn	"DSP280x_SysCtrl.c",267,2
        MOVB      ACC,#13
        ADDL      ACC,XAR5
        MOVL      XAR4,ACC              ; |267| 
        OR        *+XAR4[0],#0x4000     ; |267| 
	.dwpsn	"DSP280x_SysCtrl.c",268,2
        OR        @_SysCtrlRegs+13,#0x8000 ; |268| 
	.dwpsn	"DSP280x_SysCtrl.c",270,2
        OR        @_SysCtrlRegs+13,#0x0001 ; |270| 
	.dwpsn	"DSP280x_SysCtrl.c",271,2
        OR        @_SysCtrlRegs+13,#0x0002 ; |271| 
	.dwpsn	"DSP280x_SysCtrl.c",272,2
        OR        @_SysCtrlRegs+12,#0x0004 ; |272| 
	.dwpsn	"DSP280x_SysCtrl.c",274,5
 EDIS
	.dwpsn	"DSP280x_SysCtrl.c",275,1
        SPM       #0
        LRETR
        ; return occurs
	.dwattr DW$11, DW_AT_end_file("DSP280x_SysCtrl.c")
	.dwattr DW$11, DW_AT_end_line(0x113)
	.dwattr DW$11, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$11

	.sect	".text"
	.global	_InitSysCtrl

DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("InitSysCtrl"), DW_AT_symbol_name("_InitSysCtrl")
	.dwattr DW$13, DW_AT_low_pc(_InitSysCtrl)
	.dwattr DW$13, DW_AT_high_pc(0x00)
	.dwattr DW$13, DW_AT_begin_file("DSP280x_SysCtrl.c")
	.dwattr DW$13, DW_AT_begin_line(0x25)
	.dwattr DW$13, DW_AT_begin_column(0x06)
	.dwpsn	"DSP280x_SysCtrl.c",38,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _InitSysCtrl                  FR SIZE:   0           *
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
_InitSysCtrl:
;*** 41	-----------------------    DisableDog();
;*** 44	-----------------------    InitPll(10u);
;*** 47	-----------------------    InitPeripheralClocks();
;*** 47	-----------------------    return;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
	.dwpsn	"DSP280x_SysCtrl.c",41,4
        LCR       #_DisableDog          ; |41| 
        ; call occurs [#_DisableDog] ; |41| 
	.dwpsn	"DSP280x_SysCtrl.c",44,4
        MOVB      AL,#10                ; |44| 
        LCR       #_InitPll             ; |44| 
        ; call occurs [#_InitPll] ; |44| 
	.dwpsn	"DSP280x_SysCtrl.c",47,4
        LCR       #_InitPeripheralClocks ; |47| 
        ; call occurs [#_InitPeripheralClocks] ; |47| 
	.dwpsn	"DSP280x_SysCtrl.c",49,1
        LRETR
        ; return occurs
	.dwattr DW$13, DW_AT_end_file("DSP280x_SysCtrl.c")
	.dwattr DW$13, DW_AT_end_line(0x31)
	.dwattr DW$13, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$13

	.sect	"ramfuncs"
	.global	_InitFlash

DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("InitFlash"), DW_AT_symbol_name("_InitFlash")
	.dwattr DW$14, DW_AT_low_pc(_InitFlash)
	.dwattr DW$14, DW_AT_high_pc(0x00)
	.dwattr DW$14, DW_AT_begin_file("DSP280x_SysCtrl.c")
	.dwattr DW$14, DW_AT_begin_line(0x3d)
	.dwattr DW$14, DW_AT_begin_column(0x06)
	.dwpsn	"DSP280x_SysCtrl.c",62,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _InitFlash                    FR SIZE:   0           *
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
_InitFlash:
;*** 63	-----------------------    asm(" EALLOW");
;*** 66	-----------------------    C$1 = &FlashRegs;
;*** 66	-----------------------    *C$1 |= 1u;
;*** 74	-----------------------    *((volatile struct _FPWR_BITS *)C$1+2L) |= 3u;
;*** 77	-----------------------    *(&FlashRegs+6L) = *((volatile struct _FBANKWAIT_BITS *)C$1+6L)&0xf3ffu|0x300u;
;*** 80	-----------------------    *(&FlashRegs+6L) = *(&FlashRegs+6L)&0xfff0u|3u;
;*** 83	-----------------------    *(&FlashRegs+7L) = *((volatile struct _FOTPWAIT_BITS *)C$1+7L)&0xffe0u|5u;
;*** 87	-----------------------    *((volatile struct _FSTDBYWAIT_BITS *)C$1+4L) |= 0x1ffu;
;*** 88	-----------------------    *((volatile struct _FACTIVEWAIT_BITS *)C$1+5L) |= 0x1ffu;
;*** 89	-----------------------    asm(" EDIS");
;*** 94	-----------------------    asm(" RPT #10 || NOP");
;*** 94	-----------------------    return;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
;* AR4   assigned to C$1
DW$15	.dwtag  DW_TAG_variable, DW_AT_name("C$1"), DW_AT_symbol_name("C$1")
	.dwattr DW$15, DW_AT_type(*DW$T$61)
	.dwattr DW$15, DW_AT_location[DW_OP_reg12]
	.dwpsn	"DSP280x_SysCtrl.c",63,4
 EALLOW
	.dwpsn	"DSP280x_SysCtrl.c",66,4
        MOVL      XAR4,#_FlashRegs      ; |66| 
        OR        *+XAR4[0],#0x0001     ; |66| 
	.dwpsn	"DSP280x_SysCtrl.c",74,4
        OR        *+XAR4[2],#0x0003     ; |74| 
	.dwpsn	"DSP280x_SysCtrl.c",77,4
        AND       AL,*+XAR4[6],#0xf3ff  ; |77| 
        MOVW      DP,#_FlashRegs+6
        OR        AL,#0x0300            ; |77| 
        MOV       @_FlashRegs+6,AL      ; |77| 
	.dwpsn	"DSP280x_SysCtrl.c",80,4
        AND       AL,@_FlashRegs+6,#0xfff0 ; |80| 
        ORB       AL,#0x03              ; |80| 
        MOV       @_FlashRegs+6,AL      ; |80| 
	.dwpsn	"DSP280x_SysCtrl.c",83,4
        AND       AL,*+XAR4[7],#0xffe0  ; |83| 
        ORB       AL,#0x05              ; |83| 
        MOV       @_FlashRegs+7,AL      ; |83| 
	.dwpsn	"DSP280x_SysCtrl.c",87,4
        OR        *+XAR4[4],#0x01ff     ; |87| 
	.dwpsn	"DSP280x_SysCtrl.c",88,4
        OR        *+XAR4[5],#0x01ff     ; |88| 
	.dwpsn	"DSP280x_SysCtrl.c",89,4
 EDIS
	.dwpsn	"DSP280x_SysCtrl.c",94,4
 RPT #10 || NOP
	.dwpsn	"DSP280x_SysCtrl.c",95,1
        SPM       #0
        LRETR
        ; return occurs
	.dwattr DW$14, DW_AT_end_file("DSP280x_SysCtrl.c")
	.dwattr DW$14, DW_AT_end_line(0x5f)
	.dwattr DW$14, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$14

;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_FlashRegs
	.global	_SysCtrlRegs

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

DW$T$55	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$55, DW_AT_language(DW_LANG_C)

DW$T$57	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$57, DW_AT_language(DW_LANG_C)
DW$16	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$T$57

DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)
DW$17	.dwtag  DW_TAG_far_type
	.dwattr DW$17, DW_AT_type(*DW$T$19)
DW$T$59	.dwtag  DW_TAG_const_type
	.dwattr DW$T$59, DW_AT_type(*DW$17)
DW$T$61	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$60)
	.dwattr DW$T$61, DW_AT_address_class(0x16)
DW$T$74	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$73)
	.dwattr DW$T$74, DW_AT_address_class(0x16)
DW$18	.dwtag  DW_TAG_far_type
	.dwattr DW$18, DW_AT_type(*DW$T$39)
DW$T$75	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$75, DW_AT_type(*DW$18)
DW$19	.dwtag  DW_TAG_far_type
	.dwattr DW$19, DW_AT_type(*DW$T$54)
DW$T$87	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$87, DW_AT_type(*DW$19)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x01)
DW$20	.dwtag  DW_TAG_far_type
	.dwattr DW$20, DW_AT_type(*DW$T$11)
DW$T$60	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$60, DW_AT_type(*DW$20)
DW$21	.dwtag  DW_TAG_far_type
	.dwattr DW$21, DW_AT_type(*DW$T$34)
DW$T$73	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$73, DW_AT_type(*DW$21)

DW$T$39	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$39, DW_AT_name("SYS_CTRL_REGS")
	.dwattr DW$T$39, DW_AT_byte_size(0x20)
DW$22	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$22, DW_AT_name("XCLK"), DW_AT_symbol_name("_XCLK")
	.dwattr DW$22, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$22, DW_AT_accessibility(DW_ACCESS_public)
DW$23	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$23, DW_AT_name("PLLSTS"), DW_AT_symbol_name("_PLLSTS")
	.dwattr DW$23, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$23, DW_AT_accessibility(DW_ACCESS_public)
DW$24	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$24, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$24, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$24, DW_AT_accessibility(DW_ACCESS_public)
DW$25	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$25, DW_AT_name("HISPCP"), DW_AT_symbol_name("_HISPCP")
	.dwattr DW$25, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$25, DW_AT_accessibility(DW_ACCESS_public)
DW$26	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$26, DW_AT_name("LOSPCP"), DW_AT_symbol_name("_LOSPCP")
	.dwattr DW$26, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$26, DW_AT_accessibility(DW_ACCESS_public)
DW$27	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$27, DW_AT_name("PCLKCR0"), DW_AT_symbol_name("_PCLKCR0")
	.dwattr DW$27, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$27, DW_AT_accessibility(DW_ACCESS_public)
DW$28	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$28, DW_AT_name("PCLKCR1"), DW_AT_symbol_name("_PCLKCR1")
	.dwattr DW$28, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$28, DW_AT_accessibility(DW_ACCESS_public)
DW$29	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$33)
	.dwattr DW$29, DW_AT_name("LPMCR0"), DW_AT_symbol_name("_LPMCR0")
	.dwattr DW$29, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$29, DW_AT_accessibility(DW_ACCESS_public)
DW$30	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$30, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$30, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$30, DW_AT_accessibility(DW_ACCESS_public)
DW$31	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$31, DW_AT_name("rsvd3"), DW_AT_symbol_name("_rsvd3")
	.dwattr DW$31, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$31, DW_AT_accessibility(DW_ACCESS_public)
DW$32	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$35)
	.dwattr DW$32, DW_AT_name("PLLCR"), DW_AT_symbol_name("_PLLCR")
	.dwattr DW$32, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$32, DW_AT_accessibility(DW_ACCESS_public)
DW$33	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$33, DW_AT_name("SCSR"), DW_AT_symbol_name("_SCSR")
	.dwattr DW$33, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$33, DW_AT_accessibility(DW_ACCESS_public)
DW$34	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$34, DW_AT_name("WDCNTR"), DW_AT_symbol_name("_WDCNTR")
	.dwattr DW$34, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$34, DW_AT_accessibility(DW_ACCESS_public)
DW$35	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$35, DW_AT_name("rsvd4"), DW_AT_symbol_name("_rsvd4")
	.dwattr DW$35, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$35, DW_AT_accessibility(DW_ACCESS_public)
DW$36	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$36, DW_AT_name("WDKEY"), DW_AT_symbol_name("_WDKEY")
	.dwattr DW$36, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$36, DW_AT_accessibility(DW_ACCESS_public)
DW$37	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$37)
	.dwattr DW$37, DW_AT_name("rsvd5"), DW_AT_symbol_name("_rsvd5")
	.dwattr DW$37, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$37, DW_AT_accessibility(DW_ACCESS_public)
DW$38	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$38, DW_AT_name("WDCR"), DW_AT_symbol_name("_WDCR")
	.dwattr DW$38, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr DW$38, DW_AT_accessibility(DW_ACCESS_public)
DW$39	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$38)
	.dwattr DW$39, DW_AT_name("rsvd6"), DW_AT_symbol_name("_rsvd6")
	.dwattr DW$39, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$39, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$39


DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$54, DW_AT_name("FLASH_REGS")
	.dwattr DW$T$54, DW_AT_byte_size(0x08)
DW$40	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$40, DW_AT_name("FOPT"), DW_AT_symbol_name("_FOPT")
	.dwattr DW$40, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$40, DW_AT_accessibility(DW_ACCESS_public)
DW$41	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$41, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$41, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$41, DW_AT_accessibility(DW_ACCESS_public)
DW$42	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$43)
	.dwattr DW$42, DW_AT_name("FPWR"), DW_AT_symbol_name("_FPWR")
	.dwattr DW$42, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$42, DW_AT_accessibility(DW_ACCESS_public)
DW$43	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$43, DW_AT_name("FSTATUS"), DW_AT_symbol_name("_FSTATUS")
	.dwattr DW$43, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$43, DW_AT_accessibility(DW_ACCESS_public)
DW$44	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$47)
	.dwattr DW$44, DW_AT_name("FSTDBYWAIT"), DW_AT_symbol_name("_FSTDBYWAIT")
	.dwattr DW$44, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$44, DW_AT_accessibility(DW_ACCESS_public)
DW$45	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$49)
	.dwattr DW$45, DW_AT_name("FACTIVEWAIT"), DW_AT_symbol_name("_FACTIVEWAIT")
	.dwattr DW$45, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$45, DW_AT_accessibility(DW_ACCESS_public)
DW$46	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$51)
	.dwattr DW$46, DW_AT_name("FBANKWAIT"), DW_AT_symbol_name("_FBANKWAIT")
	.dwattr DW$46, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$46, DW_AT_accessibility(DW_ACCESS_public)
DW$47	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$53)
	.dwattr DW$47, DW_AT_name("FOTPWAIT"), DW_AT_symbol_name("_FOTPWAIT")
	.dwattr DW$47, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$47, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$54


DW$T$36	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$36, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$36, DW_AT_byte_size(0x08)
DW$48	.dwtag  DW_TAG_subrange_type
	.dwattr DW$48, DW_AT_upper_bound(0x07)
	.dwendtag DW$T$36


DW$T$37	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$37, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$37, DW_AT_byte_size(0x03)
DW$49	.dwtag  DW_TAG_subrange_type
	.dwattr DW$49, DW_AT_upper_bound(0x02)
	.dwendtag DW$T$37


DW$T$38	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$38, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$38, DW_AT_byte_size(0x06)
DW$50	.dwtag  DW_TAG_subrange_type
	.dwattr DW$50, DW_AT_upper_bound(0x05)
	.dwendtag DW$T$38


DW$T$21	.dwtag  DW_TAG_union_type
	.dwattr DW$T$21, DW_AT_name("XCLK_REG")
	.dwattr DW$T$21, DW_AT_byte_size(0x01)
DW$51	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$51, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$51, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$51, DW_AT_accessibility(DW_ACCESS_public)
DW$52	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$52, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$52, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$52, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$21


DW$T$23	.dwtag  DW_TAG_union_type
	.dwattr DW$T$23, DW_AT_name("PLLSTS_REG")
	.dwattr DW$T$23, DW_AT_byte_size(0x01)
DW$53	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$53, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$53, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$53, DW_AT_accessibility(DW_ACCESS_public)
DW$54	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$54, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$54, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$54, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$23


DW$T$25	.dwtag  DW_TAG_union_type
	.dwattr DW$T$25, DW_AT_name("HISPCP_REG")
	.dwattr DW$T$25, DW_AT_byte_size(0x01)
DW$55	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$55, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$55, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$55, DW_AT_accessibility(DW_ACCESS_public)
DW$56	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$56, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$56, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$56, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$25


DW$T$27	.dwtag  DW_TAG_union_type
	.dwattr DW$T$27, DW_AT_name("LOSPCP_REG")
	.dwattr DW$T$27, DW_AT_byte_size(0x01)
DW$57	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$57, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$57, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$57, DW_AT_accessibility(DW_ACCESS_public)
DW$58	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$58, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$58, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$58, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$27


DW$T$29	.dwtag  DW_TAG_union_type
	.dwattr DW$T$29, DW_AT_name("PCLKCR0_REG")
	.dwattr DW$T$29, DW_AT_byte_size(0x01)
DW$59	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$59, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$59, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$59, DW_AT_accessibility(DW_ACCESS_public)
DW$60	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$28)
	.dwattr DW$60, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$60, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$60, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$29


DW$T$31	.dwtag  DW_TAG_union_type
	.dwattr DW$T$31, DW_AT_name("PCLKCR1_REG")
	.dwattr DW$T$31, DW_AT_byte_size(0x01)
DW$61	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$61, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$61, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$61, DW_AT_accessibility(DW_ACCESS_public)
DW$62	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$30)
	.dwattr DW$62, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$62, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$62, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$31


DW$T$33	.dwtag  DW_TAG_union_type
	.dwattr DW$T$33, DW_AT_name("LPMCR0_REG")
	.dwattr DW$T$33, DW_AT_byte_size(0x01)
DW$63	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$63, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$63, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$63, DW_AT_accessibility(DW_ACCESS_public)
DW$64	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$64, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$64, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$64, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$33


DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$34, DW_AT_name("PLLCR_BITS")
	.dwattr DW$T$34, DW_AT_byte_size(0x01)
DW$65	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$65, DW_AT_name("DIV"), DW_AT_symbol_name("_DIV")
	.dwattr DW$65, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$65, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$65, DW_AT_accessibility(DW_ACCESS_public)
DW$66	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$66, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$66, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0c)
	.dwattr DW$66, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$66, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$34


DW$T$35	.dwtag  DW_TAG_union_type
	.dwattr DW$T$35, DW_AT_name("PLLCR_REG")
	.dwattr DW$T$35, DW_AT_byte_size(0x01)
DW$67	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$67, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$67, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$67, DW_AT_accessibility(DW_ACCESS_public)
DW$68	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$68, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$68, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$68, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$35


DW$T$41	.dwtag  DW_TAG_union_type
	.dwattr DW$T$41, DW_AT_name("FOPT_REG")
	.dwattr DW$T$41, DW_AT_byte_size(0x01)
DW$69	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$69, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$69, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$69, DW_AT_accessibility(DW_ACCESS_public)
DW$70	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$40)
	.dwattr DW$70, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$70, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$70, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$41


DW$T$43	.dwtag  DW_TAG_union_type
	.dwattr DW$T$43, DW_AT_name("FPWR_REG")
	.dwattr DW$T$43, DW_AT_byte_size(0x01)
DW$71	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$71, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$71, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$71, DW_AT_accessibility(DW_ACCESS_public)
DW$72	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$42)
	.dwattr DW$72, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$72, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$72, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$43


DW$T$45	.dwtag  DW_TAG_union_type
	.dwattr DW$T$45, DW_AT_name("FSTATUS_REG")
	.dwattr DW$T$45, DW_AT_byte_size(0x01)
DW$73	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$73, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$73, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$73, DW_AT_accessibility(DW_ACCESS_public)
DW$74	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$44)
	.dwattr DW$74, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$74, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$74, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$45


DW$T$47	.dwtag  DW_TAG_union_type
	.dwattr DW$T$47, DW_AT_name("FSTDBYWAIT_REG")
	.dwattr DW$T$47, DW_AT_byte_size(0x01)
DW$75	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$75, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$75, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$75, DW_AT_accessibility(DW_ACCESS_public)
DW$76	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$76, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$76, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$76, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$47


DW$T$49	.dwtag  DW_TAG_union_type
	.dwattr DW$T$49, DW_AT_name("FACTIVEWAIT_REG")
	.dwattr DW$T$49, DW_AT_byte_size(0x01)
DW$77	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$77, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$77, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$77, DW_AT_accessibility(DW_ACCESS_public)
DW$78	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$78, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$78, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$78, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$49


DW$T$51	.dwtag  DW_TAG_union_type
	.dwattr DW$T$51, DW_AT_name("FBANKWAIT_REG")
	.dwattr DW$T$51, DW_AT_byte_size(0x01)
DW$79	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$79, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$79, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$79, DW_AT_accessibility(DW_ACCESS_public)
DW$80	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$50)
	.dwattr DW$80, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$80, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$80, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$51


DW$T$53	.dwtag  DW_TAG_union_type
	.dwattr DW$T$53, DW_AT_name("FOTPWAIT_REG")
	.dwattr DW$T$53, DW_AT_byte_size(0x01)
DW$81	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$81, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$81, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$81, DW_AT_accessibility(DW_ACCESS_public)
DW$82	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$52)
	.dwattr DW$82, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$82, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$82, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$53


DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$20, DW_AT_name("XCLK_BITS")
	.dwattr DW$T$20, DW_AT_byte_size(0x01)
DW$83	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$83, DW_AT_name("XCLKOUTDIV"), DW_AT_symbol_name("_XCLKOUTDIV")
	.dwattr DW$83, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x02)
	.dwattr DW$83, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$83, DW_AT_accessibility(DW_ACCESS_public)
DW$84	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$84, DW_AT_name("XCLKOUTDAT"), DW_AT_symbol_name("_XCLKOUTDAT")
	.dwattr DW$84, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$84, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$84, DW_AT_accessibility(DW_ACCESS_public)
DW$85	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$85, DW_AT_name("X1DAT"), DW_AT_symbol_name("_X1DAT")
	.dwattr DW$85, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$85, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$85, DW_AT_accessibility(DW_ACCESS_public)
DW$86	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$86, DW_AT_name("XCLKINDAT"), DW_AT_symbol_name("_XCLKINDAT")
	.dwattr DW$86, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$86, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$86, DW_AT_accessibility(DW_ACCESS_public)
DW$87	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$87, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$87, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x03)
	.dwattr DW$87, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$87, DW_AT_accessibility(DW_ACCESS_public)
DW$88	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$88, DW_AT_name("X1CNT"), DW_AT_symbol_name("_X1CNT")
	.dwattr DW$88, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x04)
	.dwattr DW$88, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$88, DW_AT_accessibility(DW_ACCESS_public)
DW$89	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$89, DW_AT_name("XCLKINCNT"), DW_AT_symbol_name("_XCLKINCNT")
	.dwattr DW$89, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$89, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$89, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20


DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$22, DW_AT_name("PLLSTS_BITS")
	.dwattr DW$T$22, DW_AT_byte_size(0x01)
DW$90	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$90, DW_AT_name("PLLLOCKS"), DW_AT_symbol_name("_PLLLOCKS")
	.dwattr DW$90, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$90, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$90, DW_AT_accessibility(DW_ACCESS_public)
DW$91	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$91, DW_AT_name("CLKINDIV"), DW_AT_symbol_name("_CLKINDIV")
	.dwattr DW$91, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$91, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$91, DW_AT_accessibility(DW_ACCESS_public)
DW$92	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$92, DW_AT_name("PLLOFF"), DW_AT_symbol_name("_PLLOFF")
	.dwattr DW$92, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$92, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$92, DW_AT_accessibility(DW_ACCESS_public)
DW$93	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$93, DW_AT_name("MCLKSTS"), DW_AT_symbol_name("_MCLKSTS")
	.dwattr DW$93, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$93, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$93, DW_AT_accessibility(DW_ACCESS_public)
DW$94	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$94, DW_AT_name("MCLKCLR"), DW_AT_symbol_name("_MCLKCLR")
	.dwattr DW$94, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$94, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$94, DW_AT_accessibility(DW_ACCESS_public)
DW$95	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$95, DW_AT_name("OSCOFF"), DW_AT_symbol_name("_OSCOFF")
	.dwattr DW$95, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$95, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$95, DW_AT_accessibility(DW_ACCESS_public)
DW$96	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$96, DW_AT_name("MCLKOFF"), DW_AT_symbol_name("_MCLKOFF")
	.dwattr DW$96, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$96, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$96, DW_AT_accessibility(DW_ACCESS_public)
DW$97	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$97, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$97, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x09)
	.dwattr DW$97, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$97, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$22


DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$24, DW_AT_name("HISPCP_BITS")
	.dwattr DW$T$24, DW_AT_byte_size(0x01)
DW$98	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$98, DW_AT_name("HSPCLK"), DW_AT_symbol_name("_HSPCLK")
	.dwattr DW$98, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x03)
	.dwattr DW$98, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$98, DW_AT_accessibility(DW_ACCESS_public)
DW$99	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$99, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$99, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0d)
	.dwattr DW$99, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$99, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$24


DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$26, DW_AT_name("LOSPCP_BITS")
	.dwattr DW$T$26, DW_AT_byte_size(0x01)
DW$100	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$100, DW_AT_name("LSPCLK"), DW_AT_symbol_name("_LSPCLK")
	.dwattr DW$100, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x03)
	.dwattr DW$100, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$100, DW_AT_accessibility(DW_ACCESS_public)
DW$101	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$101, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$101, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0d)
	.dwattr DW$101, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$101, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$26


DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$28, DW_AT_name("PCLKCR0_BITS")
	.dwattr DW$T$28, DW_AT_byte_size(0x01)
DW$102	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$102, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$102, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x02)
	.dwattr DW$102, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$102, DW_AT_accessibility(DW_ACCESS_public)
DW$103	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$103, DW_AT_name("TBCLKSYNC"), DW_AT_symbol_name("_TBCLKSYNC")
	.dwattr DW$103, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$103, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$103, DW_AT_accessibility(DW_ACCESS_public)
DW$104	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$104, DW_AT_name("ADCENCLK"), DW_AT_symbol_name("_ADCENCLK")
	.dwattr DW$104, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$104, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$104, DW_AT_accessibility(DW_ACCESS_public)
DW$105	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$105, DW_AT_name("I2CAENCLK"), DW_AT_symbol_name("_I2CAENCLK")
	.dwattr DW$105, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$105, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$105, DW_AT_accessibility(DW_ACCESS_public)
DW$106	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$106, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$106, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$106, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$106, DW_AT_accessibility(DW_ACCESS_public)
DW$107	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$107, DW_AT_name("SPICENCLK"), DW_AT_symbol_name("_SPICENCLK")
	.dwattr DW$107, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$107, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$107, DW_AT_accessibility(DW_ACCESS_public)
DW$108	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$108, DW_AT_name("SPIDENCLK"), DW_AT_symbol_name("_SPIDENCLK")
	.dwattr DW$108, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$108, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$108, DW_AT_accessibility(DW_ACCESS_public)
DW$109	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$109, DW_AT_name("SPIAENCLK"), DW_AT_symbol_name("_SPIAENCLK")
	.dwattr DW$109, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$109, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$109, DW_AT_accessibility(DW_ACCESS_public)
DW$110	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$110, DW_AT_name("SPIBENCLK"), DW_AT_symbol_name("_SPIBENCLK")
	.dwattr DW$110, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$110, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$110, DW_AT_accessibility(DW_ACCESS_public)
DW$111	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$111, DW_AT_name("SCIAENCLK"), DW_AT_symbol_name("_SCIAENCLK")
	.dwattr DW$111, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$111, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$111, DW_AT_accessibility(DW_ACCESS_public)
DW$112	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$112, DW_AT_name("SCIBENCLK"), DW_AT_symbol_name("_SCIBENCLK")
	.dwattr DW$112, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$112, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$112, DW_AT_accessibility(DW_ACCESS_public)
DW$113	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$113, DW_AT_name("rsvd3"), DW_AT_symbol_name("_rsvd3")
	.dwattr DW$113, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x02)
	.dwattr DW$113, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$113, DW_AT_accessibility(DW_ACCESS_public)
DW$114	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$114, DW_AT_name("ECANAENCLK"), DW_AT_symbol_name("_ECANAENCLK")
	.dwattr DW$114, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$114, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$114, DW_AT_accessibility(DW_ACCESS_public)
DW$115	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$115, DW_AT_name("ECANBENCLK"), DW_AT_symbol_name("_ECANBENCLK")
	.dwattr DW$115, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$115, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$115, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$28


DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$30, DW_AT_name("PCLKCR1_BITS")
	.dwattr DW$T$30, DW_AT_byte_size(0x01)
DW$116	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$116, DW_AT_name("EPWM1ENCLK"), DW_AT_symbol_name("_EPWM1ENCLK")
	.dwattr DW$116, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$116, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$116, DW_AT_accessibility(DW_ACCESS_public)
DW$117	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$117, DW_AT_name("EPWM2ENCLK"), DW_AT_symbol_name("_EPWM2ENCLK")
	.dwattr DW$117, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$117, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$117, DW_AT_accessibility(DW_ACCESS_public)
DW$118	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$118, DW_AT_name("EPWM3ENCLK"), DW_AT_symbol_name("_EPWM3ENCLK")
	.dwattr DW$118, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$118, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$118, DW_AT_accessibility(DW_ACCESS_public)
DW$119	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$119, DW_AT_name("EPWM4ENCLK"), DW_AT_symbol_name("_EPWM4ENCLK")
	.dwattr DW$119, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$119, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$119, DW_AT_accessibility(DW_ACCESS_public)
DW$120	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$120, DW_AT_name("EPWM5ENCLK"), DW_AT_symbol_name("_EPWM5ENCLK")
	.dwattr DW$120, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$120, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$120, DW_AT_accessibility(DW_ACCESS_public)
DW$121	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$121, DW_AT_name("EPWM6ENCLK"), DW_AT_symbol_name("_EPWM6ENCLK")
	.dwattr DW$121, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$121, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$121, DW_AT_accessibility(DW_ACCESS_public)
DW$122	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$122, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$122, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x02)
	.dwattr DW$122, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$122, DW_AT_accessibility(DW_ACCESS_public)
DW$123	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$123, DW_AT_name("ECAP1ENCLK"), DW_AT_symbol_name("_ECAP1ENCLK")
	.dwattr DW$123, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$123, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$123, DW_AT_accessibility(DW_ACCESS_public)
DW$124	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$124, DW_AT_name("ECAP2ENCLK"), DW_AT_symbol_name("_ECAP2ENCLK")
	.dwattr DW$124, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$124, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$124, DW_AT_accessibility(DW_ACCESS_public)
DW$125	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$125, DW_AT_name("ECAP3ENCLK"), DW_AT_symbol_name("_ECAP3ENCLK")
	.dwattr DW$125, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$125, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$125, DW_AT_accessibility(DW_ACCESS_public)
DW$126	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$126, DW_AT_name("ECAP4ENCLK"), DW_AT_symbol_name("_ECAP4ENCLK")
	.dwattr DW$126, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$126, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$126, DW_AT_accessibility(DW_ACCESS_public)
DW$127	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$127, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$127, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x02)
	.dwattr DW$127, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$127, DW_AT_accessibility(DW_ACCESS_public)
DW$128	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$128, DW_AT_name("EQEP1ENCLK"), DW_AT_symbol_name("_EQEP1ENCLK")
	.dwattr DW$128, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$128, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$128, DW_AT_accessibility(DW_ACCESS_public)
DW$129	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$129, DW_AT_name("EQEP2ENCLK"), DW_AT_symbol_name("_EQEP2ENCLK")
	.dwattr DW$129, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$129, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$129, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$30


DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$32, DW_AT_name("LPMCR0_BITS")
	.dwattr DW$T$32, DW_AT_byte_size(0x01)
DW$130	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$130, DW_AT_name("LPM"), DW_AT_symbol_name("_LPM")
	.dwattr DW$130, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x02)
	.dwattr DW$130, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$130, DW_AT_accessibility(DW_ACCESS_public)
DW$131	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$131, DW_AT_name("QUALSTDBY"), DW_AT_symbol_name("_QUALSTDBY")
	.dwattr DW$131, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x06)
	.dwattr DW$131, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$131, DW_AT_accessibility(DW_ACCESS_public)
DW$132	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$132, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$132, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x07)
	.dwattr DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$132, DW_AT_accessibility(DW_ACCESS_public)
DW$133	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$133, DW_AT_name("WDINTE"), DW_AT_symbol_name("_WDINTE")
	.dwattr DW$133, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$133, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$133, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$32


DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$40, DW_AT_name("FOPT_BITS")
	.dwattr DW$T$40, DW_AT_byte_size(0x01)
DW$134	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$134, DW_AT_name("ENPIPE"), DW_AT_symbol_name("_ENPIPE")
	.dwattr DW$134, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$134, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$134, DW_AT_accessibility(DW_ACCESS_public)
DW$135	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$135, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$135, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0f)
	.dwattr DW$135, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$135, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$40


DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$42, DW_AT_name("FPWR_BITS")
	.dwattr DW$T$42, DW_AT_byte_size(0x01)
DW$136	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$136, DW_AT_name("PWR"), DW_AT_symbol_name("_PWR")
	.dwattr DW$136, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x02)
	.dwattr DW$136, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$136, DW_AT_accessibility(DW_ACCESS_public)
DW$137	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$137, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$137, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0e)
	.dwattr DW$137, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$137, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$42


DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$44, DW_AT_name("FSTATUS_BITS")
	.dwattr DW$T$44, DW_AT_byte_size(0x01)
DW$138	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$138, DW_AT_name("PWRS"), DW_AT_symbol_name("_PWRS")
	.dwattr DW$138, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x02)
	.dwattr DW$138, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$138, DW_AT_accessibility(DW_ACCESS_public)
DW$139	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$139, DW_AT_name("STDBYWAITS"), DW_AT_symbol_name("_STDBYWAITS")
	.dwattr DW$139, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$139, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$139, DW_AT_accessibility(DW_ACCESS_public)
DW$140	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$140, DW_AT_name("ACTIVEWAITS"), DW_AT_symbol_name("_ACTIVEWAITS")
	.dwattr DW$140, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$140, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$140, DW_AT_accessibility(DW_ACCESS_public)
DW$141	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$141, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$141, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x04)
	.dwattr DW$141, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$141, DW_AT_accessibility(DW_ACCESS_public)
DW$142	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$142, DW_AT_name("V3STAT"), DW_AT_symbol_name("_V3STAT")
	.dwattr DW$142, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$142, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$142, DW_AT_accessibility(DW_ACCESS_public)
DW$143	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$143, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$143, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x07)
	.dwattr DW$143, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$143, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$44


DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$46, DW_AT_name("FSTDBYWAIT_BITS")
	.dwattr DW$T$46, DW_AT_byte_size(0x01)
DW$144	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$144, DW_AT_name("STDBYWAIT"), DW_AT_symbol_name("_STDBYWAIT")
	.dwattr DW$144, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x09)
	.dwattr DW$144, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$144, DW_AT_accessibility(DW_ACCESS_public)
DW$145	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$145, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$145, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x07)
	.dwattr DW$145, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$145, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$46


DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$48, DW_AT_name("FACTIVEWAIT_BITS")
	.dwattr DW$T$48, DW_AT_byte_size(0x01)
DW$146	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$146, DW_AT_name("ACTIVEWAIT"), DW_AT_symbol_name("_ACTIVEWAIT")
	.dwattr DW$146, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x09)
	.dwattr DW$146, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$146, DW_AT_accessibility(DW_ACCESS_public)
DW$147	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$147, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$147, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x07)
	.dwattr DW$147, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$147, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$48


DW$T$50	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$50, DW_AT_name("FBANKWAIT_BITS")
	.dwattr DW$T$50, DW_AT_byte_size(0x01)
DW$148	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$148, DW_AT_name("RANDWAIT"), DW_AT_symbol_name("_RANDWAIT")
	.dwattr DW$148, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$148, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$148, DW_AT_accessibility(DW_ACCESS_public)
DW$149	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$149, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$149, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x04)
	.dwattr DW$149, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$149, DW_AT_accessibility(DW_ACCESS_public)
DW$150	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$150, DW_AT_name("PAGEWAIT"), DW_AT_symbol_name("_PAGEWAIT")
	.dwattr DW$150, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x04)
	.dwattr DW$150, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$150, DW_AT_accessibility(DW_ACCESS_public)
DW$151	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$151, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$151, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$151, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$151, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$50


DW$T$52	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$52, DW_AT_name("FOTPWAIT_BITS")
	.dwattr DW$T$52, DW_AT_byte_size(0x01)
DW$152	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$152, DW_AT_name("OTPWAIT"), DW_AT_symbol_name("_OTPWAIT")
	.dwattr DW$152, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x05)
	.dwattr DW$152, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$152, DW_AT_accessibility(DW_ACCESS_public)
DW$153	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$153, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$153, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0b)
	.dwattr DW$153, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$153, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$52


	.dwattr DW$4, DW_AT_external(0x01)
	.dwattr DW$14, DW_AT_external(0x01)
	.dwattr DW$11, DW_AT_external(0x01)
	.dwattr DW$5, DW_AT_external(0x01)
	.dwattr DW$13, DW_AT_external(0x01)
	.dwattr DW$3, DW_AT_external(0x01)
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

DW$154	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$154, DW_AT_location[DW_OP_reg0]
DW$155	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$155, DW_AT_location[DW_OP_reg1]
DW$156	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$156, DW_AT_location[DW_OP_reg2]
DW$157	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$157, DW_AT_location[DW_OP_reg3]
DW$158	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$158, DW_AT_location[DW_OP_reg4]
DW$159	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$159, DW_AT_location[DW_OP_reg5]
DW$160	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$160, DW_AT_location[DW_OP_reg6]
DW$161	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$161, DW_AT_location[DW_OP_reg7]
DW$162	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$162, DW_AT_location[DW_OP_reg8]
DW$163	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$163, DW_AT_location[DW_OP_reg9]
DW$164	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$164, DW_AT_location[DW_OP_reg10]
DW$165	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$165, DW_AT_location[DW_OP_reg11]
DW$166	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$166, DW_AT_location[DW_OP_reg12]
DW$167	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$167, DW_AT_location[DW_OP_reg13]
DW$168	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$168, DW_AT_location[DW_OP_reg14]
DW$169	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$169, DW_AT_location[DW_OP_reg15]
DW$170	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$170, DW_AT_location[DW_OP_reg16]
DW$171	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$171, DW_AT_location[DW_OP_reg17]
DW$172	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$172, DW_AT_location[DW_OP_reg18]
DW$173	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$173, DW_AT_location[DW_OP_reg19]
DW$174	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$174, DW_AT_location[DW_OP_reg20]
DW$175	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$175, DW_AT_location[DW_OP_reg21]
DW$176	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$176, DW_AT_location[DW_OP_reg22]
DW$177	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$177, DW_AT_location[DW_OP_reg23]
DW$178	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$178, DW_AT_location[DW_OP_reg24]
DW$179	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$179, DW_AT_location[DW_OP_reg25]
DW$180	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$180, DW_AT_location[DW_OP_reg26]
DW$181	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$181, DW_AT_location[DW_OP_reg27]
DW$182	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$182, DW_AT_location[DW_OP_reg28]
DW$183	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$183, DW_AT_location[DW_OP_reg29]
DW$184	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$184, DW_AT_location[DW_OP_reg30]
DW$185	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$185, DW_AT_location[DW_OP_reg31]
DW$186	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$186, DW_AT_location[DW_OP_regx 0x20]
DW$187	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$187, DW_AT_location[DW_OP_regx 0x21]
DW$188	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$188, DW_AT_location[DW_OP_regx 0x22]
DW$189	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$189, DW_AT_location[DW_OP_regx 0x23]
DW$190	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$190, DW_AT_location[DW_OP_regx 0x24]
DW$191	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$191, DW_AT_location[DW_OP_regx 0x25]
DW$192	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$192, DW_AT_location[DW_OP_regx 0x26]
DW$193	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$193, DW_AT_location[DW_OP_regx 0x27]
DW$194	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$194, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU

