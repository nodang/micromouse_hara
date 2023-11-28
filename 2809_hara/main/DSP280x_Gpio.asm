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
DW$1	.dwtag  DW_TAG_variable, DW_AT_name("GpioCtrlRegs"), DW_AT_symbol_name("_GpioCtrlRegs")
	.dwattr DW$1, DW_AT_type(*DW$T$51)
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
;	..\Compiler\bin\opt2000.exe C:\Users\노호진\AppData\Local\Temp\TI28810 C:\Users\노호진\AppData\Local\Temp\TI2884 
;	..\Compiler\bin\ac2000.exe --keep_unneeded_types -D_INLINE -DLARGE_MODEL -I..\include --version=28 --keep_unneeded_types --mem_model:code=flat --mem_model:data=large -m --i_output_file C:\Users\노호진\AppData\Local\Temp\TI2882 --template_info_file C:\Users\노호진\AppData\Local\Temp\TI2886 --object_file DSP280x_Gpio.obj --embed_opts 10 --call_assumptions=0 --mem_model:code=flat --mem_model:data=large --opt_for_speed --opt_level=3 --optimizer_comments --optimizer_interlist --program_level_compile 
	.sect	".text"
	.global	_InitGpio

DW$2	.dwtag  DW_TAG_subprogram, DW_AT_name("InitGpio"), DW_AT_symbol_name("_InitGpio")
	.dwattr DW$2, DW_AT_low_pc(_InitGpio)
	.dwattr DW$2, DW_AT_high_pc(0x00)
	.dwattr DW$2, DW_AT_begin_file("DSP280x_Gpio.c")
	.dwattr DW$2, DW_AT_begin_line(0x18)
	.dwattr DW$2, DW_AT_begin_column(0x06)
	.dwpsn	"DSP280x_Gpio.c",25,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _InitGpio                     FR SIZE:   0           *
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
_InitGpio:
;*** 26	-----------------------    asm(" EALLOW");
;*** 65	-----------------------    GpioCtrlRegs.GPAMUX1.all = 85uL;
;*** 105	-----------------------    GpioCtrlRegs.GPAMUX2.all = 0x50a0515uL;
;*** 116	-----------------------    GpioCtrlRegs.GPBMUX1.all = 0uL;
;*** 159	-----------------------    GpioCtrlRegs.GPADIR.all = 0xe8cdcfffuL;
;*** 168	-----------------------    GpioCtrlRegs.GPBDIR.all = 3uL;
;*** 183	-----------------------    GpioCtrlRegs.GPAPUD.all = 0xcccfffffuL;
;*** 184	-----------------------    GpioCtrlRegs.GPBPUD.all = 0xffffffffuL;
;*** 186	-----------------------    GpioCtrlRegs.GPAQSEL1.all = 0uL;
;*** 187	-----------------------    GpioCtrlRegs.GPAQSEL2.all = 0uL;
;*** 188	-----------------------    GpioCtrlRegs.GPBQSEL1.all = 0uL;
;*** 190	-----------------------    asm(" EDIS");
;*** 190	-----------------------    return;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
	.dwpsn	"DSP280x_Gpio.c",26,4
 EALLOW
	.dwpsn	"DSP280x_Gpio.c",65,2
        MOVB      ACC,#85
        MOVW      DP,#_GpioCtrlRegs+6
        MOVL      @_GpioCtrlRegs+6,ACC  ; |65| 
	.dwpsn	"DSP280x_Gpio.c",105,2
        MOV       PH,#1290
        MOV       PL,#1301
        MOVL      @_GpioCtrlRegs+8,P    ; |105| 
	.dwpsn	"DSP280x_Gpio.c",116,2
        MOVB      ACC,#0
        MOVL      @_GpioCtrlRegs+22,ACC ; |116| 
	.dwpsn	"DSP280x_Gpio.c",159,2
        MOV       PH,#59597
        MOV       PL,#53247
        MOVL      @_GpioCtrlRegs+10,P   ; |159| 
	.dwpsn	"DSP280x_Gpio.c",168,2
        MOVB      ACC,#3
        MOVL      @_GpioCtrlRegs+26,ACC ; |168| 
	.dwpsn	"DSP280x_Gpio.c",183,2
        MOV       PH,#52431
        MOV       PL,#65535
        MOVL      @_GpioCtrlRegs+12,P   ; |183| 
	.dwpsn	"DSP280x_Gpio.c",184,2
        MOV       PH,#65535
        MOVL      @_GpioCtrlRegs+28,P   ; |184| 
	.dwpsn	"DSP280x_Gpio.c",186,2
        MOVB      ACC,#0
        MOVL      @_GpioCtrlRegs+2,ACC  ; |186| 
	.dwpsn	"DSP280x_Gpio.c",187,2
        MOVL      @_GpioCtrlRegs+4,ACC  ; |187| 
	.dwpsn	"DSP280x_Gpio.c",188,2
        MOVL      @_GpioCtrlRegs+18,ACC ; |188| 
	.dwpsn	"DSP280x_Gpio.c",190,2
 EDIS
	.dwpsn	"DSP280x_Gpio.c",191,1
        SPM       #0
        LRETR
        ; return occurs
	.dwattr DW$2, DW_AT_end_file("DSP280x_Gpio.c")
	.dwattr DW$2, DW_AT_end_line(0xbf)
	.dwattr DW$2, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$2

;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_GpioCtrlRegs

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

DW$T$39	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$39, DW_AT_language(DW_LANG_C)
DW$3	.dwtag  DW_TAG_far_type
	.dwattr DW$3, DW_AT_type(*DW$T$38)
DW$T$51	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$51, DW_AT_type(*DW$3)

DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$38, DW_AT_name("GPIO_CTRL_REGS")
	.dwattr DW$T$38, DW_AT_byte_size(0x40)
DW$4	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$4, DW_AT_name("GPACTRL"), DW_AT_symbol_name("_GPACTRL")
	.dwattr DW$4, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$4, DW_AT_accessibility(DW_ACCESS_public)
DW$5	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$5, DW_AT_name("GPAQSEL1"), DW_AT_symbol_name("_GPAQSEL1")
	.dwattr DW$5, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$5, DW_AT_accessibility(DW_ACCESS_public)
DW$6	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$6, DW_AT_name("GPAQSEL2"), DW_AT_symbol_name("_GPAQSEL2")
	.dwattr DW$6, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$6, DW_AT_accessibility(DW_ACCESS_public)
DW$7	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$7, DW_AT_name("GPAMUX1"), DW_AT_symbol_name("_GPAMUX1")
	.dwattr DW$7, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$7, DW_AT_accessibility(DW_ACCESS_public)
DW$8	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$8, DW_AT_name("GPAMUX2"), DW_AT_symbol_name("_GPAMUX2")
	.dwattr DW$8, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$8, DW_AT_accessibility(DW_ACCESS_public)
DW$9	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$28)
	.dwattr DW$9, DW_AT_name("GPADIR"), DW_AT_symbol_name("_GPADIR")
	.dwattr DW$9, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$9, DW_AT_accessibility(DW_ACCESS_public)
DW$10	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$28)
	.dwattr DW$10, DW_AT_name("GPAPUD"), DW_AT_symbol_name("_GPAPUD")
	.dwattr DW$10, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$10, DW_AT_accessibility(DW_ACCESS_public)
DW$11	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$11, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$11, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$11, DW_AT_accessibility(DW_ACCESS_public)
DW$12	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$30)
	.dwattr DW$12, DW_AT_name("GPBCTRL"), DW_AT_symbol_name("_GPBCTRL")
	.dwattr DW$12, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$12, DW_AT_accessibility(DW_ACCESS_public)
DW$13	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$13, DW_AT_name("GPBQSEL1"), DW_AT_symbol_name("_GPBQSEL1")
	.dwattr DW$13, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$13, DW_AT_accessibility(DW_ACCESS_public)
DW$14	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$14, DW_AT_name("GPBQSEL2"), DW_AT_symbol_name("_GPBQSEL2")
	.dwattr DW$14, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$14, DW_AT_accessibility(DW_ACCESS_public)
DW$15	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$15, DW_AT_name("GPBMUX1"), DW_AT_symbol_name("_GPBMUX1")
	.dwattr DW$15, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$15, DW_AT_accessibility(DW_ACCESS_public)
DW$16	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$16, DW_AT_name("GPBMUX2"), DW_AT_symbol_name("_GPBMUX2")
	.dwattr DW$16, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$16, DW_AT_accessibility(DW_ACCESS_public)
DW$17	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$17, DW_AT_name("GPBDIR"), DW_AT_symbol_name("_GPBDIR")
	.dwattr DW$17, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$17, DW_AT_accessibility(DW_ACCESS_public)
DW$18	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$18, DW_AT_name("GPBPUD"), DW_AT_symbol_name("_GPBPUD")
	.dwattr DW$18, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$18, DW_AT_accessibility(DW_ACCESS_public)
DW$19	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$37)
	.dwattr DW$19, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$19, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$19, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$38


DW$T$37	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$37, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$37, DW_AT_byte_size(0x21)
DW$20	.dwtag  DW_TAG_subrange_type
	.dwattr DW$20, DW_AT_upper_bound(0x20)
	.dwendtag DW$T$37

DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32"), DW_AT_type(*DW$T$13)
	.dwattr DW$T$21, DW_AT_language(DW_LANG_C)

DW$T$22	.dwtag  DW_TAG_union_type
	.dwattr DW$T$22, DW_AT_name("GPACTRL_REG")
	.dwattr DW$T$22, DW_AT_byte_size(0x02)
DW$21	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$21, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$21, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$21, DW_AT_accessibility(DW_ACCESS_public)
DW$22	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$22, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$22, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$22, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$22


DW$T$24	.dwtag  DW_TAG_union_type
	.dwattr DW$T$24, DW_AT_name("GPA1_REG")
	.dwattr DW$T$24, DW_AT_byte_size(0x02)
DW$23	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$23, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$23, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$23, DW_AT_accessibility(DW_ACCESS_public)
DW$24	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$24, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$24, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$24, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$24


DW$T$26	.dwtag  DW_TAG_union_type
	.dwattr DW$T$26, DW_AT_name("GPA2_REG")
	.dwattr DW$T$26, DW_AT_byte_size(0x02)
DW$25	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$25, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$25, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$25, DW_AT_accessibility(DW_ACCESS_public)
DW$26	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$26, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$26, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$26, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$26


DW$T$28	.dwtag  DW_TAG_union_type
	.dwattr DW$T$28, DW_AT_name("GPADAT_REG")
	.dwattr DW$T$28, DW_AT_byte_size(0x02)
DW$27	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$27, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$27, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$27, DW_AT_accessibility(DW_ACCESS_public)
DW$28	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$28, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$28, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$28, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$28


DW$T$30	.dwtag  DW_TAG_union_type
	.dwattr DW$T$30, DW_AT_name("GPBCTRL_REG")
	.dwattr DW$T$30, DW_AT_byte_size(0x02)
DW$29	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$29, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$29, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$29, DW_AT_accessibility(DW_ACCESS_public)
DW$30	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$30, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$30, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$30, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$30


DW$T$32	.dwtag  DW_TAG_union_type
	.dwattr DW$T$32, DW_AT_name("GPB1_REG")
	.dwattr DW$T$32, DW_AT_byte_size(0x02)
DW$31	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$31, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$31, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$31, DW_AT_accessibility(DW_ACCESS_public)
DW$32	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$32, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$32, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$32, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$32


DW$T$34	.dwtag  DW_TAG_union_type
	.dwattr DW$T$34, DW_AT_name("GPB2_REG")
	.dwattr DW$T$34, DW_AT_byte_size(0x02)
DW$33	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$33, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$33, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$33, DW_AT_accessibility(DW_ACCESS_public)
DW$34	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$33)
	.dwattr DW$34, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$34, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$34, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$34


DW$T$36	.dwtag  DW_TAG_union_type
	.dwattr DW$T$36, DW_AT_name("GPBDAT_REG")
	.dwattr DW$T$36, DW_AT_byte_size(0x02)
DW$35	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$35, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$35, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$35, DW_AT_accessibility(DW_ACCESS_public)
DW$36	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$35)
	.dwattr DW$36, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$36, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$36, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$36

DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)
DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x02)

DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$20, DW_AT_name("GPACTRL_BITS")
	.dwattr DW$T$20, DW_AT_byte_size(0x02)
DW$37	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$37, DW_AT_name("QUALPRD0"), DW_AT_symbol_name("_QUALPRD0")
	.dwattr DW$37, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x08)
	.dwattr DW$37, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$37, DW_AT_accessibility(DW_ACCESS_public)
DW$38	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$38, DW_AT_name("QUALPRD1"), DW_AT_symbol_name("_QUALPRD1")
	.dwattr DW$38, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$38, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$38, DW_AT_accessibility(DW_ACCESS_public)
DW$39	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$39, DW_AT_name("QUALPRD2"), DW_AT_symbol_name("_QUALPRD2")
	.dwattr DW$39, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x08)
	.dwattr DW$39, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$39, DW_AT_accessibility(DW_ACCESS_public)
DW$40	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$40, DW_AT_name("QUALPRD3"), DW_AT_symbol_name("_QUALPRD3")
	.dwattr DW$40, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$40, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$40, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20


DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$23, DW_AT_name("GPA1_BITS")
	.dwattr DW$T$23, DW_AT_byte_size(0x02)
DW$41	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$41, DW_AT_name("GPIO0"), DW_AT_symbol_name("_GPIO0")
	.dwattr DW$41, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x02)
	.dwattr DW$41, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$41, DW_AT_accessibility(DW_ACCESS_public)
DW$42	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$42, DW_AT_name("GPIO1"), DW_AT_symbol_name("_GPIO1")
	.dwattr DW$42, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x02)
	.dwattr DW$42, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$42, DW_AT_accessibility(DW_ACCESS_public)
DW$43	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$43, DW_AT_name("GPIO2"), DW_AT_symbol_name("_GPIO2")
	.dwattr DW$43, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x02)
	.dwattr DW$43, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$43, DW_AT_accessibility(DW_ACCESS_public)
DW$44	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$44, DW_AT_name("GPIO3"), DW_AT_symbol_name("_GPIO3")
	.dwattr DW$44, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x02)
	.dwattr DW$44, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$44, DW_AT_accessibility(DW_ACCESS_public)
DW$45	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$45, DW_AT_name("GPIO4"), DW_AT_symbol_name("_GPIO4")
	.dwattr DW$45, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x02)
	.dwattr DW$45, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$45, DW_AT_accessibility(DW_ACCESS_public)
DW$46	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$46, DW_AT_name("GPIO5"), DW_AT_symbol_name("_GPIO5")
	.dwattr DW$46, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x02)
	.dwattr DW$46, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$46, DW_AT_accessibility(DW_ACCESS_public)
DW$47	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$47, DW_AT_name("GPIO6"), DW_AT_symbol_name("_GPIO6")
	.dwattr DW$47, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x02)
	.dwattr DW$47, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$47, DW_AT_accessibility(DW_ACCESS_public)
DW$48	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$48, DW_AT_name("GPIO7"), DW_AT_symbol_name("_GPIO7")
	.dwattr DW$48, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x02)
	.dwattr DW$48, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$48, DW_AT_accessibility(DW_ACCESS_public)
DW$49	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$49, DW_AT_name("GPIO8"), DW_AT_symbol_name("_GPIO8")
	.dwattr DW$49, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x02)
	.dwattr DW$49, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$49, DW_AT_accessibility(DW_ACCESS_public)
DW$50	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$50, DW_AT_name("GPIO9"), DW_AT_symbol_name("_GPIO9")
	.dwattr DW$50, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x02)
	.dwattr DW$50, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$50, DW_AT_accessibility(DW_ACCESS_public)
DW$51	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$51, DW_AT_name("GPIO10"), DW_AT_symbol_name("_GPIO10")
	.dwattr DW$51, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x02)
	.dwattr DW$51, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$51, DW_AT_accessibility(DW_ACCESS_public)
DW$52	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$52, DW_AT_name("GPIO11"), DW_AT_symbol_name("_GPIO11")
	.dwattr DW$52, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x02)
	.dwattr DW$52, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$52, DW_AT_accessibility(DW_ACCESS_public)
DW$53	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$53, DW_AT_name("GPIO12"), DW_AT_symbol_name("_GPIO12")
	.dwattr DW$53, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x02)
	.dwattr DW$53, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$53, DW_AT_accessibility(DW_ACCESS_public)
DW$54	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$54, DW_AT_name("GPIO13"), DW_AT_symbol_name("_GPIO13")
	.dwattr DW$54, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x02)
	.dwattr DW$54, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$54, DW_AT_accessibility(DW_ACCESS_public)
DW$55	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$55, DW_AT_name("GPIO14"), DW_AT_symbol_name("_GPIO14")
	.dwattr DW$55, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x02)
	.dwattr DW$55, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$55, DW_AT_accessibility(DW_ACCESS_public)
DW$56	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$56, DW_AT_name("GPIO15"), DW_AT_symbol_name("_GPIO15")
	.dwattr DW$56, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x02)
	.dwattr DW$56, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$56, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$23


DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$25, DW_AT_name("GPA2_BITS")
	.dwattr DW$T$25, DW_AT_byte_size(0x02)
DW$57	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$57, DW_AT_name("GPIO16"), DW_AT_symbol_name("_GPIO16")
	.dwattr DW$57, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x02)
	.dwattr DW$57, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$57, DW_AT_accessibility(DW_ACCESS_public)
DW$58	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$58, DW_AT_name("GPIO17"), DW_AT_symbol_name("_GPIO17")
	.dwattr DW$58, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x02)
	.dwattr DW$58, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$58, DW_AT_accessibility(DW_ACCESS_public)
DW$59	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$59, DW_AT_name("GPIO18"), DW_AT_symbol_name("_GPIO18")
	.dwattr DW$59, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x02)
	.dwattr DW$59, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$59, DW_AT_accessibility(DW_ACCESS_public)
DW$60	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$60, DW_AT_name("GPIO19"), DW_AT_symbol_name("_GPIO19")
	.dwattr DW$60, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x02)
	.dwattr DW$60, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$60, DW_AT_accessibility(DW_ACCESS_public)
DW$61	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$61, DW_AT_name("GPIO20"), DW_AT_symbol_name("_GPIO20")
	.dwattr DW$61, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x02)
	.dwattr DW$61, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$61, DW_AT_accessibility(DW_ACCESS_public)
DW$62	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$62, DW_AT_name("GPIO21"), DW_AT_symbol_name("_GPIO21")
	.dwattr DW$62, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x02)
	.dwattr DW$62, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$62, DW_AT_accessibility(DW_ACCESS_public)
DW$63	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$63, DW_AT_name("GPIO22"), DW_AT_symbol_name("_GPIO22")
	.dwattr DW$63, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x02)
	.dwattr DW$63, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$63, DW_AT_accessibility(DW_ACCESS_public)
DW$64	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$64, DW_AT_name("GPIO23"), DW_AT_symbol_name("_GPIO23")
	.dwattr DW$64, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x02)
	.dwattr DW$64, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$64, DW_AT_accessibility(DW_ACCESS_public)
DW$65	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$65, DW_AT_name("GPIO24"), DW_AT_symbol_name("_GPIO24")
	.dwattr DW$65, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x02)
	.dwattr DW$65, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$65, DW_AT_accessibility(DW_ACCESS_public)
DW$66	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$66, DW_AT_name("GPIO25"), DW_AT_symbol_name("_GPIO25")
	.dwattr DW$66, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x02)
	.dwattr DW$66, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$66, DW_AT_accessibility(DW_ACCESS_public)
DW$67	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$67, DW_AT_name("GPIO26"), DW_AT_symbol_name("_GPIO26")
	.dwattr DW$67, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x02)
	.dwattr DW$67, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$67, DW_AT_accessibility(DW_ACCESS_public)
DW$68	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$68, DW_AT_name("GPIO27"), DW_AT_symbol_name("_GPIO27")
	.dwattr DW$68, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x02)
	.dwattr DW$68, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$68, DW_AT_accessibility(DW_ACCESS_public)
DW$69	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$69, DW_AT_name("GPIO28"), DW_AT_symbol_name("_GPIO28")
	.dwattr DW$69, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x02)
	.dwattr DW$69, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$69, DW_AT_accessibility(DW_ACCESS_public)
DW$70	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$70, DW_AT_name("GPIO29"), DW_AT_symbol_name("_GPIO29")
	.dwattr DW$70, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x02)
	.dwattr DW$70, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$70, DW_AT_accessibility(DW_ACCESS_public)
DW$71	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$71, DW_AT_name("GPIO30"), DW_AT_symbol_name("_GPIO30")
	.dwattr DW$71, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x02)
	.dwattr DW$71, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$71, DW_AT_accessibility(DW_ACCESS_public)
DW$72	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$72, DW_AT_name("GPIO31"), DW_AT_symbol_name("_GPIO31")
	.dwattr DW$72, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x02)
	.dwattr DW$72, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$72, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$25


DW$T$27	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$27, DW_AT_name("GPADAT_BITS")
	.dwattr DW$T$27, DW_AT_byte_size(0x02)
DW$73	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$73, DW_AT_name("GPIO0"), DW_AT_symbol_name("_GPIO0")
	.dwattr DW$73, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$73, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$73, DW_AT_accessibility(DW_ACCESS_public)
DW$74	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$74, DW_AT_name("GPIO1"), DW_AT_symbol_name("_GPIO1")
	.dwattr DW$74, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$74, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$74, DW_AT_accessibility(DW_ACCESS_public)
DW$75	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$75, DW_AT_name("GPIO2"), DW_AT_symbol_name("_GPIO2")
	.dwattr DW$75, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$75, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$75, DW_AT_accessibility(DW_ACCESS_public)
DW$76	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$76, DW_AT_name("GPIO3"), DW_AT_symbol_name("_GPIO3")
	.dwattr DW$76, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$76, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$76, DW_AT_accessibility(DW_ACCESS_public)
DW$77	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$77, DW_AT_name("GPIO4"), DW_AT_symbol_name("_GPIO4")
	.dwattr DW$77, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$77, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$77, DW_AT_accessibility(DW_ACCESS_public)
DW$78	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$78, DW_AT_name("GPIO5"), DW_AT_symbol_name("_GPIO5")
	.dwattr DW$78, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$78, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$78, DW_AT_accessibility(DW_ACCESS_public)
DW$79	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$79, DW_AT_name("GPIO6"), DW_AT_symbol_name("_GPIO6")
	.dwattr DW$79, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$79, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$79, DW_AT_accessibility(DW_ACCESS_public)
DW$80	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$80, DW_AT_name("GPIO7"), DW_AT_symbol_name("_GPIO7")
	.dwattr DW$80, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$80, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$80, DW_AT_accessibility(DW_ACCESS_public)
DW$81	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$81, DW_AT_name("GPIO8"), DW_AT_symbol_name("_GPIO8")
	.dwattr DW$81, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$81, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$81, DW_AT_accessibility(DW_ACCESS_public)
DW$82	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$82, DW_AT_name("GPIO9"), DW_AT_symbol_name("_GPIO9")
	.dwattr DW$82, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$82, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$82, DW_AT_accessibility(DW_ACCESS_public)
DW$83	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$83, DW_AT_name("GPIO10"), DW_AT_symbol_name("_GPIO10")
	.dwattr DW$83, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$83, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$83, DW_AT_accessibility(DW_ACCESS_public)
DW$84	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$84, DW_AT_name("GPIO11"), DW_AT_symbol_name("_GPIO11")
	.dwattr DW$84, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$84, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$84, DW_AT_accessibility(DW_ACCESS_public)
DW$85	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$85, DW_AT_name("GPIO12"), DW_AT_symbol_name("_GPIO12")
	.dwattr DW$85, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$85, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$85, DW_AT_accessibility(DW_ACCESS_public)
DW$86	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$86, DW_AT_name("GPIO13"), DW_AT_symbol_name("_GPIO13")
	.dwattr DW$86, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$86, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$86, DW_AT_accessibility(DW_ACCESS_public)
DW$87	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$87, DW_AT_name("GPIO14"), DW_AT_symbol_name("_GPIO14")
	.dwattr DW$87, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$87, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$87, DW_AT_accessibility(DW_ACCESS_public)
DW$88	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$88, DW_AT_name("GPIO15"), DW_AT_symbol_name("_GPIO15")
	.dwattr DW$88, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$88, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$88, DW_AT_accessibility(DW_ACCESS_public)
DW$89	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$89, DW_AT_name("GPIO16"), DW_AT_symbol_name("_GPIO16")
	.dwattr DW$89, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$89, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$89, DW_AT_accessibility(DW_ACCESS_public)
DW$90	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$90, DW_AT_name("GPIO17"), DW_AT_symbol_name("_GPIO17")
	.dwattr DW$90, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$90, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$90, DW_AT_accessibility(DW_ACCESS_public)
DW$91	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$91, DW_AT_name("GPIO18"), DW_AT_symbol_name("_GPIO18")
	.dwattr DW$91, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$91, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$91, DW_AT_accessibility(DW_ACCESS_public)
DW$92	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$92, DW_AT_name("GPIO19"), DW_AT_symbol_name("_GPIO19")
	.dwattr DW$92, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$92, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$92, DW_AT_accessibility(DW_ACCESS_public)
DW$93	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$93, DW_AT_name("GPIO20"), DW_AT_symbol_name("_GPIO20")
	.dwattr DW$93, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$93, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$93, DW_AT_accessibility(DW_ACCESS_public)
DW$94	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$94, DW_AT_name("GPIO21"), DW_AT_symbol_name("_GPIO21")
	.dwattr DW$94, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$94, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$94, DW_AT_accessibility(DW_ACCESS_public)
DW$95	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$95, DW_AT_name("GPIO22"), DW_AT_symbol_name("_GPIO22")
	.dwattr DW$95, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$95, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$95, DW_AT_accessibility(DW_ACCESS_public)
DW$96	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$96, DW_AT_name("GPIO23"), DW_AT_symbol_name("_GPIO23")
	.dwattr DW$96, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$96, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$96, DW_AT_accessibility(DW_ACCESS_public)
DW$97	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$97, DW_AT_name("GPIO24"), DW_AT_symbol_name("_GPIO24")
	.dwattr DW$97, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$97, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$97, DW_AT_accessibility(DW_ACCESS_public)
DW$98	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$98, DW_AT_name("GPIO25"), DW_AT_symbol_name("_GPIO25")
	.dwattr DW$98, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$98, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$98, DW_AT_accessibility(DW_ACCESS_public)
DW$99	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$99, DW_AT_name("GPIO26"), DW_AT_symbol_name("_GPIO26")
	.dwattr DW$99, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$99, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$99, DW_AT_accessibility(DW_ACCESS_public)
DW$100	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$100, DW_AT_name("GPIO27"), DW_AT_symbol_name("_GPIO27")
	.dwattr DW$100, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$100, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$100, DW_AT_accessibility(DW_ACCESS_public)
DW$101	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$101, DW_AT_name("GPIO28"), DW_AT_symbol_name("_GPIO28")
	.dwattr DW$101, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$101, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$101, DW_AT_accessibility(DW_ACCESS_public)
DW$102	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$102, DW_AT_name("GPIO29"), DW_AT_symbol_name("_GPIO29")
	.dwattr DW$102, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$102, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$102, DW_AT_accessibility(DW_ACCESS_public)
DW$103	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$103, DW_AT_name("GPIO30"), DW_AT_symbol_name("_GPIO30")
	.dwattr DW$103, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$103, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$103, DW_AT_accessibility(DW_ACCESS_public)
DW$104	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$104, DW_AT_name("GPIO31"), DW_AT_symbol_name("_GPIO31")
	.dwattr DW$104, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$104, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$104, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$27


DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$29, DW_AT_name("GPBCTRL_BITS")
	.dwattr DW$T$29, DW_AT_byte_size(0x02)
DW$105	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$105, DW_AT_name("QUALPRD0"), DW_AT_symbol_name("_QUALPRD0")
	.dwattr DW$105, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x08)
	.dwattr DW$105, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$105, DW_AT_accessibility(DW_ACCESS_public)
DW$106	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$106, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$106, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$106, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$106, DW_AT_accessibility(DW_ACCESS_public)
DW$107	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$107, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$107, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x10)
	.dwattr DW$107, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$107, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$29


DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$31, DW_AT_name("GPB1_BITS")
	.dwattr DW$T$31, DW_AT_byte_size(0x02)
DW$108	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$108, DW_AT_name("GPIO32"), DW_AT_symbol_name("_GPIO32")
	.dwattr DW$108, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x02)
	.dwattr DW$108, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$108, DW_AT_accessibility(DW_ACCESS_public)
DW$109	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$109, DW_AT_name("GPIO33"), DW_AT_symbol_name("_GPIO33")
	.dwattr DW$109, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x02)
	.dwattr DW$109, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$109, DW_AT_accessibility(DW_ACCESS_public)
DW$110	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$110, DW_AT_name("GPIO34"), DW_AT_symbol_name("_GPIO34")
	.dwattr DW$110, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x02)
	.dwattr DW$110, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$110, DW_AT_accessibility(DW_ACCESS_public)
DW$111	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$111, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$111, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x02)
	.dwattr DW$111, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$111, DW_AT_accessibility(DW_ACCESS_public)
DW$112	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$112, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$112, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$112, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$112, DW_AT_accessibility(DW_ACCESS_public)
DW$113	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$113, DW_AT_name("rsvd3"), DW_AT_symbol_name("_rsvd3")
	.dwattr DW$113, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x10)
	.dwattr DW$113, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$113, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$31


DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$33, DW_AT_name("GPB2_BITS")
	.dwattr DW$T$33, DW_AT_byte_size(0x02)
DW$114	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$114, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$114, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x10)
	.dwattr DW$114, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$114, DW_AT_accessibility(DW_ACCESS_public)
DW$115	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$115, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$115, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x10)
	.dwattr DW$115, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$115, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$33


DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$35, DW_AT_name("GPBDAT_BITS")
	.dwattr DW$T$35, DW_AT_byte_size(0x02)
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
	.dwendtag DW$T$35

DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x01)

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

