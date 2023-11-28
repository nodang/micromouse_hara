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
;	..\Compiler\bin\opt2000.exe C:\Users\노호진\AppData\Local\Temp\TI31210 C:\Users\노호진\AppData\Local\Temp\TI3124 
;	..\Compiler\bin\ac2000.exe --keep_unneeded_types -D_INLINE -DLARGE_MODEL -I..\include --version=28 --keep_unneeded_types --mem_model:code=flat --mem_model:data=large -m --i_output_file C:\Users\노호진\AppData\Local\Temp\TI3122 --template_info_file C:\Users\노호진\AppData\Local\Temp\TI3126 --object_file DSP280x_MemCopy.obj --embed_opts 10 --call_assumptions=0 --mem_model:code=flat --mem_model:data=large --opt_for_speed --opt_level=3 --optimizer_comments --optimizer_interlist --program_level_compile 
	.sect	".text"
	.global	_MemCopy

DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("MemCopy"), DW_AT_symbol_name("_MemCopy")
	.dwattr DW$1, DW_AT_low_pc(_MemCopy)
	.dwattr DW$1, DW_AT_high_pc(0x00)
	.dwattr DW$1, DW_AT_begin_file("DSP280x_MemCopy.c")
	.dwattr DW$1, DW_AT_begin_line(0x22)
	.dwattr DW$1, DW_AT_begin_column(0x06)
	.dwpsn	"DSP280x_MemCopy.c",35,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _MemCopy                      FR SIZE:   0           *
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
_MemCopy:
;*** 36	-----------------------    if ( SourceAddr >= SourceEndAddr ) goto g4;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
;* AR4   assigned to _SourceAddr
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_name("SourceAddr"), DW_AT_symbol_name("_SourceAddr")
	.dwattr DW$2, DW_AT_type(*DW$T$20)
	.dwattr DW$2, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _SourceEndAddr
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_name("SourceEndAddr"), DW_AT_symbol_name("_SourceEndAddr")
	.dwattr DW$3, DW_AT_type(*DW$T$20)
	.dwattr DW$3, DW_AT_location[DW_OP_reg14]
DW$4	.dwtag  DW_TAG_formal_parameter, DW_AT_name("DestAddr"), DW_AT_symbol_name("_DestAddr")
	.dwattr DW$4, DW_AT_type(*DW$T$20)
	.dwattr DW$4, DW_AT_location[DW_OP_breg20 -4]
;* AR6   assigned to _DestAddr
DW$5	.dwtag  DW_TAG_variable, DW_AT_name("DestAddr"), DW_AT_symbol_name("_DestAddr")
	.dwattr DW$5, DW_AT_type(*DW$T$20)
	.dwattr DW$5, DW_AT_location[DW_OP_reg16]
;* AL    assigned to _SourceEndAddr
DW$6	.dwtag  DW_TAG_variable, DW_AT_name("SourceEndAddr"), DW_AT_symbol_name("_SourceEndAddr")
	.dwattr DW$6, DW_AT_type(*DW$T$24)
	.dwattr DW$6, DW_AT_location[DW_OP_reg0]
;* AR4   assigned to _SourceAddr
DW$7	.dwtag  DW_TAG_variable, DW_AT_name("SourceAddr"), DW_AT_symbol_name("_SourceAddr")
	.dwattr DW$7, DW_AT_type(*DW$T$20)
	.dwattr DW$7, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to L$1
DW$8	.dwtag  DW_TAG_variable, DW_AT_name("L$1"), DW_AT_symbol_name("L$1")
	.dwattr DW$8, DW_AT_type(*DW$T$12)
	.dwattr DW$8, DW_AT_location[DW_OP_reg14]
        MOVL      XAR6,*-SP[4]          ; |35| 
        MOVL      ACC,XAR5              ; |35| 
	.dwpsn	"DSP280x_MemCopy.c",36,11
        CMPL      ACC,XAR4              ; |36| 
        BF        L2,LOS                ; |36| 
        ; branchcc occurs ; |36| 
;***  	-----------------------    #pragma MUST_ITERATE(1, 4294967295, 1)
;***  	-----------------------    #pragma LOOP_FLAGS(4096u)
;***  	-----------------------    L$1 = SourceEndAddr-SourceAddr-1L;
        SUBL      ACC,XAR4
        SUBB      ACC,#1
        MOVL      XAR5,ACC
L1:    
DW$L$_MemCopy$3$B:
;***	-----------------------g3:
;*** 38	-----------------------    *DestAddr++ = *SourceAddr++;
;*** 36	-----------------------    if ( (--L$1) != (-1L) ) goto g3;
;***	-----------------------g4:
;***  	-----------------------    return;
	.dwpsn	"DSP280x_MemCopy.c",38,8
        MOV       AL,*XAR4++            ; |38| 
        MOV       *XAR6++,AL            ; |38| 
	.dwpsn	"DSP280x_MemCopy.c",36,11
        MOVB      ACC,#0
        SUBB      XAR5,#1               ; |36| 
        SUBB      ACC,#1
        CMPL      ACC,XAR5              ; |36| 
        BF        L1,NEQ                ; |36| 
        ; branchcc occurs ; |36| 
DW$L$_MemCopy$3$E:
L2:    
	.dwpsn	"DSP280x_MemCopy.c",41,1
        LRETR
        ; return occurs

DW$9	.dwtag  DW_TAG_loop
	.dwattr DW$9, DW_AT_name("C:\Users\노호진\Desktop\2809_MICROMOUSE\2809_hara\main\DSP280x_MemCopy.asm:L1:1:1701145760")
	.dwattr DW$9, DW_AT_begin_file("DSP280x_MemCopy.c")
	.dwattr DW$9, DW_AT_begin_line(0x24)
	.dwattr DW$9, DW_AT_end_line(0x27)
DW$10	.dwtag  DW_TAG_loop_range
	.dwattr DW$10, DW_AT_low_pc(DW$L$_MemCopy$3$B)
	.dwattr DW$10, DW_AT_high_pc(DW$L$_MemCopy$3$E)
	.dwendtag DW$9

	.dwattr DW$1, DW_AT_end_file("DSP280x_MemCopy.c")
	.dwattr DW$1, DW_AT_end_line(0x29)
	.dwattr DW$1, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$1


;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

DW$T$21	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$21, DW_AT_language(DW_LANG_C)
DW$11	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$20)
DW$12	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$20)
DW$13	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$20)
	.dwendtag DW$T$21

DW$T$20	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$20, DW_AT_address_class(0x16)
DW$14	.dwtag  DW_TAG_far_type
	.dwattr DW$14, DW_AT_type(*DW$T$20)
DW$T$24	.dwtag  DW_TAG_const_type
	.dwattr DW$T$24, DW_AT_type(*DW$14)
DW$T$12	.dwtag  DW_TAG_base_type, DW_AT_name("long")
	.dwattr DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$12, DW_AT_byte_size(0x02)
DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x01)

	.dwattr DW$1, DW_AT_external(0x01)
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

DW$15	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$15, DW_AT_location[DW_OP_reg0]
DW$16	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$16, DW_AT_location[DW_OP_reg1]
DW$17	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$17, DW_AT_location[DW_OP_reg2]
DW$18	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$18, DW_AT_location[DW_OP_reg3]
DW$19	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$19, DW_AT_location[DW_OP_reg4]
DW$20	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$20, DW_AT_location[DW_OP_reg5]
DW$21	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$21, DW_AT_location[DW_OP_reg6]
DW$22	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$22, DW_AT_location[DW_OP_reg7]
DW$23	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$23, DW_AT_location[DW_OP_reg8]
DW$24	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$24, DW_AT_location[DW_OP_reg9]
DW$25	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$25, DW_AT_location[DW_OP_reg10]
DW$26	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$26, DW_AT_location[DW_OP_reg11]
DW$27	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$27, DW_AT_location[DW_OP_reg12]
DW$28	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$28, DW_AT_location[DW_OP_reg13]
DW$29	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$29, DW_AT_location[DW_OP_reg14]
DW$30	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$30, DW_AT_location[DW_OP_reg15]
DW$31	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$31, DW_AT_location[DW_OP_reg16]
DW$32	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$32, DW_AT_location[DW_OP_reg17]
DW$33	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$33, DW_AT_location[DW_OP_reg18]
DW$34	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$34, DW_AT_location[DW_OP_reg19]
DW$35	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$35, DW_AT_location[DW_OP_reg20]
DW$36	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$36, DW_AT_location[DW_OP_reg21]
DW$37	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$37, DW_AT_location[DW_OP_reg22]
DW$38	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$38, DW_AT_location[DW_OP_reg23]
DW$39	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$39, DW_AT_location[DW_OP_reg24]
DW$40	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$40, DW_AT_location[DW_OP_reg25]
DW$41	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$41, DW_AT_location[DW_OP_reg26]
DW$42	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$42, DW_AT_location[DW_OP_reg27]
DW$43	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$43, DW_AT_location[DW_OP_reg28]
DW$44	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$44, DW_AT_location[DW_OP_reg29]
DW$45	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$45, DW_AT_location[DW_OP_reg30]
DW$46	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$46, DW_AT_location[DW_OP_reg31]
DW$47	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$47, DW_AT_location[DW_OP_regx 0x20]
DW$48	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$48, DW_AT_location[DW_OP_regx 0x21]
DW$49	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$49, DW_AT_location[DW_OP_regx 0x22]
DW$50	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$50, DW_AT_location[DW_OP_regx 0x23]
DW$51	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$51, DW_AT_location[DW_OP_regx 0x24]
DW$52	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$52, DW_AT_location[DW_OP_regx 0x25]
DW$53	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$53, DW_AT_location[DW_OP_regx 0x26]
DW$54	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$54, DW_AT_location[DW_OP_regx 0x27]
DW$55	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$55, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU

