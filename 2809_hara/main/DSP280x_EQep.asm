;***************************************************************
;* TMS320C2000 C/C++ Codegen                         PC v4.1.3 *
;* Date/Time created: Tue Nov 28 13:29:19 2023                 *
;***************************************************************
	.compiler_opts --mem_model:code=flat --mem_model:data=large --silicon_version=28 
FP	.set	XAR2

DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_producer("TMS320C2000 C/C++ Codegen PC v4.1.3 Copyright (c) 1996-2006 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)
;	..\Compiler\bin\opt2000.exe C:\Users\노호진\AppData\Local\Temp\TI45610 C:\Users\노호진\AppData\Local\Temp\TI4564 
;	..\Compiler\bin\ac2000.exe --keep_unneeded_types -D_INLINE -DLARGE_MODEL -I..\include --version=28 --keep_unneeded_types --mem_model:code=flat --mem_model:data=large -m --i_output_file C:\Users\노호진\AppData\Local\Temp\TI4562 --template_info_file C:\Users\노호진\AppData\Local\Temp\TI4566 --object_file DSP280x_EQep.obj --embed_opts 10 --call_assumptions=0 --mem_model:code=flat --mem_model:data=large --opt_for_speed --opt_level=3 --optimizer_comments --optimizer_interlist --program_level_compile 
	.sect	".text"
	.global	_InitEQep

DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("InitEQep"), DW_AT_symbol_name("_InitEQep")
	.dwattr DW$1, DW_AT_low_pc(_InitEQep)
	.dwattr DW$1, DW_AT_high_pc(0x00)
	.dwattr DW$1, DW_AT_begin_file("DSP280x_EQep.c")
	.dwattr DW$1, DW_AT_begin_line(0x18)
	.dwattr DW$1, DW_AT_begin_column(0x06)
	.dwpsn	"DSP280x_EQep.c",25,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _InitEQep                     FR SIZE:   0           *
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
_InitEQep:
;*** 83	-----------------------    (*pQEP).QDECCTL.all = 0u;
;*** 99	-----------------------    (*pQEP).QEPCTL.all = 0x900au;
;*** 101	-----------------------    (*pQEP).QPOSCTL.all = 0u;
;*** 103	-----------------------    (*pQEP).QUPRD = 50000uL;
;*** 105	-----------------------    *((volatile struct _QCAPCTL_BITS *)pQEP+22L) &= 0x7fffu;
;*** 106	-----------------------    *((volatile struct _QCAPCTL_BITS *)pQEP+22L) = *((volatile struct _QCAPCTL_BITS *)pQEP+22L)&0xffcfu|0x40u;
;*** 107	-----------------------    *((volatile struct _QCAPCTL_BITS *)pQEP+22L) = *((volatile struct _QCAPCTL_BITS *)pQEP+22L)&0xfff0u|4u;
;*** 108	-----------------------    *((volatile struct _QCAPCTL_BITS *)pQEP+22L) |= 0x8000u;
;*** 110	-----------------------    (*pQEP).QEINT.all = 0u;
;*** 111	-----------------------    (*pQEP).QPOSINIT = 0uL;
;*** 112	-----------------------    (*pQEP).QPOSMAX = 2048uL;
;*** 113	-----------------------    *((volatile struct _QEPCTL_BITS *)pQEP+21L) |= 0x80u;
;*** 113	-----------------------    return;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
;* AR4   assigned to _pQEP
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pQEP"), DW_AT_symbol_name("_pQEP")
	.dwattr DW$2, DW_AT_type(*DW$T$40)
	.dwattr DW$2, DW_AT_location[DW_OP_reg12]
;* AR4   assigned to _pQEP
DW$3	.dwtag  DW_TAG_variable, DW_AT_name("pQEP"), DW_AT_symbol_name("_pQEP")
	.dwattr DW$3, DW_AT_type(*DW$T$53)
	.dwattr DW$3, DW_AT_location[DW_OP_reg12]
	.dwpsn	"DSP280x_EQep.c",83,2
        MOVB      XAR0,#20              ; |83| 
        MOV       *+XAR4[AR0],#0        ; |83| 
	.dwpsn	"DSP280x_EQep.c",99,2
        MOVB      XAR0,#21              ; |99| 
        MOV       *+XAR4[AR0],#36874    ; |99| 
	.dwpsn	"DSP280x_EQep.c",101,2
        MOVB      XAR0,#23              ; |101| 
        MOV       *+XAR4[AR0],#0        ; |101| 
	.dwpsn	"DSP280x_EQep.c",103,2
        MOVL      XAR5,#50000           ; |103| 
        MOVB      XAR0,#16              ; |103| 
        MOVL      *+XAR4[AR0],XAR5      ; |103| 
	.dwpsn	"DSP280x_EQep.c",105,2
        MOVB      ACC,#22
        ADDL      ACC,XAR4
        MOVL      XAR5,ACC              ; |105| 
        AND       *+XAR5[0],#0x7fff     ; |105| 
	.dwpsn	"DSP280x_EQep.c",106,2
        MOVB      XAR0,#22              ; |106| 
        AND       AL,*+XAR4[AR0],#0xffcf ; |106| 
        ORB       AL,#0x40              ; |106| 
        MOV       *+XAR4[AR0],AL        ; |106| 
	.dwpsn	"DSP280x_EQep.c",107,2
        AND       AL,*+XAR4[AR0],#0xfff0 ; |107| 
        ORB       AL,#0x04              ; |107| 
        MOV       *+XAR4[AR0],AL        ; |107| 
	.dwpsn	"DSP280x_EQep.c",108,2
        MOVB      ACC,#22
        ADDL      ACC,XAR4
        MOVL      XAR5,ACC              ; |108| 
        OR        *+XAR5[0],#0x8000     ; |108| 
	.dwpsn	"DSP280x_EQep.c",110,2
        MOVB      XAR0,#24              ; |110| 
        MOV       *+XAR4[AR0],#0        ; |110| 
	.dwpsn	"DSP280x_EQep.c",111,2
        MOVB      ACC,#0
        MOVL      *+XAR4[2],ACC         ; |111| 
	.dwpsn	"DSP280x_EQep.c",112,2
        MOVL      XAR5,#2048            ; |112| 
        MOVL      *+XAR4[4],XAR5        ; |112| 
	.dwpsn	"DSP280x_EQep.c",113,2
        MOVB      ACC,#21
        ADDL      ACC,XAR4
        MOVL      XAR4,ACC              ; |113| 
        OR        *+XAR4[0],#0x0080     ; |113| 
	.dwpsn	"DSP280x_EQep.c",115,1
        LRETR
        ; return occurs
	.dwattr DW$1, DW_AT_end_file("DSP280x_EQep.c")
	.dwattr DW$1, DW_AT_end_line(0x73)
	.dwattr DW$1, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$1


;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

DW$T$41	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$41, DW_AT_language(DW_LANG_C)
DW$4	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
	.dwendtag DW$T$41

DW$T$40	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$39)
	.dwattr DW$T$40, DW_AT_address_class(0x16)
DW$5	.dwtag  DW_TAG_far_type
	.dwattr DW$5, DW_AT_type(*DW$T$40)
DW$T$53	.dwtag  DW_TAG_const_type
	.dwattr DW$T$53, DW_AT_type(*DW$5)
DW$6	.dwtag  DW_TAG_far_type
	.dwattr DW$6, DW_AT_type(*DW$T$38)
DW$T$39	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$39, DW_AT_type(*DW$6)

DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$38, DW_AT_name("EQEP_REGS")
	.dwattr DW$T$38, DW_AT_byte_size(0x40)
DW$7	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$7, DW_AT_name("QPOSCNT"), DW_AT_symbol_name("_QPOSCNT")
	.dwattr DW$7, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$7, DW_AT_accessibility(DW_ACCESS_public)
DW$8	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$8, DW_AT_name("QPOSINIT"), DW_AT_symbol_name("_QPOSINIT")
	.dwattr DW$8, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$8, DW_AT_accessibility(DW_ACCESS_public)
DW$9	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$9, DW_AT_name("QPOSMAX"), DW_AT_symbol_name("_QPOSMAX")
	.dwattr DW$9, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$9, DW_AT_accessibility(DW_ACCESS_public)
DW$10	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$10, DW_AT_name("QPOSCMP"), DW_AT_symbol_name("_QPOSCMP")
	.dwattr DW$10, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$10, DW_AT_accessibility(DW_ACCESS_public)
DW$11	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$11, DW_AT_name("QPOSILAT"), DW_AT_symbol_name("_QPOSILAT")
	.dwattr DW$11, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$11, DW_AT_accessibility(DW_ACCESS_public)
DW$12	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$12, DW_AT_name("QPOSSLAT"), DW_AT_symbol_name("_QPOSSLAT")
	.dwattr DW$12, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$12, DW_AT_accessibility(DW_ACCESS_public)
DW$13	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$13, DW_AT_name("QPOSLAT"), DW_AT_symbol_name("_QPOSLAT")
	.dwattr DW$13, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$13, DW_AT_accessibility(DW_ACCESS_public)
DW$14	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$14, DW_AT_name("QUTMR"), DW_AT_symbol_name("_QUTMR")
	.dwattr DW$14, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$14, DW_AT_accessibility(DW_ACCESS_public)
DW$15	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$15, DW_AT_name("QUPRD"), DW_AT_symbol_name("_QUPRD")
	.dwattr DW$15, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$15, DW_AT_accessibility(DW_ACCESS_public)
DW$16	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$16, DW_AT_name("QWDTMR"), DW_AT_symbol_name("_QWDTMR")
	.dwattr DW$16, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$16, DW_AT_accessibility(DW_ACCESS_public)
DW$17	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$17, DW_AT_name("QWDPRD"), DW_AT_symbol_name("_QWDPRD")
	.dwattr DW$17, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$17, DW_AT_accessibility(DW_ACCESS_public)
DW$18	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$18, DW_AT_name("QDECCTL"), DW_AT_symbol_name("_QDECCTL")
	.dwattr DW$18, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$18, DW_AT_accessibility(DW_ACCESS_public)
DW$19	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$19, DW_AT_name("QEPCTL"), DW_AT_symbol_name("_QEPCTL")
	.dwattr DW$19, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$19, DW_AT_accessibility(DW_ACCESS_public)
DW$20	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$20, DW_AT_name("QCAPCTL"), DW_AT_symbol_name("_QCAPCTL")
	.dwattr DW$20, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$20, DW_AT_accessibility(DW_ACCESS_public)
DW$21	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$21, DW_AT_name("QPOSCTL"), DW_AT_symbol_name("_QPOSCTL")
	.dwattr DW$21, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$21, DW_AT_accessibility(DW_ACCESS_public)
DW$22	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$22, DW_AT_name("QEINT"), DW_AT_symbol_name("_QEINT")
	.dwattr DW$22, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$22, DW_AT_accessibility(DW_ACCESS_public)
DW$23	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$23, DW_AT_name("QFLG"), DW_AT_symbol_name("_QFLG")
	.dwattr DW$23, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr DW$23, DW_AT_accessibility(DW_ACCESS_public)
DW$24	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$24, DW_AT_name("QCLR"), DW_AT_symbol_name("_QCLR")
	.dwattr DW$24, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$24, DW_AT_accessibility(DW_ACCESS_public)
DW$25	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$33)
	.dwattr DW$25, DW_AT_name("QFRC"), DW_AT_symbol_name("_QFRC")
	.dwattr DW$25, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr DW$25, DW_AT_accessibility(DW_ACCESS_public)
DW$26	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$35)
	.dwattr DW$26, DW_AT_name("QEPSTS"), DW_AT_symbol_name("_QEPSTS")
	.dwattr DW$26, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$26, DW_AT_accessibility(DW_ACCESS_public)
DW$27	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$27, DW_AT_name("QCTMR"), DW_AT_symbol_name("_QCTMR")
	.dwattr DW$27, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$27, DW_AT_accessibility(DW_ACCESS_public)
DW$28	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$28, DW_AT_name("QCPRD"), DW_AT_symbol_name("_QCPRD")
	.dwattr DW$28, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$28, DW_AT_accessibility(DW_ACCESS_public)
DW$29	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$29, DW_AT_name("QCTMRLAT"), DW_AT_symbol_name("_QCTMRLAT")
	.dwattr DW$29, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr DW$29, DW_AT_accessibility(DW_ACCESS_public)
DW$30	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$30, DW_AT_name("QCPRDLAT"), DW_AT_symbol_name("_QCPRDLAT")
	.dwattr DW$30, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr DW$30, DW_AT_accessibility(DW_ACCESS_public)
DW$31	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$37)
	.dwattr DW$31, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$31, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr DW$31, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$38

DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)

DW$T$37	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$37, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$37, DW_AT_byte_size(0x1e)
DW$32	.dwtag  DW_TAG_subrange_type
	.dwattr DW$32, DW_AT_upper_bound(0x1d)
	.dwendtag DW$T$37

DW$T$36	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32"), DW_AT_type(*DW$T$13)
	.dwattr DW$T$36, DW_AT_language(DW_LANG_C)

DW$T$21	.dwtag  DW_TAG_union_type
	.dwattr DW$T$21, DW_AT_name("QDECCTL_REG")
	.dwattr DW$T$21, DW_AT_byte_size(0x01)
DW$33	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$33, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$33, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$33, DW_AT_accessibility(DW_ACCESS_public)
DW$34	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$34, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$34, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$34, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$21


DW$T$23	.dwtag  DW_TAG_union_type
	.dwattr DW$T$23, DW_AT_name("QEPCTL_REG")
	.dwattr DW$T$23, DW_AT_byte_size(0x01)
DW$35	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$35, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$35, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$35, DW_AT_accessibility(DW_ACCESS_public)
DW$36	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$36, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$36, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$36, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$23


DW$T$25	.dwtag  DW_TAG_union_type
	.dwattr DW$T$25, DW_AT_name("QCAPCTL_REG")
	.dwattr DW$T$25, DW_AT_byte_size(0x01)
DW$37	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$37, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$37, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$37, DW_AT_accessibility(DW_ACCESS_public)
DW$38	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$38, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$38, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$38, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$25


DW$T$27	.dwtag  DW_TAG_union_type
	.dwattr DW$T$27, DW_AT_name("QPOSCTL_REG")
	.dwattr DW$T$27, DW_AT_byte_size(0x01)
DW$39	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$39, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$39, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$39, DW_AT_accessibility(DW_ACCESS_public)
DW$40	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$40, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$40, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$40, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$27


DW$T$29	.dwtag  DW_TAG_union_type
	.dwattr DW$T$29, DW_AT_name("QEINT_REG")
	.dwattr DW$T$29, DW_AT_byte_size(0x01)
DW$41	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$41, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$41, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$41, DW_AT_accessibility(DW_ACCESS_public)
DW$42	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$28)
	.dwattr DW$42, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$42, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$42, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$29


DW$T$31	.dwtag  DW_TAG_union_type
	.dwattr DW$T$31, DW_AT_name("QFLG_REG")
	.dwattr DW$T$31, DW_AT_byte_size(0x01)
DW$43	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$43, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$43, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$43, DW_AT_accessibility(DW_ACCESS_public)
DW$44	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$30)
	.dwattr DW$44, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$44, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$44, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$31


DW$T$33	.dwtag  DW_TAG_union_type
	.dwattr DW$T$33, DW_AT_name("QFRC_REG")
	.dwattr DW$T$33, DW_AT_byte_size(0x01)
DW$45	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$45, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$45, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$45, DW_AT_accessibility(DW_ACCESS_public)
DW$46	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$46, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$46, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$46, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$33


DW$T$35	.dwtag  DW_TAG_union_type
	.dwattr DW$T$35, DW_AT_name("QEPSTS_REG")
	.dwattr DW$T$35, DW_AT_byte_size(0x01)
DW$47	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$47, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$47, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$47, DW_AT_accessibility(DW_ACCESS_public)
DW$48	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$48, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$48, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$48, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$35

DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x01)
DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x02)

DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$20, DW_AT_name("QDECCTL_BITS")
	.dwattr DW$T$20, DW_AT_byte_size(0x01)
DW$49	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$49, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$49, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x05)
	.dwattr DW$49, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$49, DW_AT_accessibility(DW_ACCESS_public)
DW$50	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$50, DW_AT_name("QSP"), DW_AT_symbol_name("_QSP")
	.dwattr DW$50, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$50, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$50, DW_AT_accessibility(DW_ACCESS_public)
DW$51	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$51, DW_AT_name("QIP"), DW_AT_symbol_name("_QIP")
	.dwattr DW$51, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$51, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$51, DW_AT_accessibility(DW_ACCESS_public)
DW$52	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$52, DW_AT_name("QBP"), DW_AT_symbol_name("_QBP")
	.dwattr DW$52, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$52, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$52, DW_AT_accessibility(DW_ACCESS_public)
DW$53	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$53, DW_AT_name("QAP"), DW_AT_symbol_name("_QAP")
	.dwattr DW$53, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$53, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$53, DW_AT_accessibility(DW_ACCESS_public)
DW$54	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$54, DW_AT_name("IGATE"), DW_AT_symbol_name("_IGATE")
	.dwattr DW$54, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$54, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$54, DW_AT_accessibility(DW_ACCESS_public)
DW$55	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$55, DW_AT_name("SWAP"), DW_AT_symbol_name("_SWAP")
	.dwattr DW$55, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$55, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$55, DW_AT_accessibility(DW_ACCESS_public)
DW$56	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$56, DW_AT_name("XCR"), DW_AT_symbol_name("_XCR")
	.dwattr DW$56, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$56, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$56, DW_AT_accessibility(DW_ACCESS_public)
DW$57	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$57, DW_AT_name("SPSEL"), DW_AT_symbol_name("_SPSEL")
	.dwattr DW$57, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$57, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$57, DW_AT_accessibility(DW_ACCESS_public)
DW$58	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$58, DW_AT_name("SOEN"), DW_AT_symbol_name("_SOEN")
	.dwattr DW$58, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$58, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$58, DW_AT_accessibility(DW_ACCESS_public)
DW$59	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$59, DW_AT_name("QSRC"), DW_AT_symbol_name("_QSRC")
	.dwattr DW$59, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x02)
	.dwattr DW$59, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$59, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20


DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$22, DW_AT_name("QEPCTL_BITS")
	.dwattr DW$T$22, DW_AT_byte_size(0x01)
DW$60	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$60, DW_AT_name("WDE"), DW_AT_symbol_name("_WDE")
	.dwattr DW$60, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$60, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$60, DW_AT_accessibility(DW_ACCESS_public)
DW$61	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$61, DW_AT_name("UTE"), DW_AT_symbol_name("_UTE")
	.dwattr DW$61, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$61, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$61, DW_AT_accessibility(DW_ACCESS_public)
DW$62	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$62, DW_AT_name("QCLM"), DW_AT_symbol_name("_QCLM")
	.dwattr DW$62, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$62, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$62, DW_AT_accessibility(DW_ACCESS_public)
DW$63	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$63, DW_AT_name("QPEN"), DW_AT_symbol_name("_QPEN")
	.dwattr DW$63, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$63, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$63, DW_AT_accessibility(DW_ACCESS_public)
DW$64	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$64, DW_AT_name("IEL"), DW_AT_symbol_name("_IEL")
	.dwattr DW$64, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x02)
	.dwattr DW$64, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$64, DW_AT_accessibility(DW_ACCESS_public)
DW$65	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$65, DW_AT_name("SEL"), DW_AT_symbol_name("_SEL")
	.dwattr DW$65, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$65, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$65, DW_AT_accessibility(DW_ACCESS_public)
DW$66	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$66, DW_AT_name("SWI"), DW_AT_symbol_name("_SWI")
	.dwattr DW$66, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$66, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$66, DW_AT_accessibility(DW_ACCESS_public)
DW$67	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$67, DW_AT_name("IEI"), DW_AT_symbol_name("_IEI")
	.dwattr DW$67, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x02)
	.dwattr DW$67, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$67, DW_AT_accessibility(DW_ACCESS_public)
DW$68	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$68, DW_AT_name("SEI"), DW_AT_symbol_name("_SEI")
	.dwattr DW$68, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x02)
	.dwattr DW$68, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$68, DW_AT_accessibility(DW_ACCESS_public)
DW$69	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$69, DW_AT_name("PCRM"), DW_AT_symbol_name("_PCRM")
	.dwattr DW$69, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x02)
	.dwattr DW$69, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$69, DW_AT_accessibility(DW_ACCESS_public)
DW$70	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$70, DW_AT_name("FREE_SOFT"), DW_AT_symbol_name("_FREE_SOFT")
	.dwattr DW$70, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x02)
	.dwattr DW$70, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$70, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$22


DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$24, DW_AT_name("QCAPCTL_BITS")
	.dwattr DW$T$24, DW_AT_byte_size(0x01)
DW$71	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$71, DW_AT_name("UPPS"), DW_AT_symbol_name("_UPPS")
	.dwattr DW$71, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$71, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$71, DW_AT_accessibility(DW_ACCESS_public)
DW$72	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$72, DW_AT_name("CCPS"), DW_AT_symbol_name("_CCPS")
	.dwattr DW$72, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x03)
	.dwattr DW$72, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$72, DW_AT_accessibility(DW_ACCESS_public)
DW$73	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$73, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$73, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x08)
	.dwattr DW$73, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$73, DW_AT_accessibility(DW_ACCESS_public)
DW$74	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$74, DW_AT_name("CEN"), DW_AT_symbol_name("_CEN")
	.dwattr DW$74, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$74, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$74, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$24


DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$26, DW_AT_name("QPOSCTL_BITS")
	.dwattr DW$T$26, DW_AT_byte_size(0x01)
DW$75	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$75, DW_AT_name("PCSPW"), DW_AT_symbol_name("_PCSPW")
	.dwattr DW$75, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x0c)
	.dwattr DW$75, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$75, DW_AT_accessibility(DW_ACCESS_public)
DW$76	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$76, DW_AT_name("PCE"), DW_AT_symbol_name("_PCE")
	.dwattr DW$76, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$76, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$76, DW_AT_accessibility(DW_ACCESS_public)
DW$77	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$77, DW_AT_name("PCPOL"), DW_AT_symbol_name("_PCPOL")
	.dwattr DW$77, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$77, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$77, DW_AT_accessibility(DW_ACCESS_public)
DW$78	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$78, DW_AT_name("PCLOAD"), DW_AT_symbol_name("_PCLOAD")
	.dwattr DW$78, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$78, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$78, DW_AT_accessibility(DW_ACCESS_public)
DW$79	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$79, DW_AT_name("PCSHDW"), DW_AT_symbol_name("_PCSHDW")
	.dwattr DW$79, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$79, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$79, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$26


DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$28, DW_AT_name("QEINT_BITS")
	.dwattr DW$T$28, DW_AT_byte_size(0x01)
DW$80	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$80, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$80, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$80, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$80, DW_AT_accessibility(DW_ACCESS_public)
DW$81	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$81, DW_AT_name("PCE"), DW_AT_symbol_name("_PCE")
	.dwattr DW$81, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$81, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$81, DW_AT_accessibility(DW_ACCESS_public)
DW$82	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$82, DW_AT_name("QPE"), DW_AT_symbol_name("_QPE")
	.dwattr DW$82, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$82, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$82, DW_AT_accessibility(DW_ACCESS_public)
DW$83	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$83, DW_AT_name("QDC"), DW_AT_symbol_name("_QDC")
	.dwattr DW$83, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$83, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$83, DW_AT_accessibility(DW_ACCESS_public)
DW$84	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$84, DW_AT_name("WTO"), DW_AT_symbol_name("_WTO")
	.dwattr DW$84, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$84, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$84, DW_AT_accessibility(DW_ACCESS_public)
DW$85	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$85, DW_AT_name("PCU"), DW_AT_symbol_name("_PCU")
	.dwattr DW$85, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$85, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$85, DW_AT_accessibility(DW_ACCESS_public)
DW$86	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$86, DW_AT_name("PCO"), DW_AT_symbol_name("_PCO")
	.dwattr DW$86, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$86, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$86, DW_AT_accessibility(DW_ACCESS_public)
DW$87	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$87, DW_AT_name("PCR"), DW_AT_symbol_name("_PCR")
	.dwattr DW$87, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$87, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$87, DW_AT_accessibility(DW_ACCESS_public)
DW$88	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$88, DW_AT_name("PCM"), DW_AT_symbol_name("_PCM")
	.dwattr DW$88, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$88, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$88, DW_AT_accessibility(DW_ACCESS_public)
DW$89	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$89, DW_AT_name("SEL"), DW_AT_symbol_name("_SEL")
	.dwattr DW$89, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$89, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$89, DW_AT_accessibility(DW_ACCESS_public)
DW$90	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$90, DW_AT_name("IEL"), DW_AT_symbol_name("_IEL")
	.dwattr DW$90, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$90, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$90, DW_AT_accessibility(DW_ACCESS_public)
DW$91	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$91, DW_AT_name("UTO"), DW_AT_symbol_name("_UTO")
	.dwattr DW$91, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$91, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$91, DW_AT_accessibility(DW_ACCESS_public)
DW$92	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$92, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$92, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$92, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$92, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$28


DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$30, DW_AT_name("QFLG_BITS")
	.dwattr DW$T$30, DW_AT_byte_size(0x01)
DW$93	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$93, DW_AT_name("INT"), DW_AT_symbol_name("_INT")
	.dwattr DW$93, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$93, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$93, DW_AT_accessibility(DW_ACCESS_public)
DW$94	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$94, DW_AT_name("PCE"), DW_AT_symbol_name("_PCE")
	.dwattr DW$94, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$94, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$94, DW_AT_accessibility(DW_ACCESS_public)
DW$95	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$95, DW_AT_name("PHE"), DW_AT_symbol_name("_PHE")
	.dwattr DW$95, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$95, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$95, DW_AT_accessibility(DW_ACCESS_public)
DW$96	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$96, DW_AT_name("QDC"), DW_AT_symbol_name("_QDC")
	.dwattr DW$96, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$96, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$96, DW_AT_accessibility(DW_ACCESS_public)
DW$97	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$97, DW_AT_name("WTO"), DW_AT_symbol_name("_WTO")
	.dwattr DW$97, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$97, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$97, DW_AT_accessibility(DW_ACCESS_public)
DW$98	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$98, DW_AT_name("PCU"), DW_AT_symbol_name("_PCU")
	.dwattr DW$98, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$98, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$98, DW_AT_accessibility(DW_ACCESS_public)
DW$99	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$99, DW_AT_name("PCO"), DW_AT_symbol_name("_PCO")
	.dwattr DW$99, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$99, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$99, DW_AT_accessibility(DW_ACCESS_public)
DW$100	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$100, DW_AT_name("PCR"), DW_AT_symbol_name("_PCR")
	.dwattr DW$100, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$100, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$100, DW_AT_accessibility(DW_ACCESS_public)
DW$101	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$101, DW_AT_name("PCM"), DW_AT_symbol_name("_PCM")
	.dwattr DW$101, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$101, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$101, DW_AT_accessibility(DW_ACCESS_public)
DW$102	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$102, DW_AT_name("SEL"), DW_AT_symbol_name("_SEL")
	.dwattr DW$102, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$102, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$102, DW_AT_accessibility(DW_ACCESS_public)
DW$103	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$103, DW_AT_name("IEL"), DW_AT_symbol_name("_IEL")
	.dwattr DW$103, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$103, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$103, DW_AT_accessibility(DW_ACCESS_public)
DW$104	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$104, DW_AT_name("UTO"), DW_AT_symbol_name("_UTO")
	.dwattr DW$104, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$104, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$104, DW_AT_accessibility(DW_ACCESS_public)
DW$105	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$105, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$105, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$105, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$105, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$30


DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$32, DW_AT_name("QFRC_BITS")
	.dwattr DW$T$32, DW_AT_byte_size(0x01)
DW$106	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$106, DW_AT_name("reserved"), DW_AT_symbol_name("_reserved")
	.dwattr DW$106, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$106, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$106, DW_AT_accessibility(DW_ACCESS_public)
DW$107	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$107, DW_AT_name("PCE"), DW_AT_symbol_name("_PCE")
	.dwattr DW$107, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$107, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$107, DW_AT_accessibility(DW_ACCESS_public)
DW$108	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$108, DW_AT_name("PHE"), DW_AT_symbol_name("_PHE")
	.dwattr DW$108, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$108, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$108, DW_AT_accessibility(DW_ACCESS_public)
DW$109	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$109, DW_AT_name("QDC"), DW_AT_symbol_name("_QDC")
	.dwattr DW$109, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$109, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$109, DW_AT_accessibility(DW_ACCESS_public)
DW$110	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$110, DW_AT_name("WTO"), DW_AT_symbol_name("_WTO")
	.dwattr DW$110, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$110, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$110, DW_AT_accessibility(DW_ACCESS_public)
DW$111	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$111, DW_AT_name("PCU"), DW_AT_symbol_name("_PCU")
	.dwattr DW$111, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$111, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$111, DW_AT_accessibility(DW_ACCESS_public)
DW$112	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$112, DW_AT_name("PCO"), DW_AT_symbol_name("_PCO")
	.dwattr DW$112, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$112, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$112, DW_AT_accessibility(DW_ACCESS_public)
DW$113	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$113, DW_AT_name("PCR"), DW_AT_symbol_name("_PCR")
	.dwattr DW$113, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$113, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$113, DW_AT_accessibility(DW_ACCESS_public)
DW$114	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$114, DW_AT_name("PCM"), DW_AT_symbol_name("_PCM")
	.dwattr DW$114, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$114, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$114, DW_AT_accessibility(DW_ACCESS_public)
DW$115	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$115, DW_AT_name("SEL"), DW_AT_symbol_name("_SEL")
	.dwattr DW$115, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$115, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$115, DW_AT_accessibility(DW_ACCESS_public)
DW$116	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$116, DW_AT_name("IEL"), DW_AT_symbol_name("_IEL")
	.dwattr DW$116, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$116, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$116, DW_AT_accessibility(DW_ACCESS_public)
DW$117	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$117, DW_AT_name("UTO"), DW_AT_symbol_name("_UTO")
	.dwattr DW$117, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$117, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$117, DW_AT_accessibility(DW_ACCESS_public)
DW$118	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$118, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$118, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$118, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$118, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$32


DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$34, DW_AT_name("QEPSTS_BITS")
	.dwattr DW$T$34, DW_AT_byte_size(0x01)
DW$119	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$119, DW_AT_name("PCEF"), DW_AT_symbol_name("_PCEF")
	.dwattr DW$119, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$119, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$119, DW_AT_accessibility(DW_ACCESS_public)
DW$120	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$120, DW_AT_name("FIMF"), DW_AT_symbol_name("_FIMF")
	.dwattr DW$120, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$120, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$120, DW_AT_accessibility(DW_ACCESS_public)
DW$121	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$121, DW_AT_name("CDEF"), DW_AT_symbol_name("_CDEF")
	.dwattr DW$121, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$121, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$121, DW_AT_accessibility(DW_ACCESS_public)
DW$122	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$122, DW_AT_name("COEF"), DW_AT_symbol_name("_COEF")
	.dwattr DW$122, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$122, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$122, DW_AT_accessibility(DW_ACCESS_public)
DW$123	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$123, DW_AT_name("QDLF"), DW_AT_symbol_name("_QDLF")
	.dwattr DW$123, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$123, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$123, DW_AT_accessibility(DW_ACCESS_public)
DW$124	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$124, DW_AT_name("QDF"), DW_AT_symbol_name("_QDF")
	.dwattr DW$124, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$124, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$124, DW_AT_accessibility(DW_ACCESS_public)
DW$125	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$125, DW_AT_name("FIDF"), DW_AT_symbol_name("_FIDF")
	.dwattr DW$125, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$125, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$125, DW_AT_accessibility(DW_ACCESS_public)
DW$126	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$126, DW_AT_name("UPEVNT"), DW_AT_symbol_name("_UPEVNT")
	.dwattr DW$126, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$126, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$126, DW_AT_accessibility(DW_ACCESS_public)
DW$127	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$127, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$127, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$127, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$127, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$34


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

DW$128	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$128, DW_AT_location[DW_OP_reg0]
DW$129	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$129, DW_AT_location[DW_OP_reg1]
DW$130	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$130, DW_AT_location[DW_OP_reg2]
DW$131	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$131, DW_AT_location[DW_OP_reg3]
DW$132	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$132, DW_AT_location[DW_OP_reg4]
DW$133	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$133, DW_AT_location[DW_OP_reg5]
DW$134	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$134, DW_AT_location[DW_OP_reg6]
DW$135	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$135, DW_AT_location[DW_OP_reg7]
DW$136	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$136, DW_AT_location[DW_OP_reg8]
DW$137	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$137, DW_AT_location[DW_OP_reg9]
DW$138	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$138, DW_AT_location[DW_OP_reg10]
DW$139	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$139, DW_AT_location[DW_OP_reg11]
DW$140	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$140, DW_AT_location[DW_OP_reg12]
DW$141	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$141, DW_AT_location[DW_OP_reg13]
DW$142	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$142, DW_AT_location[DW_OP_reg14]
DW$143	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$143, DW_AT_location[DW_OP_reg15]
DW$144	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$144, DW_AT_location[DW_OP_reg16]
DW$145	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$145, DW_AT_location[DW_OP_reg17]
DW$146	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$146, DW_AT_location[DW_OP_reg18]
DW$147	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$147, DW_AT_location[DW_OP_reg19]
DW$148	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$148, DW_AT_location[DW_OP_reg20]
DW$149	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$149, DW_AT_location[DW_OP_reg21]
DW$150	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$150, DW_AT_location[DW_OP_reg22]
DW$151	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$151, DW_AT_location[DW_OP_reg23]
DW$152	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$152, DW_AT_location[DW_OP_reg24]
DW$153	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$153, DW_AT_location[DW_OP_reg25]
DW$154	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$154, DW_AT_location[DW_OP_reg26]
DW$155	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$155, DW_AT_location[DW_OP_reg27]
DW$156	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$156, DW_AT_location[DW_OP_reg28]
DW$157	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$157, DW_AT_location[DW_OP_reg29]
DW$158	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$158, DW_AT_location[DW_OP_reg30]
DW$159	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$159, DW_AT_location[DW_OP_reg31]
DW$160	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$160, DW_AT_location[DW_OP_regx 0x20]
DW$161	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$161, DW_AT_location[DW_OP_regx 0x21]
DW$162	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$162, DW_AT_location[DW_OP_regx 0x22]
DW$163	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$163, DW_AT_location[DW_OP_regx 0x23]
DW$164	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$164, DW_AT_location[DW_OP_regx 0x24]
DW$165	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$165, DW_AT_location[DW_OP_regx 0x25]
DW$166	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$166, DW_AT_location[DW_OP_regx 0x26]
DW$167	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$167, DW_AT_location[DW_OP_regx 0x27]
DW$168	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$168, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU

