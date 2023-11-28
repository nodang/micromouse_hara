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

DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("DSP28x_usDelay"), DW_AT_symbol_name("_DSP28x_usDelay")
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$66)
	.dwendtag DW$1

DW$3	.dwtag  DW_TAG_variable, DW_AT_name("AdcRegs"), DW_AT_symbol_name("_AdcRegs")
	.dwattr DW$3, DW_AT_type(*DW$T$84)
	.dwattr DW$3, DW_AT_declaration(0x01)
	.dwattr DW$3, DW_AT_external(0x01)
DW$4	.dwtag  DW_TAG_variable, DW_AT_name("SysCtrlRegs"), DW_AT_symbol_name("_SysCtrlRegs")
	.dwattr DW$4, DW_AT_type(*DW$T$88)
	.dwattr DW$4, DW_AT_declaration(0x01)
	.dwattr DW$4, DW_AT_external(0x01)
;	..\Compiler\bin\opt2000.exe C:\Users\노호진\AppData\Local\Temp\TI22010 C:\Users\노호진\AppData\Local\Temp\TI2204 
;	..\Compiler\bin\ac2000.exe --keep_unneeded_types -D_INLINE -DLARGE_MODEL -I..\include --version=28 --keep_unneeded_types --mem_model:code=flat --mem_model:data=large -m --i_output_file C:\Users\노호진\AppData\Local\Temp\TI2202 --template_info_file C:\Users\노호진\AppData\Local\Temp\TI2206 --object_file DSP280x_Adc.obj --embed_opts 10 --call_assumptions=0 --mem_model:code=flat --mem_model:data=large --opt_for_speed --opt_level=3 --optimizer_comments --optimizer_interlist --program_level_compile 
	.sect	".text"
	.global	_InitAdc

DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("InitAdc"), DW_AT_symbol_name("_InitAdc")
	.dwattr DW$5, DW_AT_low_pc(_InitAdc)
	.dwattr DW$5, DW_AT_high_pc(0x00)
	.dwattr DW$5, DW_AT_begin_file("DSP280x_Adc.c")
	.dwattr DW$5, DW_AT_begin_line(0x1d)
	.dwattr DW$5, DW_AT_begin_column(0x06)
	.dwpsn	"DSP280x_Adc.c",30,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _InitAdc                      FR SIZE:   0           *
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
_InitAdc:
;*** 40	-----------------------    asm(" EALLOW");
;*** 41	-----------------------    *(&SysCtrlRegs+12L) |= 0x8u;
;*** 42	-----------------------    asm(" EDIS");
;*** 56	-----------------------    AdcRegs.ADCTRL1.all = 336u;
;*** 59	-----------------------    AdcRegs.ADCTRL2.all = 0u;
;*** 61	-----------------------    C$1 = &AdcRegs;
;*** 61	-----------------------    ((volatile unsigned *)C$1)[1] |= 0x800u;
;*** 62	-----------------------    *(&AdcRegs+1L) |= 0x400u;
;*** 64	-----------------------    AdcRegs.ADCMAXCONV.all = 15u;
;*** 66	-----------------------    AdcRegs.ADCCHSELSEQ1.all = 12816u;
;*** 67	-----------------------    AdcRegs.ADCCHSELSEQ2.all = 30292u;
;*** 68	-----------------------    AdcRegs.ADCCHSELSEQ3.all = 0xba98u;
;*** 69	-----------------------    AdcRegs.ADCCHSELSEQ4.all = 0xfedcu;
;*** 71	-----------------------    *((volatile struct _ADCCHSELSEQ1_BITS *)C$1+3L) &= 0xfff0u;
;*** 81	-----------------------    AdcRegs.ADCTRL3.all = 228u;
;*** 83	-----------------------    DSP28x_usDelay(139998uL);
;*** 83	-----------------------    return;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
;* AR4   assigned to C$1
DW$6	.dwtag  DW_TAG_variable, DW_AT_name("C$1"), DW_AT_symbol_name("C$1")
	.dwattr DW$6, DW_AT_type(*DW$T$74)
	.dwattr DW$6, DW_AT_location[DW_OP_reg12]
	.dwpsn	"DSP280x_Adc.c",40,3
 EALLOW
	.dwpsn	"DSP280x_Adc.c",41,3
        MOVW      DP,#_SysCtrlRegs+12
        OR        @_SysCtrlRegs+12,#0x0008 ; |41| 
	.dwpsn	"DSP280x_Adc.c",42,3
 EDIS
	.dwpsn	"DSP280x_Adc.c",56,2
        MOVW      DP,#_AdcRegs
        MOV       @_AdcRegs,#336        ; |56| 
	.dwpsn	"DSP280x_Adc.c",59,2
        MOV       @_AdcRegs+1,#0        ; |59| 
	.dwpsn	"DSP280x_Adc.c",61,2
        MOVL      XAR4,#_AdcRegs        ; |61| 
        OR        *+XAR4[1],#0x0800     ; |61| 
	.dwpsn	"DSP280x_Adc.c",62,2
        OR        @_AdcRegs+1,#0x0400   ; |62| 
	.dwpsn	"DSP280x_Adc.c",64,2
        MOV       @_AdcRegs+2,#15       ; |64| 
	.dwpsn	"DSP280x_Adc.c",66,2
        MOV       @_AdcRegs+3,#12816    ; |66| 
	.dwpsn	"DSP280x_Adc.c",67,2
        MOV       @_AdcRegs+4,#30292    ; |67| 
	.dwpsn	"DSP280x_Adc.c",68,2
        MOV       @_AdcRegs+5,#47768    ; |68| 
	.dwpsn	"DSP280x_Adc.c",69,2
        MOV       @_AdcRegs+6,#65244    ; |69| 
	.dwpsn	"DSP280x_Adc.c",71,2
        AND       *+XAR4[3],#0xfff0     ; |71| 
	.dwpsn	"DSP280x_Adc.c",81,2
        MOV       @_AdcRegs+24,#228     ; |81| 
	.dwpsn	"DSP280x_Adc.c",83,5
        MOV       AL,#8926
        SPM       #0
        MOV       AH,#2
        LCR       #_DSP28x_usDelay      ; |83| 
        ; call occurs [#_DSP28x_usDelay] ; |83| 
	.dwpsn	"DSP280x_Adc.c",86,1
        LRETR
        ; return occurs
	.dwattr DW$5, DW_AT_end_file("DSP280x_Adc.c")
	.dwattr DW$5, DW_AT_end_line(0x56)
	.dwattr DW$5, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$5

;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_DSP28x_usDelay
	.global	_AdcRegs
	.global	_SysCtrlRegs

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

DW$T$67	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$67, DW_AT_language(DW_LANG_C)
DW$7	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$66)
	.dwendtag DW$T$67


DW$T$69	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$69, DW_AT_language(DW_LANG_C)
DW$T$66	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32"), DW_AT_type(*DW$T$13)
	.dwattr DW$T$66, DW_AT_language(DW_LANG_C)
DW$T$74	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$73)
	.dwattr DW$T$74, DW_AT_address_class(0x16)
DW$8	.dwtag  DW_TAG_far_type
	.dwattr DW$8, DW_AT_type(*DW$T$45)
DW$T$84	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$84, DW_AT_type(*DW$8)
DW$9	.dwtag  DW_TAG_far_type
	.dwattr DW$9, DW_AT_type(*DW$T$65)
DW$T$88	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$88, DW_AT_type(*DW$9)
DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x02)
DW$10	.dwtag  DW_TAG_far_type
	.dwattr DW$10, DW_AT_type(*DW$T$22)
DW$T$73	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$73, DW_AT_type(*DW$10)

DW$T$45	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$45, DW_AT_name("ADC_REGS")
	.dwattr DW$T$45, DW_AT_byte_size(0x1e)
DW$11	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$11, DW_AT_name("ADCTRL1"), DW_AT_symbol_name("_ADCTRL1")
	.dwattr DW$11, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$11, DW_AT_accessibility(DW_ACCESS_public)
DW$12	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$12, DW_AT_name("ADCTRL2"), DW_AT_symbol_name("_ADCTRL2")
	.dwattr DW$12, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$12, DW_AT_accessibility(DW_ACCESS_public)
DW$13	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$13, DW_AT_name("ADCMAXCONV"), DW_AT_symbol_name("_ADCMAXCONV")
	.dwattr DW$13, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$13, DW_AT_accessibility(DW_ACCESS_public)
DW$14	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$14, DW_AT_name("ADCCHSELSEQ1"), DW_AT_symbol_name("_ADCCHSELSEQ1")
	.dwattr DW$14, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$14, DW_AT_accessibility(DW_ACCESS_public)
DW$15	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$15, DW_AT_name("ADCCHSELSEQ2"), DW_AT_symbol_name("_ADCCHSELSEQ2")
	.dwattr DW$15, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$15, DW_AT_accessibility(DW_ACCESS_public)
DW$16	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$16, DW_AT_name("ADCCHSELSEQ3"), DW_AT_symbol_name("_ADCCHSELSEQ3")
	.dwattr DW$16, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$16, DW_AT_accessibility(DW_ACCESS_public)
DW$17	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$33)
	.dwattr DW$17, DW_AT_name("ADCCHSELSEQ4"), DW_AT_symbol_name("_ADCCHSELSEQ4")
	.dwattr DW$17, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$17, DW_AT_accessibility(DW_ACCESS_public)
DW$18	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$35)
	.dwattr DW$18, DW_AT_name("ADCASEQSR"), DW_AT_symbol_name("_ADCASEQSR")
	.dwattr DW$18, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$18, DW_AT_accessibility(DW_ACCESS_public)
DW$19	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$19, DW_AT_name("ADCRESULT0"), DW_AT_symbol_name("_ADCRESULT0")
	.dwattr DW$19, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$19, DW_AT_accessibility(DW_ACCESS_public)
DW$20	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$20, DW_AT_name("ADCRESULT1"), DW_AT_symbol_name("_ADCRESULT1")
	.dwattr DW$20, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$20, DW_AT_accessibility(DW_ACCESS_public)
DW$21	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$21, DW_AT_name("ADCRESULT2"), DW_AT_symbol_name("_ADCRESULT2")
	.dwattr DW$21, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$21, DW_AT_accessibility(DW_ACCESS_public)
DW$22	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$22, DW_AT_name("ADCRESULT3"), DW_AT_symbol_name("_ADCRESULT3")
	.dwattr DW$22, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$22, DW_AT_accessibility(DW_ACCESS_public)
DW$23	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$23, DW_AT_name("ADCRESULT4"), DW_AT_symbol_name("_ADCRESULT4")
	.dwattr DW$23, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$23, DW_AT_accessibility(DW_ACCESS_public)
DW$24	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$24, DW_AT_name("ADCRESULT5"), DW_AT_symbol_name("_ADCRESULT5")
	.dwattr DW$24, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$24, DW_AT_accessibility(DW_ACCESS_public)
DW$25	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$25, DW_AT_name("ADCRESULT6"), DW_AT_symbol_name("_ADCRESULT6")
	.dwattr DW$25, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$25, DW_AT_accessibility(DW_ACCESS_public)
DW$26	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$26, DW_AT_name("ADCRESULT7"), DW_AT_symbol_name("_ADCRESULT7")
	.dwattr DW$26, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$26, DW_AT_accessibility(DW_ACCESS_public)
DW$27	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$27, DW_AT_name("ADCRESULT8"), DW_AT_symbol_name("_ADCRESULT8")
	.dwattr DW$27, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$27, DW_AT_accessibility(DW_ACCESS_public)
DW$28	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$28, DW_AT_name("ADCRESULT9"), DW_AT_symbol_name("_ADCRESULT9")
	.dwattr DW$28, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$28, DW_AT_accessibility(DW_ACCESS_public)
DW$29	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$29, DW_AT_name("ADCRESULT10"), DW_AT_symbol_name("_ADCRESULT10")
	.dwattr DW$29, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$29, DW_AT_accessibility(DW_ACCESS_public)
DW$30	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$30, DW_AT_name("ADCRESULT11"), DW_AT_symbol_name("_ADCRESULT11")
	.dwattr DW$30, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$30, DW_AT_accessibility(DW_ACCESS_public)
DW$31	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$31, DW_AT_name("ADCRESULT12"), DW_AT_symbol_name("_ADCRESULT12")
	.dwattr DW$31, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$31, DW_AT_accessibility(DW_ACCESS_public)
DW$32	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$32, DW_AT_name("ADCRESULT13"), DW_AT_symbol_name("_ADCRESULT13")
	.dwattr DW$32, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$32, DW_AT_accessibility(DW_ACCESS_public)
DW$33	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$33, DW_AT_name("ADCRESULT14"), DW_AT_symbol_name("_ADCRESULT14")
	.dwattr DW$33, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$33, DW_AT_accessibility(DW_ACCESS_public)
DW$34	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$34, DW_AT_name("ADCRESULT15"), DW_AT_symbol_name("_ADCRESULT15")
	.dwattr DW$34, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$34, DW_AT_accessibility(DW_ACCESS_public)
DW$35	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$37)
	.dwattr DW$35, DW_AT_name("ADCTRL3"), DW_AT_symbol_name("_ADCTRL3")
	.dwattr DW$35, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$35, DW_AT_accessibility(DW_ACCESS_public)
DW$36	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$36, DW_AT_name("ADCST"), DW_AT_symbol_name("_ADCST")
	.dwattr DW$36, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr DW$36, DW_AT_accessibility(DW_ACCESS_public)
DW$37	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$37, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$37, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$37, DW_AT_accessibility(DW_ACCESS_public)
DW$38	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$38, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$38, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr DW$38, DW_AT_accessibility(DW_ACCESS_public)
DW$39	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$39, DW_AT_name("ADCREFSEL"), DW_AT_symbol_name("_ADCREFSEL")
	.dwattr DW$39, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$39, DW_AT_accessibility(DW_ACCESS_public)
DW$40	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$44)
	.dwattr DW$40, DW_AT_name("ADCOFFTRIM"), DW_AT_symbol_name("_ADCOFFTRIM")
	.dwattr DW$40, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$40, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$45


DW$T$65	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$65, DW_AT_name("SYS_CTRL_REGS")
	.dwattr DW$T$65, DW_AT_byte_size(0x20)
DW$41	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$47)
	.dwattr DW$41, DW_AT_name("XCLK"), DW_AT_symbol_name("_XCLK")
	.dwattr DW$41, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$41, DW_AT_accessibility(DW_ACCESS_public)
DW$42	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$49)
	.dwattr DW$42, DW_AT_name("PLLSTS"), DW_AT_symbol_name("_PLLSTS")
	.dwattr DW$42, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$42, DW_AT_accessibility(DW_ACCESS_public)
DW$43	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$62)
	.dwattr DW$43, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$43, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$43, DW_AT_accessibility(DW_ACCESS_public)
DW$44	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$51)
	.dwattr DW$44, DW_AT_name("HISPCP"), DW_AT_symbol_name("_HISPCP")
	.dwattr DW$44, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$44, DW_AT_accessibility(DW_ACCESS_public)
DW$45	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$53)
	.dwattr DW$45, DW_AT_name("LOSPCP"), DW_AT_symbol_name("_LOSPCP")
	.dwattr DW$45, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$45, DW_AT_accessibility(DW_ACCESS_public)
DW$46	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$55)
	.dwattr DW$46, DW_AT_name("PCLKCR0"), DW_AT_symbol_name("_PCLKCR0")
	.dwattr DW$46, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$46, DW_AT_accessibility(DW_ACCESS_public)
DW$47	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$57)
	.dwattr DW$47, DW_AT_name("PCLKCR1"), DW_AT_symbol_name("_PCLKCR1")
	.dwattr DW$47, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$47, DW_AT_accessibility(DW_ACCESS_public)
DW$48	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$59)
	.dwattr DW$48, DW_AT_name("LPMCR0"), DW_AT_symbol_name("_LPMCR0")
	.dwattr DW$48, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$48, DW_AT_accessibility(DW_ACCESS_public)
DW$49	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$49, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$49, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$49, DW_AT_accessibility(DW_ACCESS_public)
DW$50	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$50, DW_AT_name("rsvd3"), DW_AT_symbol_name("_rsvd3")
	.dwattr DW$50, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$50, DW_AT_accessibility(DW_ACCESS_public)
DW$51	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$61)
	.dwattr DW$51, DW_AT_name("PLLCR"), DW_AT_symbol_name("_PLLCR")
	.dwattr DW$51, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$51, DW_AT_accessibility(DW_ACCESS_public)
DW$52	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$52, DW_AT_name("SCSR"), DW_AT_symbol_name("_SCSR")
	.dwattr DW$52, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$52, DW_AT_accessibility(DW_ACCESS_public)
DW$53	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$53, DW_AT_name("WDCNTR"), DW_AT_symbol_name("_WDCNTR")
	.dwattr DW$53, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$53, DW_AT_accessibility(DW_ACCESS_public)
DW$54	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$54, DW_AT_name("rsvd4"), DW_AT_symbol_name("_rsvd4")
	.dwattr DW$54, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$54, DW_AT_accessibility(DW_ACCESS_public)
DW$55	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$55, DW_AT_name("WDKEY"), DW_AT_symbol_name("_WDKEY")
	.dwattr DW$55, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$55, DW_AT_accessibility(DW_ACCESS_public)
DW$56	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$63)
	.dwattr DW$56, DW_AT_name("rsvd5"), DW_AT_symbol_name("_rsvd5")
	.dwattr DW$56, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$56, DW_AT_accessibility(DW_ACCESS_public)
DW$57	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$57, DW_AT_name("WDCR"), DW_AT_symbol_name("_WDCR")
	.dwattr DW$57, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr DW$57, DW_AT_accessibility(DW_ACCESS_public)
DW$58	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$64)
	.dwattr DW$58, DW_AT_name("rsvd6"), DW_AT_symbol_name("_rsvd6")
	.dwattr DW$58, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$58, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$65

DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)

DW$T$62	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$62, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$62, DW_AT_byte_size(0x08)
DW$59	.dwtag  DW_TAG_subrange_type
	.dwattr DW$59, DW_AT_upper_bound(0x07)
	.dwendtag DW$T$62


DW$T$63	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$63, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$63, DW_AT_byte_size(0x03)
DW$60	.dwtag  DW_TAG_subrange_type
	.dwattr DW$60, DW_AT_upper_bound(0x02)
	.dwendtag DW$T$63


DW$T$64	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$64, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$64, DW_AT_byte_size(0x06)
DW$61	.dwtag  DW_TAG_subrange_type
	.dwattr DW$61, DW_AT_upper_bound(0x05)
	.dwendtag DW$T$64


DW$T$21	.dwtag  DW_TAG_union_type
	.dwattr DW$T$21, DW_AT_name("ADCTRL1_REG")
	.dwattr DW$T$21, DW_AT_byte_size(0x01)
DW$62	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$62, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$62, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$62, DW_AT_accessibility(DW_ACCESS_public)
DW$63	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$63, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$63, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$63, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$21


DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$22, DW_AT_name("ADCTRL2_BITS")
	.dwattr DW$T$22, DW_AT_byte_size(0x01)
DW$64	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$64, DW_AT_name("EPWM_SOCB_SEQ2"), DW_AT_symbol_name("_EPWM_SOCB_SEQ2")
	.dwattr DW$64, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$64, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$64, DW_AT_accessibility(DW_ACCESS_public)
DW$65	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$65, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$65, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$65, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$65, DW_AT_accessibility(DW_ACCESS_public)
DW$66	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$66, DW_AT_name("INT_MOD_SEQ2"), DW_AT_symbol_name("_INT_MOD_SEQ2")
	.dwattr DW$66, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$66, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$66, DW_AT_accessibility(DW_ACCESS_public)
DW$67	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$67, DW_AT_name("INT_ENA_SEQ2"), DW_AT_symbol_name("_INT_ENA_SEQ2")
	.dwattr DW$67, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$67, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$67, DW_AT_accessibility(DW_ACCESS_public)
DW$68	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$68, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$68, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$68, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$68, DW_AT_accessibility(DW_ACCESS_public)
DW$69	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$69, DW_AT_name("SOC_SEQ2"), DW_AT_symbol_name("_SOC_SEQ2")
	.dwattr DW$69, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$69, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$69, DW_AT_accessibility(DW_ACCESS_public)
DW$70	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$70, DW_AT_name("RST_SEQ2"), DW_AT_symbol_name("_RST_SEQ2")
	.dwattr DW$70, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$70, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$70, DW_AT_accessibility(DW_ACCESS_public)
DW$71	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$71, DW_AT_name("EXT_SOC_SEQ1"), DW_AT_symbol_name("_EXT_SOC_SEQ1")
	.dwattr DW$71, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$71, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$71, DW_AT_accessibility(DW_ACCESS_public)
DW$72	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$72, DW_AT_name("EPWM_SOCA_SEQ1"), DW_AT_symbol_name("_EPWM_SOCA_SEQ1")
	.dwattr DW$72, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$72, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$72, DW_AT_accessibility(DW_ACCESS_public)
DW$73	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$73, DW_AT_name("rsvd3"), DW_AT_symbol_name("_rsvd3")
	.dwattr DW$73, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$73, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$73, DW_AT_accessibility(DW_ACCESS_public)
DW$74	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$74, DW_AT_name("INT_MOD_SEQ1"), DW_AT_symbol_name("_INT_MOD_SEQ1")
	.dwattr DW$74, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$74, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$74, DW_AT_accessibility(DW_ACCESS_public)
DW$75	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$75, DW_AT_name("INT_ENA_SEQ1"), DW_AT_symbol_name("_INT_ENA_SEQ1")
	.dwattr DW$75, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$75, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$75, DW_AT_accessibility(DW_ACCESS_public)
DW$76	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$76, DW_AT_name("rsvd4"), DW_AT_symbol_name("_rsvd4")
	.dwattr DW$76, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$76, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$76, DW_AT_accessibility(DW_ACCESS_public)
DW$77	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$77, DW_AT_name("SOC_SEQ1"), DW_AT_symbol_name("_SOC_SEQ1")
	.dwattr DW$77, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$77, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$77, DW_AT_accessibility(DW_ACCESS_public)
DW$78	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$78, DW_AT_name("RST_SEQ1"), DW_AT_symbol_name("_RST_SEQ1")
	.dwattr DW$78, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$78, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$78, DW_AT_accessibility(DW_ACCESS_public)
DW$79	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$79, DW_AT_name("EPWM_SOCB_SEQ"), DW_AT_symbol_name("_EPWM_SOCB_SEQ")
	.dwattr DW$79, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$79, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$79, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$22


DW$T$23	.dwtag  DW_TAG_union_type
	.dwattr DW$T$23, DW_AT_name("ADCTRL2_REG")
	.dwattr DW$T$23, DW_AT_byte_size(0x01)
DW$80	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$80, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$80, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$80, DW_AT_accessibility(DW_ACCESS_public)
DW$81	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$81, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$81, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$81, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$23


DW$T$25	.dwtag  DW_TAG_union_type
	.dwattr DW$T$25, DW_AT_name("ADCMAXCONV_REG")
	.dwattr DW$T$25, DW_AT_byte_size(0x01)
DW$82	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$82, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$82, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$82, DW_AT_accessibility(DW_ACCESS_public)
DW$83	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$83, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$83, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$83, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$25


DW$T$27	.dwtag  DW_TAG_union_type
	.dwattr DW$T$27, DW_AT_name("ADCCHSELSEQ1_REG")
	.dwattr DW$T$27, DW_AT_byte_size(0x01)
DW$84	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$84, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$84, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$84, DW_AT_accessibility(DW_ACCESS_public)
DW$85	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$85, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$85, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$85, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$27


DW$T$29	.dwtag  DW_TAG_union_type
	.dwattr DW$T$29, DW_AT_name("ADCCHSELSEQ2_REG")
	.dwattr DW$T$29, DW_AT_byte_size(0x01)
DW$86	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$86, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$86, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$86, DW_AT_accessibility(DW_ACCESS_public)
DW$87	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$28)
	.dwattr DW$87, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$87, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$87, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$29


DW$T$31	.dwtag  DW_TAG_union_type
	.dwattr DW$T$31, DW_AT_name("ADCCHSELSEQ3_REG")
	.dwattr DW$T$31, DW_AT_byte_size(0x01)
DW$88	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$88, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$88, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$88, DW_AT_accessibility(DW_ACCESS_public)
DW$89	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$30)
	.dwattr DW$89, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$89, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$89, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$31


DW$T$33	.dwtag  DW_TAG_union_type
	.dwattr DW$T$33, DW_AT_name("ADCCHSELSEQ4_REG")
	.dwattr DW$T$33, DW_AT_byte_size(0x01)
DW$90	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$90, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$90, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$90, DW_AT_accessibility(DW_ACCESS_public)
DW$91	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$91, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$91, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$91, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$33


DW$T$35	.dwtag  DW_TAG_union_type
	.dwattr DW$T$35, DW_AT_name("ADCASEQSR_REG")
	.dwattr DW$T$35, DW_AT_byte_size(0x01)
DW$92	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$92, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$92, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$92, DW_AT_accessibility(DW_ACCESS_public)
DW$93	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$93, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$93, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$93, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$35


DW$T$37	.dwtag  DW_TAG_union_type
	.dwattr DW$T$37, DW_AT_name("ADCTRL3_REG")
	.dwattr DW$T$37, DW_AT_byte_size(0x01)
DW$94	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$94, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$94, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$94, DW_AT_accessibility(DW_ACCESS_public)
DW$95	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$95, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$95, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$95, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$37


DW$T$39	.dwtag  DW_TAG_union_type
	.dwattr DW$T$39, DW_AT_name("ADCST_REG")
	.dwattr DW$T$39, DW_AT_byte_size(0x01)
DW$96	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$96, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$96, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$96, DW_AT_accessibility(DW_ACCESS_public)
DW$97	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$38)
	.dwattr DW$97, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$97, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$97, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$39


DW$T$41	.dwtag  DW_TAG_union_type
	.dwattr DW$T$41, DW_AT_name("ADCREFSEL_REG")
	.dwattr DW$T$41, DW_AT_byte_size(0x01)
DW$98	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$98, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$98, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$98, DW_AT_accessibility(DW_ACCESS_public)
DW$99	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$40)
	.dwattr DW$99, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$99, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$99, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$41


DW$T$44	.dwtag  DW_TAG_union_type
	.dwattr DW$T$44, DW_AT_name("ADCOFFTRIM_REG")
	.dwattr DW$T$44, DW_AT_byte_size(0x01)
DW$100	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$100, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$100, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$100, DW_AT_accessibility(DW_ACCESS_public)
DW$101	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$43)
	.dwattr DW$101, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$101, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$101, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$44


DW$T$47	.dwtag  DW_TAG_union_type
	.dwattr DW$T$47, DW_AT_name("XCLK_REG")
	.dwattr DW$T$47, DW_AT_byte_size(0x01)
DW$102	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$102, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$102, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$102, DW_AT_accessibility(DW_ACCESS_public)
DW$103	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$103, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$103, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$103, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$47


DW$T$49	.dwtag  DW_TAG_union_type
	.dwattr DW$T$49, DW_AT_name("PLLSTS_REG")
	.dwattr DW$T$49, DW_AT_byte_size(0x01)
DW$104	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$104, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$104, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$104, DW_AT_accessibility(DW_ACCESS_public)
DW$105	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$105, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$105, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$105, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$49


DW$T$51	.dwtag  DW_TAG_union_type
	.dwattr DW$T$51, DW_AT_name("HISPCP_REG")
	.dwattr DW$T$51, DW_AT_byte_size(0x01)
DW$106	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$106, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$106, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$106, DW_AT_accessibility(DW_ACCESS_public)
DW$107	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$50)
	.dwattr DW$107, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$107, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$107, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$51


DW$T$53	.dwtag  DW_TAG_union_type
	.dwattr DW$T$53, DW_AT_name("LOSPCP_REG")
	.dwattr DW$T$53, DW_AT_byte_size(0x01)
DW$108	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$108, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$108, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$108, DW_AT_accessibility(DW_ACCESS_public)
DW$109	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$52)
	.dwattr DW$109, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$109, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$109, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$53


DW$T$55	.dwtag  DW_TAG_union_type
	.dwattr DW$T$55, DW_AT_name("PCLKCR0_REG")
	.dwattr DW$T$55, DW_AT_byte_size(0x01)
DW$110	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$110, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$110, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$110, DW_AT_accessibility(DW_ACCESS_public)
DW$111	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$54)
	.dwattr DW$111, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$111, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$111, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$55


DW$T$57	.dwtag  DW_TAG_union_type
	.dwattr DW$T$57, DW_AT_name("PCLKCR1_REG")
	.dwattr DW$T$57, DW_AT_byte_size(0x01)
DW$112	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$112, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$112, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$112, DW_AT_accessibility(DW_ACCESS_public)
DW$113	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$56)
	.dwattr DW$113, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$113, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$113, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$57


DW$T$59	.dwtag  DW_TAG_union_type
	.dwattr DW$T$59, DW_AT_name("LPMCR0_REG")
	.dwattr DW$T$59, DW_AT_byte_size(0x01)
DW$114	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$114, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$114, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$114, DW_AT_accessibility(DW_ACCESS_public)
DW$115	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$58)
	.dwattr DW$115, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$115, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$115, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$59


DW$T$61	.dwtag  DW_TAG_union_type
	.dwattr DW$T$61, DW_AT_name("PLLCR_REG")
	.dwattr DW$T$61, DW_AT_byte_size(0x01)
DW$116	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$116, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$116, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$116, DW_AT_accessibility(DW_ACCESS_public)
DW$117	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$60)
	.dwattr DW$117, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$117, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$117, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$61

DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x01)

DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$20, DW_AT_name("ADCTRL1_BITS")
	.dwattr DW$T$20, DW_AT_byte_size(0x01)
DW$118	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$118, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$118, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$118, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$118, DW_AT_accessibility(DW_ACCESS_public)
DW$119	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$119, DW_AT_name("SEQ_CASC"), DW_AT_symbol_name("_SEQ_CASC")
	.dwattr DW$119, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$119, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$119, DW_AT_accessibility(DW_ACCESS_public)
DW$120	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$120, DW_AT_name("SEQ_OVRD"), DW_AT_symbol_name("_SEQ_OVRD")
	.dwattr DW$120, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$120, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$120, DW_AT_accessibility(DW_ACCESS_public)
DW$121	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$121, DW_AT_name("CONT_RUN"), DW_AT_symbol_name("_CONT_RUN")
	.dwattr DW$121, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$121, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$121, DW_AT_accessibility(DW_ACCESS_public)
DW$122	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$122, DW_AT_name("CPS"), DW_AT_symbol_name("_CPS")
	.dwattr DW$122, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$122, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$122, DW_AT_accessibility(DW_ACCESS_public)
DW$123	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$123, DW_AT_name("ACQ_PS"), DW_AT_symbol_name("_ACQ_PS")
	.dwattr DW$123, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x04)
	.dwattr DW$123, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$123, DW_AT_accessibility(DW_ACCESS_public)
DW$124	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$124, DW_AT_name("SUSMOD"), DW_AT_symbol_name("_SUSMOD")
	.dwattr DW$124, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x02)
	.dwattr DW$124, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$124, DW_AT_accessibility(DW_ACCESS_public)
DW$125	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$125, DW_AT_name("RESET"), DW_AT_symbol_name("_RESET")
	.dwattr DW$125, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$125, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$125, DW_AT_accessibility(DW_ACCESS_public)
DW$126	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$126, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$126, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$126, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$126, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20


DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$24, DW_AT_name("ADCMAXCONV_BITS")
	.dwattr DW$T$24, DW_AT_byte_size(0x01)
DW$127	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$127, DW_AT_name("MAX_CONV1"), DW_AT_symbol_name("_MAX_CONV1")
	.dwattr DW$127, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$127, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$127, DW_AT_accessibility(DW_ACCESS_public)
DW$128	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$128, DW_AT_name("MAX_CONV2"), DW_AT_symbol_name("_MAX_CONV2")
	.dwattr DW$128, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x03)
	.dwattr DW$128, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$128, DW_AT_accessibility(DW_ACCESS_public)
DW$129	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$129, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$129, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x09)
	.dwattr DW$129, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$129, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$24


DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$26, DW_AT_name("ADCCHSELSEQ1_BITS")
	.dwattr DW$T$26, DW_AT_byte_size(0x01)
DW$130	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$130, DW_AT_name("CONV00"), DW_AT_symbol_name("_CONV00")
	.dwattr DW$130, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$130, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$130, DW_AT_accessibility(DW_ACCESS_public)
DW$131	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$131, DW_AT_name("CONV01"), DW_AT_symbol_name("_CONV01")
	.dwattr DW$131, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x04)
	.dwattr DW$131, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$131, DW_AT_accessibility(DW_ACCESS_public)
DW$132	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$132, DW_AT_name("CONV02"), DW_AT_symbol_name("_CONV02")
	.dwattr DW$132, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x04)
	.dwattr DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$132, DW_AT_accessibility(DW_ACCESS_public)
DW$133	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$133, DW_AT_name("CONV03"), DW_AT_symbol_name("_CONV03")
	.dwattr DW$133, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$133, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$133, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$26


DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$28, DW_AT_name("ADCCHSELSEQ2_BITS")
	.dwattr DW$T$28, DW_AT_byte_size(0x01)
DW$134	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$134, DW_AT_name("CONV04"), DW_AT_symbol_name("_CONV04")
	.dwattr DW$134, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$134, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$134, DW_AT_accessibility(DW_ACCESS_public)
DW$135	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$135, DW_AT_name("CONV05"), DW_AT_symbol_name("_CONV05")
	.dwattr DW$135, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x04)
	.dwattr DW$135, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$135, DW_AT_accessibility(DW_ACCESS_public)
DW$136	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$136, DW_AT_name("CONV06"), DW_AT_symbol_name("_CONV06")
	.dwattr DW$136, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x04)
	.dwattr DW$136, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$136, DW_AT_accessibility(DW_ACCESS_public)
DW$137	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$137, DW_AT_name("CONV07"), DW_AT_symbol_name("_CONV07")
	.dwattr DW$137, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$137, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$137, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$28


DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$30, DW_AT_name("ADCCHSELSEQ3_BITS")
	.dwattr DW$T$30, DW_AT_byte_size(0x01)
DW$138	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$138, DW_AT_name("CONV08"), DW_AT_symbol_name("_CONV08")
	.dwattr DW$138, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$138, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$138, DW_AT_accessibility(DW_ACCESS_public)
DW$139	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$139, DW_AT_name("CONV09"), DW_AT_symbol_name("_CONV09")
	.dwattr DW$139, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x04)
	.dwattr DW$139, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$139, DW_AT_accessibility(DW_ACCESS_public)
DW$140	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$140, DW_AT_name("CONV10"), DW_AT_symbol_name("_CONV10")
	.dwattr DW$140, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x04)
	.dwattr DW$140, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$140, DW_AT_accessibility(DW_ACCESS_public)
DW$141	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$141, DW_AT_name("CONV11"), DW_AT_symbol_name("_CONV11")
	.dwattr DW$141, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$141, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$141, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$30


DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$32, DW_AT_name("ADCCHSELSEQ4_BITS")
	.dwattr DW$T$32, DW_AT_byte_size(0x01)
DW$142	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$142, DW_AT_name("CONV12"), DW_AT_symbol_name("_CONV12")
	.dwattr DW$142, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$142, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$142, DW_AT_accessibility(DW_ACCESS_public)
DW$143	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$143, DW_AT_name("CONV13"), DW_AT_symbol_name("_CONV13")
	.dwattr DW$143, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x04)
	.dwattr DW$143, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$143, DW_AT_accessibility(DW_ACCESS_public)
DW$144	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$144, DW_AT_name("CONV14"), DW_AT_symbol_name("_CONV14")
	.dwattr DW$144, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x04)
	.dwattr DW$144, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$144, DW_AT_accessibility(DW_ACCESS_public)
DW$145	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$145, DW_AT_name("CONV15"), DW_AT_symbol_name("_CONV15")
	.dwattr DW$145, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$145, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$145, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$32


DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$34, DW_AT_name("ADCASEQSR_BITS")
	.dwattr DW$T$34, DW_AT_byte_size(0x01)
DW$146	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$146, DW_AT_name("SEQ1_STATE"), DW_AT_symbol_name("_SEQ1_STATE")
	.dwattr DW$146, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$146, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$146, DW_AT_accessibility(DW_ACCESS_public)
DW$147	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$147, DW_AT_name("SEQ2_STATE"), DW_AT_symbol_name("_SEQ2_STATE")
	.dwattr DW$147, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x03)
	.dwattr DW$147, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$147, DW_AT_accessibility(DW_ACCESS_public)
DW$148	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$148, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$148, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$148, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$148, DW_AT_accessibility(DW_ACCESS_public)
DW$149	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$149, DW_AT_name("SEQ_CNTR"), DW_AT_symbol_name("_SEQ_CNTR")
	.dwattr DW$149, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x04)
	.dwattr DW$149, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$149, DW_AT_accessibility(DW_ACCESS_public)
DW$150	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$150, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$150, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$150, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$150, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$34


DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$36, DW_AT_name("ADCTRL3_BITS")
	.dwattr DW$T$36, DW_AT_byte_size(0x01)
DW$151	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$151, DW_AT_name("SMODE_SEL"), DW_AT_symbol_name("_SMODE_SEL")
	.dwattr DW$151, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$151, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$151, DW_AT_accessibility(DW_ACCESS_public)
DW$152	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$152, DW_AT_name("ADCCLKPS"), DW_AT_symbol_name("_ADCCLKPS")
	.dwattr DW$152, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x04)
	.dwattr DW$152, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$152, DW_AT_accessibility(DW_ACCESS_public)
DW$153	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$153, DW_AT_name("ADCPWDN"), DW_AT_symbol_name("_ADCPWDN")
	.dwattr DW$153, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$153, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$153, DW_AT_accessibility(DW_ACCESS_public)
DW$154	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$154, DW_AT_name("ADCBGRFDN"), DW_AT_symbol_name("_ADCBGRFDN")
	.dwattr DW$154, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x02)
	.dwattr DW$154, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$154, DW_AT_accessibility(DW_ACCESS_public)
DW$155	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$155, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$155, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$155, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$155, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$36


DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$38, DW_AT_name("ADCST_BITS")
	.dwattr DW$T$38, DW_AT_byte_size(0x01)
DW$156	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$156, DW_AT_name("INT_SEQ1"), DW_AT_symbol_name("_INT_SEQ1")
	.dwattr DW$156, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$156, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$156, DW_AT_accessibility(DW_ACCESS_public)
DW$157	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$157, DW_AT_name("INT_SEQ2"), DW_AT_symbol_name("_INT_SEQ2")
	.dwattr DW$157, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$157, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$157, DW_AT_accessibility(DW_ACCESS_public)
DW$158	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$158, DW_AT_name("SEQ1_BSY"), DW_AT_symbol_name("_SEQ1_BSY")
	.dwattr DW$158, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$158, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$158, DW_AT_accessibility(DW_ACCESS_public)
DW$159	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$159, DW_AT_name("SEQ2_BSY"), DW_AT_symbol_name("_SEQ2_BSY")
	.dwattr DW$159, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$159, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$159, DW_AT_accessibility(DW_ACCESS_public)
DW$160	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$160, DW_AT_name("INT_SEQ1_CLR"), DW_AT_symbol_name("_INT_SEQ1_CLR")
	.dwattr DW$160, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$160, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$160, DW_AT_accessibility(DW_ACCESS_public)
DW$161	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$161, DW_AT_name("INT_SEQ2_CLR"), DW_AT_symbol_name("_INT_SEQ2_CLR")
	.dwattr DW$161, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$161, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$161, DW_AT_accessibility(DW_ACCESS_public)
DW$162	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$162, DW_AT_name("EOS_BUF1"), DW_AT_symbol_name("_EOS_BUF1")
	.dwattr DW$162, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$162, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$162, DW_AT_accessibility(DW_ACCESS_public)
DW$163	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$163, DW_AT_name("EOS_BUF2"), DW_AT_symbol_name("_EOS_BUF2")
	.dwattr DW$163, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$163, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$163, DW_AT_accessibility(DW_ACCESS_public)
DW$164	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$164, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$164, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$164, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$164, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$38


DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$40, DW_AT_name("ADCREFSEL_BITS")
	.dwattr DW$T$40, DW_AT_byte_size(0x01)
DW$165	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$165, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$165, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x0e)
	.dwattr DW$165, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$165, DW_AT_accessibility(DW_ACCESS_public)
DW$166	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$166, DW_AT_name("REF_SEL"), DW_AT_symbol_name("_REF_SEL")
	.dwattr DW$166, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x02)
	.dwattr DW$166, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$166, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$40


DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$43, DW_AT_name("ADCOFFTRIM_BITS")
	.dwattr DW$T$43, DW_AT_byte_size(0x01)
DW$167	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$42)
	.dwattr DW$167, DW_AT_name("OFFSET_TRIM"), DW_AT_symbol_name("_OFFSET_TRIM")
	.dwattr DW$167, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x09)
	.dwattr DW$167, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$167, DW_AT_accessibility(DW_ACCESS_public)
DW$168	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$168, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$168, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x07)
	.dwattr DW$168, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$168, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$43


DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$46, DW_AT_name("XCLK_BITS")
	.dwattr DW$T$46, DW_AT_byte_size(0x01)
DW$169	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$169, DW_AT_name("XCLKOUTDIV"), DW_AT_symbol_name("_XCLKOUTDIV")
	.dwattr DW$169, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x02)
	.dwattr DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$169, DW_AT_accessibility(DW_ACCESS_public)
DW$170	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$170, DW_AT_name("XCLKOUTDAT"), DW_AT_symbol_name("_XCLKOUTDAT")
	.dwattr DW$170, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$170, DW_AT_accessibility(DW_ACCESS_public)
DW$171	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$171, DW_AT_name("X1DAT"), DW_AT_symbol_name("_X1DAT")
	.dwattr DW$171, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$171, DW_AT_accessibility(DW_ACCESS_public)
DW$172	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$172, DW_AT_name("XCLKINDAT"), DW_AT_symbol_name("_XCLKINDAT")
	.dwattr DW$172, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$172, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$172, DW_AT_accessibility(DW_ACCESS_public)
DW$173	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$173, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$173, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x03)
	.dwattr DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$173, DW_AT_accessibility(DW_ACCESS_public)
DW$174	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$174, DW_AT_name("X1CNT"), DW_AT_symbol_name("_X1CNT")
	.dwattr DW$174, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x04)
	.dwattr DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$174, DW_AT_accessibility(DW_ACCESS_public)
DW$175	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$175, DW_AT_name("XCLKINCNT"), DW_AT_symbol_name("_XCLKINCNT")
	.dwattr DW$175, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$175, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$46


DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$48, DW_AT_name("PLLSTS_BITS")
	.dwattr DW$T$48, DW_AT_byte_size(0x01)
DW$176	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$176, DW_AT_name("PLLLOCKS"), DW_AT_symbol_name("_PLLLOCKS")
	.dwattr DW$176, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$176, DW_AT_accessibility(DW_ACCESS_public)
DW$177	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$177, DW_AT_name("CLKINDIV"), DW_AT_symbol_name("_CLKINDIV")
	.dwattr DW$177, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$177, DW_AT_accessibility(DW_ACCESS_public)
DW$178	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$178, DW_AT_name("PLLOFF"), DW_AT_symbol_name("_PLLOFF")
	.dwattr DW$178, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$178, DW_AT_accessibility(DW_ACCESS_public)
DW$179	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$179, DW_AT_name("MCLKSTS"), DW_AT_symbol_name("_MCLKSTS")
	.dwattr DW$179, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$179, DW_AT_accessibility(DW_ACCESS_public)
DW$180	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$180, DW_AT_name("MCLKCLR"), DW_AT_symbol_name("_MCLKCLR")
	.dwattr DW$180, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$180, DW_AT_accessibility(DW_ACCESS_public)
DW$181	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$181, DW_AT_name("OSCOFF"), DW_AT_symbol_name("_OSCOFF")
	.dwattr DW$181, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$181, DW_AT_accessibility(DW_ACCESS_public)
DW$182	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$182, DW_AT_name("MCLKOFF"), DW_AT_symbol_name("_MCLKOFF")
	.dwattr DW$182, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$182, DW_AT_accessibility(DW_ACCESS_public)
DW$183	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$183, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$183, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x09)
	.dwattr DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$183, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$48


DW$T$50	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$50, DW_AT_name("HISPCP_BITS")
	.dwattr DW$T$50, DW_AT_byte_size(0x01)
DW$184	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$184, DW_AT_name("HSPCLK"), DW_AT_symbol_name("_HSPCLK")
	.dwattr DW$184, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x03)
	.dwattr DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$184, DW_AT_accessibility(DW_ACCESS_public)
DW$185	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$185, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$185, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0d)
	.dwattr DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$185, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$50


DW$T$52	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$52, DW_AT_name("LOSPCP_BITS")
	.dwattr DW$T$52, DW_AT_byte_size(0x01)
DW$186	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$186, DW_AT_name("LSPCLK"), DW_AT_symbol_name("_LSPCLK")
	.dwattr DW$186, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x03)
	.dwattr DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$186, DW_AT_accessibility(DW_ACCESS_public)
DW$187	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$187, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$187, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0d)
	.dwattr DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$187, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$52


DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$54, DW_AT_name("PCLKCR0_BITS")
	.dwattr DW$T$54, DW_AT_byte_size(0x01)
DW$188	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$188, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$188, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x02)
	.dwattr DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$188, DW_AT_accessibility(DW_ACCESS_public)
DW$189	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$189, DW_AT_name("TBCLKSYNC"), DW_AT_symbol_name("_TBCLKSYNC")
	.dwattr DW$189, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$189, DW_AT_accessibility(DW_ACCESS_public)
DW$190	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$190, DW_AT_name("ADCENCLK"), DW_AT_symbol_name("_ADCENCLK")
	.dwattr DW$190, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$190, DW_AT_accessibility(DW_ACCESS_public)
DW$191	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$191, DW_AT_name("I2CAENCLK"), DW_AT_symbol_name("_I2CAENCLK")
	.dwattr DW$191, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$191, DW_AT_accessibility(DW_ACCESS_public)
DW$192	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$192, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$192, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$192, DW_AT_accessibility(DW_ACCESS_public)
DW$193	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$193, DW_AT_name("SPICENCLK"), DW_AT_symbol_name("_SPICENCLK")
	.dwattr DW$193, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$193, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$193, DW_AT_accessibility(DW_ACCESS_public)
DW$194	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$194, DW_AT_name("SPIDENCLK"), DW_AT_symbol_name("_SPIDENCLK")
	.dwattr DW$194, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$194, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$194, DW_AT_accessibility(DW_ACCESS_public)
DW$195	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$195, DW_AT_name("SPIAENCLK"), DW_AT_symbol_name("_SPIAENCLK")
	.dwattr DW$195, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$195, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$195, DW_AT_accessibility(DW_ACCESS_public)
DW$196	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$196, DW_AT_name("SPIBENCLK"), DW_AT_symbol_name("_SPIBENCLK")
	.dwattr DW$196, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$196, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$196, DW_AT_accessibility(DW_ACCESS_public)
DW$197	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$197, DW_AT_name("SCIAENCLK"), DW_AT_symbol_name("_SCIAENCLK")
	.dwattr DW$197, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$197, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$197, DW_AT_accessibility(DW_ACCESS_public)
DW$198	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$198, DW_AT_name("SCIBENCLK"), DW_AT_symbol_name("_SCIBENCLK")
	.dwattr DW$198, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$198, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$198, DW_AT_accessibility(DW_ACCESS_public)
DW$199	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$199, DW_AT_name("rsvd3"), DW_AT_symbol_name("_rsvd3")
	.dwattr DW$199, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x02)
	.dwattr DW$199, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$199, DW_AT_accessibility(DW_ACCESS_public)
DW$200	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$200, DW_AT_name("ECANAENCLK"), DW_AT_symbol_name("_ECANAENCLK")
	.dwattr DW$200, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$200, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$200, DW_AT_accessibility(DW_ACCESS_public)
DW$201	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$201, DW_AT_name("ECANBENCLK"), DW_AT_symbol_name("_ECANBENCLK")
	.dwattr DW$201, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$201, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$201, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$54


DW$T$56	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$56, DW_AT_name("PCLKCR1_BITS")
	.dwattr DW$T$56, DW_AT_byte_size(0x01)
DW$202	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$202, DW_AT_name("EPWM1ENCLK"), DW_AT_symbol_name("_EPWM1ENCLK")
	.dwattr DW$202, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$202, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$202, DW_AT_accessibility(DW_ACCESS_public)
DW$203	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$203, DW_AT_name("EPWM2ENCLK"), DW_AT_symbol_name("_EPWM2ENCLK")
	.dwattr DW$203, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$203, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$203, DW_AT_accessibility(DW_ACCESS_public)
DW$204	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$204, DW_AT_name("EPWM3ENCLK"), DW_AT_symbol_name("_EPWM3ENCLK")
	.dwattr DW$204, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$204, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$204, DW_AT_accessibility(DW_ACCESS_public)
DW$205	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$205, DW_AT_name("EPWM4ENCLK"), DW_AT_symbol_name("_EPWM4ENCLK")
	.dwattr DW$205, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$205, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$205, DW_AT_accessibility(DW_ACCESS_public)
DW$206	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$206, DW_AT_name("EPWM5ENCLK"), DW_AT_symbol_name("_EPWM5ENCLK")
	.dwattr DW$206, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$206, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$206, DW_AT_accessibility(DW_ACCESS_public)
DW$207	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$207, DW_AT_name("EPWM6ENCLK"), DW_AT_symbol_name("_EPWM6ENCLK")
	.dwattr DW$207, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$207, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$207, DW_AT_accessibility(DW_ACCESS_public)
DW$208	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$208, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$208, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x02)
	.dwattr DW$208, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$208, DW_AT_accessibility(DW_ACCESS_public)
DW$209	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$209, DW_AT_name("ECAP1ENCLK"), DW_AT_symbol_name("_ECAP1ENCLK")
	.dwattr DW$209, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$209, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$209, DW_AT_accessibility(DW_ACCESS_public)
DW$210	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$210, DW_AT_name("ECAP2ENCLK"), DW_AT_symbol_name("_ECAP2ENCLK")
	.dwattr DW$210, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$210, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$210, DW_AT_accessibility(DW_ACCESS_public)
DW$211	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$211, DW_AT_name("ECAP3ENCLK"), DW_AT_symbol_name("_ECAP3ENCLK")
	.dwattr DW$211, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$211, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$211, DW_AT_accessibility(DW_ACCESS_public)
DW$212	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$212, DW_AT_name("ECAP4ENCLK"), DW_AT_symbol_name("_ECAP4ENCLK")
	.dwattr DW$212, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$212, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$212, DW_AT_accessibility(DW_ACCESS_public)
DW$213	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$213, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$213, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x02)
	.dwattr DW$213, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$213, DW_AT_accessibility(DW_ACCESS_public)
DW$214	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$214, DW_AT_name("EQEP1ENCLK"), DW_AT_symbol_name("_EQEP1ENCLK")
	.dwattr DW$214, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$214, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$214, DW_AT_accessibility(DW_ACCESS_public)
DW$215	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$215, DW_AT_name("EQEP2ENCLK"), DW_AT_symbol_name("_EQEP2ENCLK")
	.dwattr DW$215, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$215, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$56


DW$T$58	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$58, DW_AT_name("LPMCR0_BITS")
	.dwattr DW$T$58, DW_AT_byte_size(0x01)
DW$216	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$216, DW_AT_name("LPM"), DW_AT_symbol_name("_LPM")
	.dwattr DW$216, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x02)
	.dwattr DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$216, DW_AT_accessibility(DW_ACCESS_public)
DW$217	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$217, DW_AT_name("QUALSTDBY"), DW_AT_symbol_name("_QUALSTDBY")
	.dwattr DW$217, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x06)
	.dwattr DW$217, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$217, DW_AT_accessibility(DW_ACCESS_public)
DW$218	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$218, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$218, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x07)
	.dwattr DW$218, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$218, DW_AT_accessibility(DW_ACCESS_public)
DW$219	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$219, DW_AT_name("WDINTE"), DW_AT_symbol_name("_WDINTE")
	.dwattr DW$219, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$219, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$219, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$58


DW$T$60	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$60, DW_AT_name("PLLCR_BITS")
	.dwattr DW$T$60, DW_AT_byte_size(0x01)
DW$220	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$220, DW_AT_name("DIV"), DW_AT_symbol_name("_DIV")
	.dwattr DW$220, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$220, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$220, DW_AT_accessibility(DW_ACCESS_public)
DW$221	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$221, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$221, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0c)
	.dwattr DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$221, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$60

DW$T$42	.dwtag  DW_TAG_typedef, DW_AT_name("int16"), DW_AT_type(*DW$T$10)
	.dwattr DW$T$42, DW_AT_language(DW_LANG_C)
DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x01)

	.dwattr DW$5, DW_AT_external(0x01)
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

DW$222	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$222, DW_AT_location[DW_OP_reg0]
DW$223	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$223, DW_AT_location[DW_OP_reg1]
DW$224	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$224, DW_AT_location[DW_OP_reg2]
DW$225	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$225, DW_AT_location[DW_OP_reg3]
DW$226	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$226, DW_AT_location[DW_OP_reg4]
DW$227	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$227, DW_AT_location[DW_OP_reg5]
DW$228	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$228, DW_AT_location[DW_OP_reg6]
DW$229	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$229, DW_AT_location[DW_OP_reg7]
DW$230	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$230, DW_AT_location[DW_OP_reg8]
DW$231	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$231, DW_AT_location[DW_OP_reg9]
DW$232	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$232, DW_AT_location[DW_OP_reg10]
DW$233	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$233, DW_AT_location[DW_OP_reg11]
DW$234	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$234, DW_AT_location[DW_OP_reg12]
DW$235	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$235, DW_AT_location[DW_OP_reg13]
DW$236	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$236, DW_AT_location[DW_OP_reg14]
DW$237	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$237, DW_AT_location[DW_OP_reg15]
DW$238	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$238, DW_AT_location[DW_OP_reg16]
DW$239	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$239, DW_AT_location[DW_OP_reg17]
DW$240	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$240, DW_AT_location[DW_OP_reg18]
DW$241	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$241, DW_AT_location[DW_OP_reg19]
DW$242	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$242, DW_AT_location[DW_OP_reg20]
DW$243	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$243, DW_AT_location[DW_OP_reg21]
DW$244	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$244, DW_AT_location[DW_OP_reg22]
DW$245	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$245, DW_AT_location[DW_OP_reg23]
DW$246	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$246, DW_AT_location[DW_OP_reg24]
DW$247	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$247, DW_AT_location[DW_OP_reg25]
DW$248	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$248, DW_AT_location[DW_OP_reg26]
DW$249	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$249, DW_AT_location[DW_OP_reg27]
DW$250	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$250, DW_AT_location[DW_OP_reg28]
DW$251	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$251, DW_AT_location[DW_OP_reg29]
DW$252	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$252, DW_AT_location[DW_OP_reg30]
DW$253	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$253, DW_AT_location[DW_OP_reg31]
DW$254	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$254, DW_AT_location[DW_OP_regx 0x20]
DW$255	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$255, DW_AT_location[DW_OP_regx 0x21]
DW$256	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$256, DW_AT_location[DW_OP_regx 0x22]
DW$257	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$257, DW_AT_location[DW_OP_regx 0x23]
DW$258	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$258, DW_AT_location[DW_OP_regx 0x24]
DW$259	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$259, DW_AT_location[DW_OP_regx 0x25]
DW$260	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$260, DW_AT_location[DW_OP_regx 0x26]
DW$261	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$261, DW_AT_location[DW_OP_regx 0x27]
DW$262	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$262, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU

