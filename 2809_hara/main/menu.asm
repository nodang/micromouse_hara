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
;	..\Compiler\bin\opt2000.exe C:\Users\노호진\AppData\Local\Temp\TI20410 C:\Users\노호진\AppData\Local\Temp\TI2044 
;	..\Compiler\bin\ac2000.exe --keep_unneeded_types -D_INLINE -DLARGE_MODEL -I..\include --version=28 --keep_unneeded_types --mem_model:code=flat --mem_model:data=large -m --i_output_file C:\Users\노호진\AppData\Local\Temp\TI2042 --template_info_file C:\Users\노호진\AppData\Local\Temp\TI2046 --object_file menu.obj --embed_opts 10 --call_assumptions=0 --mem_model:code=flat --mem_model:data=large --opt_for_speed --opt_level=3 --optimizer_comments --optimizer_interlist --program_level_compile 

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************


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
	.dwcfa	0x07, 6
	.dwcfa	0x07, 7
	.dwcfa	0x07, 8
	.dwcfa	0x07, 9
	.dwcfa	0x07, 10
	.dwcfa	0x07, 11
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
	.dwcfa	0x07, 27
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

DW$1	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$1, DW_AT_location[DW_OP_reg0]
DW$2	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$2, DW_AT_location[DW_OP_reg1]
DW$3	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$3, DW_AT_location[DW_OP_reg2]
DW$4	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$4, DW_AT_location[DW_OP_reg3]
DW$5	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$5, DW_AT_location[DW_OP_reg4]
DW$6	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$6, DW_AT_location[DW_OP_reg5]
DW$7	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$7, DW_AT_location[DW_OP_reg6]
DW$8	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$8, DW_AT_location[DW_OP_reg7]
DW$9	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$9, DW_AT_location[DW_OP_reg8]
DW$10	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$10, DW_AT_location[DW_OP_reg9]
DW$11	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$11, DW_AT_location[DW_OP_reg10]
DW$12	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$12, DW_AT_location[DW_OP_reg11]
DW$13	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$13, DW_AT_location[DW_OP_reg12]
DW$14	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$14, DW_AT_location[DW_OP_reg13]
DW$15	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$15, DW_AT_location[DW_OP_reg14]
DW$16	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$16, DW_AT_location[DW_OP_reg15]
DW$17	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$17, DW_AT_location[DW_OP_reg16]
DW$18	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$18, DW_AT_location[DW_OP_reg17]
DW$19	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$19, DW_AT_location[DW_OP_reg18]
DW$20	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$20, DW_AT_location[DW_OP_reg19]
DW$21	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$21, DW_AT_location[DW_OP_reg20]
DW$22	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$22, DW_AT_location[DW_OP_reg21]
DW$23	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$23, DW_AT_location[DW_OP_reg22]
DW$24	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$24, DW_AT_location[DW_OP_reg23]
DW$25	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$25, DW_AT_location[DW_OP_reg24]
DW$26	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$26, DW_AT_location[DW_OP_reg25]
DW$27	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$27, DW_AT_location[DW_OP_reg26]
DW$28	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$28, DW_AT_location[DW_OP_reg27]
DW$29	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$29, DW_AT_location[DW_OP_reg28]
DW$30	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$30, DW_AT_location[DW_OP_reg29]
DW$31	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$31, DW_AT_location[DW_OP_reg30]
DW$32	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$32, DW_AT_location[DW_OP_reg31]
DW$33	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$33, DW_AT_location[DW_OP_regx 0x20]
DW$34	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$34, DW_AT_location[DW_OP_regx 0x21]
DW$35	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$35, DW_AT_location[DW_OP_regx 0x22]
DW$36	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$36, DW_AT_location[DW_OP_regx 0x23]
DW$37	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$37, DW_AT_location[DW_OP_regx 0x24]
DW$38	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$38, DW_AT_location[DW_OP_regx 0x25]
DW$39	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$39, DW_AT_location[DW_OP_regx 0x26]
DW$40	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$40, DW_AT_location[DW_OP_regx 0x27]
DW$41	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$41, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU

