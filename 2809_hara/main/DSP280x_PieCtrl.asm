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
DW$1	.dwtag  DW_TAG_variable, DW_AT_name("PieCtrlRegs"), DW_AT_symbol_name("_PieCtrlRegs")
	.dwattr DW$1, DW_AT_type(*DW$T$57)
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
;	..\Compiler\bin\opt2000.exe C:\Users\노호진\AppData\Local\Temp\TI92410 C:\Users\노호진\AppData\Local\Temp\TI9244 
;	..\Compiler\bin\ac2000.exe --keep_unneeded_types -D_INLINE -DLARGE_MODEL -I..\include --version=28 --keep_unneeded_types --mem_model:code=flat --mem_model:data=large -m --i_output_file C:\Users\노호진\AppData\Local\Temp\TI9242 --template_info_file C:\Users\노호진\AppData\Local\Temp\TI9246 --object_file DSP280x_PieCtrl.obj --embed_opts 10 --call_assumptions=0 --mem_model:code=flat --mem_model:data=large --opt_for_speed --opt_level=3 --optimizer_comments --optimizer_interlist --program_level_compile 
	.sect	".text"
	.global	_InitPieCtrl

DW$2	.dwtag  DW_TAG_subprogram, DW_AT_name("InitPieCtrl"), DW_AT_symbol_name("_InitPieCtrl")
	.dwattr DW$2, DW_AT_low_pc(_InitPieCtrl)
	.dwattr DW$2, DW_AT_high_pc(0x00)
	.dwattr DW$2, DW_AT_begin_file("DSP280x_PieCtrl.c")
	.dwattr DW$2, DW_AT_begin_line(0x16)
	.dwattr DW$2, DW_AT_begin_column(0x06)
	.dwpsn	"DSP280x_PieCtrl.c",23,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _InitPieCtrl                  FR SIZE:   0           *
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
_InitPieCtrl:
;*** 25	-----------------------    asm(" setc INTM");
;*** 28	-----------------------    *&PieCtrlRegs &= 0xfffeu;
;*** 31	-----------------------    PieCtrlRegs.PIEIER1.all = 0u;
;*** 32	-----------------------    PieCtrlRegs.PIEIER2.all = 0u;
;*** 33	-----------------------    PieCtrlRegs.PIEIER3.all = 0u;
;*** 34	-----------------------    PieCtrlRegs.PIEIER4.all = 0u;
;*** 35	-----------------------    PieCtrlRegs.PIEIER5.all = 0u;
;*** 36	-----------------------    PieCtrlRegs.PIEIER6.all = 0u;
;*** 37	-----------------------    PieCtrlRegs.PIEIER7.all = 0u;
;*** 38	-----------------------    PieCtrlRegs.PIEIER8.all = 0u;
;*** 39	-----------------------    PieCtrlRegs.PIEIER9.all = 0u;
;*** 40	-----------------------    PieCtrlRegs.PIEIER10.all = 0u;
;*** 41	-----------------------    PieCtrlRegs.PIEIER11.all = 0u;
;*** 42	-----------------------    PieCtrlRegs.PIEIER12.all = 0u;
;*** 45	-----------------------    PieCtrlRegs.PIEIFR1.all = 0u;
;*** 46	-----------------------    PieCtrlRegs.PIEIFR2.all = 0u;
;*** 47	-----------------------    PieCtrlRegs.PIEIFR3.all = 0u;
;*** 48	-----------------------    PieCtrlRegs.PIEIFR4.all = 0u;
;*** 49	-----------------------    PieCtrlRegs.PIEIFR5.all = 0u;
;*** 50	-----------------------    PieCtrlRegs.PIEIFR6.all = 0u;
;*** 51	-----------------------    PieCtrlRegs.PIEIFR7.all = 0u;
;*** 52	-----------------------    PieCtrlRegs.PIEIFR8.all = 0u;
;*** 53	-----------------------    PieCtrlRegs.PIEIFR9.all = 0u;
;*** 54	-----------------------    PieCtrlRegs.PIEIFR10.all = 0u;
;*** 55	-----------------------    PieCtrlRegs.PIEIFR11.all = 0u;
;*** 56	-----------------------    PieCtrlRegs.PIEIFR12.all = 0u;
;*** 56	-----------------------    return;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
	.dwpsn	"DSP280x_PieCtrl.c",25,5
 setc INTM
	.dwpsn	"DSP280x_PieCtrl.c",28,5
        MOVW      DP,#_PieCtrlRegs
        AND       @_PieCtrlRegs,#0xfffe ; |28| 
	.dwpsn	"DSP280x_PieCtrl.c",31,2
        MOV       @_PieCtrlRegs+2,#0    ; |31| 
	.dwpsn	"DSP280x_PieCtrl.c",32,2
        MOV       @_PieCtrlRegs+4,#0    ; |32| 
	.dwpsn	"DSP280x_PieCtrl.c",33,2
        MOV       @_PieCtrlRegs+6,#0    ; |33| 
	.dwpsn	"DSP280x_PieCtrl.c",34,2
        MOV       @_PieCtrlRegs+8,#0    ; |34| 
	.dwpsn	"DSP280x_PieCtrl.c",35,2
        MOV       @_PieCtrlRegs+10,#0   ; |35| 
	.dwpsn	"DSP280x_PieCtrl.c",36,2
        MOV       @_PieCtrlRegs+12,#0   ; |36| 
	.dwpsn	"DSP280x_PieCtrl.c",37,2
        MOV       @_PieCtrlRegs+14,#0   ; |37| 
	.dwpsn	"DSP280x_PieCtrl.c",38,2
        MOV       @_PieCtrlRegs+16,#0   ; |38| 
	.dwpsn	"DSP280x_PieCtrl.c",39,2
        MOV       @_PieCtrlRegs+18,#0   ; |39| 
	.dwpsn	"DSP280x_PieCtrl.c",40,2
        MOV       @_PieCtrlRegs+20,#0   ; |40| 
	.dwpsn	"DSP280x_PieCtrl.c",41,2
        MOV       @_PieCtrlRegs+22,#0   ; |41| 
	.dwpsn	"DSP280x_PieCtrl.c",42,2
        MOV       @_PieCtrlRegs+24,#0   ; |42| 
	.dwpsn	"DSP280x_PieCtrl.c",45,2
        MOV       @_PieCtrlRegs+3,#0    ; |45| 
	.dwpsn	"DSP280x_PieCtrl.c",46,2
        MOV       @_PieCtrlRegs+5,#0    ; |46| 
	.dwpsn	"DSP280x_PieCtrl.c",47,2
        MOV       @_PieCtrlRegs+7,#0    ; |47| 
	.dwpsn	"DSP280x_PieCtrl.c",48,2
        MOV       @_PieCtrlRegs+9,#0    ; |48| 
	.dwpsn	"DSP280x_PieCtrl.c",49,2
        MOV       @_PieCtrlRegs+11,#0   ; |49| 
	.dwpsn	"DSP280x_PieCtrl.c",50,2
        MOV       @_PieCtrlRegs+13,#0   ; |50| 
	.dwpsn	"DSP280x_PieCtrl.c",51,2
        MOV       @_PieCtrlRegs+15,#0   ; |51| 
	.dwpsn	"DSP280x_PieCtrl.c",52,2
        MOV       @_PieCtrlRegs+17,#0   ; |52| 
	.dwpsn	"DSP280x_PieCtrl.c",53,2
        MOV       @_PieCtrlRegs+19,#0   ; |53| 
	.dwpsn	"DSP280x_PieCtrl.c",54,2
        MOV       @_PieCtrlRegs+21,#0   ; |54| 
	.dwpsn	"DSP280x_PieCtrl.c",55,2
        MOV       @_PieCtrlRegs+23,#0   ; |55| 
	.dwpsn	"DSP280x_PieCtrl.c",56,2
        MOV       @_PieCtrlRegs+25,#0   ; |56| 
	.dwpsn	"DSP280x_PieCtrl.c",59,1
        SPM       #0
        LRETR
        ; return occurs
	.dwattr DW$2, DW_AT_end_file("DSP280x_PieCtrl.c")
	.dwattr DW$2, DW_AT_end_line(0x3b)
	.dwattr DW$2, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$2

	.sect	".text"
	.global	_EnableInterrupts

DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("EnableInterrupts"), DW_AT_symbol_name("_EnableInterrupts")
	.dwattr DW$3, DW_AT_low_pc(_EnableInterrupts)
	.dwattr DW$3, DW_AT_high_pc(0x00)
	.dwattr DW$3, DW_AT_begin_file("DSP280x_PieCtrl.c")
	.dwattr DW$3, DW_AT_begin_line(0x42)
	.dwattr DW$3, DW_AT_begin_column(0x06)
	.dwpsn	"DSP280x_PieCtrl.c",67,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _EnableInterrupts             FR SIZE:   0           *
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
_EnableInterrupts:
;*** 70	-----------------------    *&PieCtrlRegs |= 1u;
;*** 73	-----------------------    PieCtrlRegs.PIEACK.all = 0xffffu;
;*** 75	-----------------------    asm(" clrc INTM");
;*** 75	-----------------------    return;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
	.dwpsn	"DSP280x_PieCtrl.c",70,5
        MOVW      DP,#_PieCtrlRegs
        OR        @_PieCtrlRegs,#0x0001 ; |70| 
	.dwpsn	"DSP280x_PieCtrl.c",73,2
        MOV       @_PieCtrlRegs+1,#65535 ; |73| 
	.dwpsn	"DSP280x_PieCtrl.c",75,5
 clrc INTM
	.dwpsn	"DSP280x_PieCtrl.c",77,1
        SPM       #0
        LRETR
        ; return occurs
	.dwattr DW$3, DW_AT_end_file("DSP280x_PieCtrl.c")
	.dwattr DW$3, DW_AT_end_line(0x4d)
	.dwattr DW$3, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$3

;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_PieCtrlRegs

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

DW$T$29	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$29, DW_AT_language(DW_LANG_C)
DW$4	.dwtag  DW_TAG_far_type
	.dwattr DW$4, DW_AT_type(*DW$T$28)
DW$T$57	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$57, DW_AT_type(*DW$4)

DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$28, DW_AT_name("PIE_CTRL_REGS")
	.dwattr DW$T$28, DW_AT_byte_size(0x1a)
DW$5	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$5, DW_AT_name("PIECTRL"), DW_AT_symbol_name("_PIECTRL")
	.dwattr DW$5, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$5, DW_AT_accessibility(DW_ACCESS_public)
DW$6	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$6, DW_AT_name("PIEACK"), DW_AT_symbol_name("_PIEACK")
	.dwattr DW$6, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$6, DW_AT_accessibility(DW_ACCESS_public)
DW$7	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$7, DW_AT_name("PIEIER1"), DW_AT_symbol_name("_PIEIER1")
	.dwattr DW$7, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$7, DW_AT_accessibility(DW_ACCESS_public)
DW$8	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$8, DW_AT_name("PIEIFR1"), DW_AT_symbol_name("_PIEIFR1")
	.dwattr DW$8, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$8, DW_AT_accessibility(DW_ACCESS_public)
DW$9	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$9, DW_AT_name("PIEIER2"), DW_AT_symbol_name("_PIEIER2")
	.dwattr DW$9, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$9, DW_AT_accessibility(DW_ACCESS_public)
DW$10	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$10, DW_AT_name("PIEIFR2"), DW_AT_symbol_name("_PIEIFR2")
	.dwattr DW$10, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$10, DW_AT_accessibility(DW_ACCESS_public)
DW$11	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$11, DW_AT_name("PIEIER3"), DW_AT_symbol_name("_PIEIER3")
	.dwattr DW$11, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$11, DW_AT_accessibility(DW_ACCESS_public)
DW$12	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$12, DW_AT_name("PIEIFR3"), DW_AT_symbol_name("_PIEIFR3")
	.dwattr DW$12, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$12, DW_AT_accessibility(DW_ACCESS_public)
DW$13	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$13, DW_AT_name("PIEIER4"), DW_AT_symbol_name("_PIEIER4")
	.dwattr DW$13, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$13, DW_AT_accessibility(DW_ACCESS_public)
DW$14	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$14, DW_AT_name("PIEIFR4"), DW_AT_symbol_name("_PIEIFR4")
	.dwattr DW$14, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$14, DW_AT_accessibility(DW_ACCESS_public)
DW$15	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$15, DW_AT_name("PIEIER5"), DW_AT_symbol_name("_PIEIER5")
	.dwattr DW$15, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$15, DW_AT_accessibility(DW_ACCESS_public)
DW$16	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$16, DW_AT_name("PIEIFR5"), DW_AT_symbol_name("_PIEIFR5")
	.dwattr DW$16, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$16, DW_AT_accessibility(DW_ACCESS_public)
DW$17	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$17, DW_AT_name("PIEIER6"), DW_AT_symbol_name("_PIEIER6")
	.dwattr DW$17, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$17, DW_AT_accessibility(DW_ACCESS_public)
DW$18	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$18, DW_AT_name("PIEIFR6"), DW_AT_symbol_name("_PIEIFR6")
	.dwattr DW$18, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$18, DW_AT_accessibility(DW_ACCESS_public)
DW$19	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$19, DW_AT_name("PIEIER7"), DW_AT_symbol_name("_PIEIER7")
	.dwattr DW$19, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$19, DW_AT_accessibility(DW_ACCESS_public)
DW$20	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$20, DW_AT_name("PIEIFR7"), DW_AT_symbol_name("_PIEIFR7")
	.dwattr DW$20, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$20, DW_AT_accessibility(DW_ACCESS_public)
DW$21	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$21, DW_AT_name("PIEIER8"), DW_AT_symbol_name("_PIEIER8")
	.dwattr DW$21, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$21, DW_AT_accessibility(DW_ACCESS_public)
DW$22	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$22, DW_AT_name("PIEIFR8"), DW_AT_symbol_name("_PIEIFR8")
	.dwattr DW$22, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$22, DW_AT_accessibility(DW_ACCESS_public)
DW$23	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$23, DW_AT_name("PIEIER9"), DW_AT_symbol_name("_PIEIER9")
	.dwattr DW$23, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$23, DW_AT_accessibility(DW_ACCESS_public)
DW$24	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$24, DW_AT_name("PIEIFR9"), DW_AT_symbol_name("_PIEIFR9")
	.dwattr DW$24, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$24, DW_AT_accessibility(DW_ACCESS_public)
DW$25	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$25, DW_AT_name("PIEIER10"), DW_AT_symbol_name("_PIEIER10")
	.dwattr DW$25, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$25, DW_AT_accessibility(DW_ACCESS_public)
DW$26	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$26, DW_AT_name("PIEIFR10"), DW_AT_symbol_name("_PIEIFR10")
	.dwattr DW$26, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$26, DW_AT_accessibility(DW_ACCESS_public)
DW$27	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$27, DW_AT_name("PIEIER11"), DW_AT_symbol_name("_PIEIER11")
	.dwattr DW$27, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$27, DW_AT_accessibility(DW_ACCESS_public)
DW$28	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$28, DW_AT_name("PIEIFR11"), DW_AT_symbol_name("_PIEIFR11")
	.dwattr DW$28, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$28, DW_AT_accessibility(DW_ACCESS_public)
DW$29	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$29, DW_AT_name("PIEIER12"), DW_AT_symbol_name("_PIEIER12")
	.dwattr DW$29, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$29, DW_AT_accessibility(DW_ACCESS_public)
DW$30	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$30, DW_AT_name("PIEIFR12"), DW_AT_symbol_name("_PIEIFR12")
	.dwattr DW$30, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr DW$30, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$28


DW$T$21	.dwtag  DW_TAG_union_type
	.dwattr DW$T$21, DW_AT_name("PIECTRL_REG")
	.dwattr DW$T$21, DW_AT_byte_size(0x01)
DW$31	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$31, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$31, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$31, DW_AT_accessibility(DW_ACCESS_public)
DW$32	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$32, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$32, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$32, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$21


DW$T$23	.dwtag  DW_TAG_union_type
	.dwattr DW$T$23, DW_AT_name("PIEACK_REG")
	.dwattr DW$T$23, DW_AT_byte_size(0x01)
DW$33	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$33, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$33, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$33, DW_AT_accessibility(DW_ACCESS_public)
DW$34	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$34, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$34, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$34, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$23


DW$T$25	.dwtag  DW_TAG_union_type
	.dwattr DW$T$25, DW_AT_name("PIEIER_REG")
	.dwattr DW$T$25, DW_AT_byte_size(0x01)
DW$35	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$35, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$35, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$35, DW_AT_accessibility(DW_ACCESS_public)
DW$36	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$36, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$36, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$36, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$25


DW$T$27	.dwtag  DW_TAG_union_type
	.dwattr DW$T$27, DW_AT_name("PIEIFR_REG")
	.dwattr DW$T$27, DW_AT_byte_size(0x01)
DW$37	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$37, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$37, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$37, DW_AT_accessibility(DW_ACCESS_public)
DW$38	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$38, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$38, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$38, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$27

DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)

DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$20, DW_AT_name("PIECTRL_BITS")
	.dwattr DW$T$20, DW_AT_byte_size(0x01)
DW$39	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$39, DW_AT_name("ENPIE"), DW_AT_symbol_name("_ENPIE")
	.dwattr DW$39, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$39, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$39, DW_AT_accessibility(DW_ACCESS_public)
DW$40	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$40, DW_AT_name("PIEVECT"), DW_AT_symbol_name("_PIEVECT")
	.dwattr DW$40, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0f)
	.dwattr DW$40, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$40, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20


DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$22, DW_AT_name("PIEACK_BITS")
	.dwattr DW$T$22, DW_AT_byte_size(0x01)
DW$41	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$41, DW_AT_name("ACK1"), DW_AT_symbol_name("_ACK1")
	.dwattr DW$41, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$41, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$41, DW_AT_accessibility(DW_ACCESS_public)
DW$42	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$42, DW_AT_name("ACK2"), DW_AT_symbol_name("_ACK2")
	.dwattr DW$42, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$42, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$42, DW_AT_accessibility(DW_ACCESS_public)
DW$43	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$43, DW_AT_name("ACK3"), DW_AT_symbol_name("_ACK3")
	.dwattr DW$43, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$43, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$43, DW_AT_accessibility(DW_ACCESS_public)
DW$44	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$44, DW_AT_name("ACK4"), DW_AT_symbol_name("_ACK4")
	.dwattr DW$44, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$44, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$44, DW_AT_accessibility(DW_ACCESS_public)
DW$45	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$45, DW_AT_name("ACK5"), DW_AT_symbol_name("_ACK5")
	.dwattr DW$45, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$45, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$45, DW_AT_accessibility(DW_ACCESS_public)
DW$46	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$46, DW_AT_name("ACK6"), DW_AT_symbol_name("_ACK6")
	.dwattr DW$46, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$46, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$46, DW_AT_accessibility(DW_ACCESS_public)
DW$47	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$47, DW_AT_name("ACK7"), DW_AT_symbol_name("_ACK7")
	.dwattr DW$47, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$47, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$47, DW_AT_accessibility(DW_ACCESS_public)
DW$48	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$48, DW_AT_name("ACK8"), DW_AT_symbol_name("_ACK8")
	.dwattr DW$48, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$48, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$48, DW_AT_accessibility(DW_ACCESS_public)
DW$49	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$49, DW_AT_name("ACK9"), DW_AT_symbol_name("_ACK9")
	.dwattr DW$49, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$49, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$49, DW_AT_accessibility(DW_ACCESS_public)
DW$50	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$50, DW_AT_name("ACK10"), DW_AT_symbol_name("_ACK10")
	.dwattr DW$50, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$50, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$50, DW_AT_accessibility(DW_ACCESS_public)
DW$51	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$51, DW_AT_name("ACK11"), DW_AT_symbol_name("_ACK11")
	.dwattr DW$51, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$51, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$51, DW_AT_accessibility(DW_ACCESS_public)
DW$52	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$52, DW_AT_name("ACK12"), DW_AT_symbol_name("_ACK12")
	.dwattr DW$52, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$52, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$52, DW_AT_accessibility(DW_ACCESS_public)
DW$53	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$53, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$53, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$53, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$53, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$22


DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$24, DW_AT_name("PIEIER_BITS")
	.dwattr DW$T$24, DW_AT_byte_size(0x01)
DW$54	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$54, DW_AT_name("INTx1"), DW_AT_symbol_name("_INTx1")
	.dwattr DW$54, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$54, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$54, DW_AT_accessibility(DW_ACCESS_public)
DW$55	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$55, DW_AT_name("INTx2"), DW_AT_symbol_name("_INTx2")
	.dwattr DW$55, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$55, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$55, DW_AT_accessibility(DW_ACCESS_public)
DW$56	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$56, DW_AT_name("INTx3"), DW_AT_symbol_name("_INTx3")
	.dwattr DW$56, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$56, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$56, DW_AT_accessibility(DW_ACCESS_public)
DW$57	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$57, DW_AT_name("INTx4"), DW_AT_symbol_name("_INTx4")
	.dwattr DW$57, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$57, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$57, DW_AT_accessibility(DW_ACCESS_public)
DW$58	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$58, DW_AT_name("INTx5"), DW_AT_symbol_name("_INTx5")
	.dwattr DW$58, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$58, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$58, DW_AT_accessibility(DW_ACCESS_public)
DW$59	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$59, DW_AT_name("INTx6"), DW_AT_symbol_name("_INTx6")
	.dwattr DW$59, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$59, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$59, DW_AT_accessibility(DW_ACCESS_public)
DW$60	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$60, DW_AT_name("INTx7"), DW_AT_symbol_name("_INTx7")
	.dwattr DW$60, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$60, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$60, DW_AT_accessibility(DW_ACCESS_public)
DW$61	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$61, DW_AT_name("INTx8"), DW_AT_symbol_name("_INTx8")
	.dwattr DW$61, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$61, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$61, DW_AT_accessibility(DW_ACCESS_public)
DW$62	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$62, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$62, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$62, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$62, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$24


DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$26, DW_AT_name("PIEIFR_BITS")
	.dwattr DW$T$26, DW_AT_byte_size(0x01)
DW$63	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$63, DW_AT_name("INTx1"), DW_AT_symbol_name("_INTx1")
	.dwattr DW$63, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$63, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$63, DW_AT_accessibility(DW_ACCESS_public)
DW$64	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$64, DW_AT_name("INTx2"), DW_AT_symbol_name("_INTx2")
	.dwattr DW$64, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$64, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$64, DW_AT_accessibility(DW_ACCESS_public)
DW$65	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$65, DW_AT_name("INTx3"), DW_AT_symbol_name("_INTx3")
	.dwattr DW$65, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$65, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$65, DW_AT_accessibility(DW_ACCESS_public)
DW$66	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$66, DW_AT_name("INTx4"), DW_AT_symbol_name("_INTx4")
	.dwattr DW$66, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$66, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$66, DW_AT_accessibility(DW_ACCESS_public)
DW$67	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$67, DW_AT_name("INTx5"), DW_AT_symbol_name("_INTx5")
	.dwattr DW$67, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$67, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$67, DW_AT_accessibility(DW_ACCESS_public)
DW$68	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$68, DW_AT_name("INTx6"), DW_AT_symbol_name("_INTx6")
	.dwattr DW$68, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$68, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$68, DW_AT_accessibility(DW_ACCESS_public)
DW$69	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$69, DW_AT_name("INTx7"), DW_AT_symbol_name("_INTx7")
	.dwattr DW$69, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$69, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$69, DW_AT_accessibility(DW_ACCESS_public)
DW$70	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$70, DW_AT_name("INTx8"), DW_AT_symbol_name("_INTx8")
	.dwattr DW$70, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$70, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$70, DW_AT_accessibility(DW_ACCESS_public)
DW$71	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$71, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$71, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$71, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$71, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$26

DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x01)

	.dwattr DW$3, DW_AT_external(0x01)
	.dwattr DW$2, DW_AT_external(0x01)
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

DW$72	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$72, DW_AT_location[DW_OP_reg0]
DW$73	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$73, DW_AT_location[DW_OP_reg1]
DW$74	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$74, DW_AT_location[DW_OP_reg2]
DW$75	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$75, DW_AT_location[DW_OP_reg3]
DW$76	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$76, DW_AT_location[DW_OP_reg4]
DW$77	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$77, DW_AT_location[DW_OP_reg5]
DW$78	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$78, DW_AT_location[DW_OP_reg6]
DW$79	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$79, DW_AT_location[DW_OP_reg7]
DW$80	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$80, DW_AT_location[DW_OP_reg8]
DW$81	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$81, DW_AT_location[DW_OP_reg9]
DW$82	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$82, DW_AT_location[DW_OP_reg10]
DW$83	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$83, DW_AT_location[DW_OP_reg11]
DW$84	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$84, DW_AT_location[DW_OP_reg12]
DW$85	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$85, DW_AT_location[DW_OP_reg13]
DW$86	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$86, DW_AT_location[DW_OP_reg14]
DW$87	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$87, DW_AT_location[DW_OP_reg15]
DW$88	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$88, DW_AT_location[DW_OP_reg16]
DW$89	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$89, DW_AT_location[DW_OP_reg17]
DW$90	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$90, DW_AT_location[DW_OP_reg18]
DW$91	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$91, DW_AT_location[DW_OP_reg19]
DW$92	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$92, DW_AT_location[DW_OP_reg20]
DW$93	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$93, DW_AT_location[DW_OP_reg21]
DW$94	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$94, DW_AT_location[DW_OP_reg22]
DW$95	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$95, DW_AT_location[DW_OP_reg23]
DW$96	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$96, DW_AT_location[DW_OP_reg24]
DW$97	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$97, DW_AT_location[DW_OP_reg25]
DW$98	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$98, DW_AT_location[DW_OP_reg26]
DW$99	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$99, DW_AT_location[DW_OP_reg27]
DW$100	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$100, DW_AT_location[DW_OP_reg28]
DW$101	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$101, DW_AT_location[DW_OP_reg29]
DW$102	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$102, DW_AT_location[DW_OP_reg30]
DW$103	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$103, DW_AT_location[DW_OP_reg31]
DW$104	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$104, DW_AT_location[DW_OP_regx 0x20]
DW$105	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$105, DW_AT_location[DW_OP_regx 0x21]
DW$106	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$106, DW_AT_location[DW_OP_regx 0x22]
DW$107	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$107, DW_AT_location[DW_OP_regx 0x23]
DW$108	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$108, DW_AT_location[DW_OP_regx 0x24]
DW$109	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$109, DW_AT_location[DW_OP_regx 0x25]
DW$110	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$110, DW_AT_location[DW_OP_regx 0x26]
DW$111	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$111, DW_AT_location[DW_OP_regx 0x27]
DW$112	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$112, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU

