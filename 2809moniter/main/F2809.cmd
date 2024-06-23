/*
// TI File $Revision: /main/3 $
// Checkin $Date: September 7, 2005   17:40:17 $
//###########################################################################
//
// FILE:	F2809.cmd
//
// TITLE:	Linker Command File For F2808 Device
//
//###########################################################################
// $TI Release: DSP280x V1.30 $
// $Release Date: February 10, 2006 $
//###########################################################################
*/
/*
//###########################################################################
// $Author: Maze 25th Roh Hojin
// $Data: June 23, 2024 $
//###########################################################################
*/
/*
=========================================================
// For Code Composer Studio V2.2 and later
// ---------------------------------------
// In addition to this memory linker command file, 
// add the header linker command file directly to the project. 
// The header linker command file is required to link the
// peripheral structures to the proper locations within 
// the memory map.
//
// The header linker files are found in <base>\DSP280x_Headers\cmd
//   
// For BIOS applications add:      DSP280x_Headers_BIOS.cmd
// For nonBIOS applications add:   DSP280x_Headers_nonBIOS.cmd    
=========================================================
*/

/* F2809 Memory Map */
/* SARAM M, H, L
M RAM is general RAM.(Normal Speed)
L RAM is protected area. Only can be executed. R/W can't be possible.
H RAM is fastest area for development.
*/
/* M0VECTOR    : origin = 0x000000, length = 0x000040 */
/* M0SARAM     : origin = 0x000040, length = 0x0003C0 */
/* M1SARAM     : origin = 0x000400, length = 0x000400 */
/* PIE_RSVD1   : origin = 0x000800, length = 0x005800 */    /* Don't Modify. */
/* PIE_RSVD2   : origin = 0x006000, length = 0x002000 */    /* Don't Modify. */
/* L0SARAM1    : origin = 0x008000, length = 0x001000 */
/* L1SARAM1    : origin = 0x009000, length = 0x001000 */
/* H0SARAM1    : origin = 0x00A000, length = 0x002000 */
/* RSVD1       : origin = 0x00C000, length = 0x3CB800 */    /* Don't Modify. */
/* OTP         : origin = 0x3D7800, length = 0x000400 */    /* Don't Modify. */
/* RSVD2       : origin = 0x3D7C00, length = 0x000400 */    /* Don't Modify. */
/* FLASHH      : origin = 0x3D8000, length = 0x004000 */
/* FLASHG      : origin = 0x3DC000, length = 0x004000 */
/* FLASHF      : origin = 0x3E0000, length = 0x004000 */
/* FLASHE      : origin = 0x3E4000, length = 0x004000 */
/* FLASHD      : origin = 0x3E8000, length = 0x004000 */
/* FLASHC      : origin = 0x3EC000, length = 0x004000 */
/* FLASHB      : origin = 0x3F0000, length = 0x004000 */
/* FLASHA      : origin = 0x3F4000, length = 0x003F7F */
/* CSM_RSVD    : origin = 0x3F7F80, length = 0x000076 */    /* Part of FLASHA.  Program with all 0x0000 when CSM is in use. */
/* BEGIN       : origin = 0x3F7FF6, length = 0x000002 */    /* Part of FLASHA.  Used for "boot to Flash" Entry Point. */
/* CSM_PWL     : origin = 0x3F7FF8, length = 0x000008 */    /* Part of FLASHA.  CSM password locations in FLASHA. */
/* L0SARAM2    : origin = 0x3F8000, length = 0x001000 */
/* L1SARAM2    : origin = 0x3F9000, length = 0x001000 */
/* H0SARAM2    : origin = 0x3FA000, length = 0x002000 */
/* RSVD3       : origin = 0x3FC000, length = 0x003000 */    /* Don't Modify. */
/* ROM         : origin = 0x3FF000, length = 0x000FC0 */
/* RESET       : origin = 0x3FFFC0, length = 0x000002 */    /* Don't Modify. */
/* VECTORS     : origin = 0x3FFFC2, length = 0x00003E */    /* Don't Modify. */

MEMORY
{
PAGE 0:  /* Program Memory */
         /* Memory (RAM/FLASH/OTP) blocks can be moved to PAGE1 for data allocation */

   /* Custom Memory Map */
   /* USERBEGIN   : origin = 0x000000, length = 0x000002 */    /* Part of M0SARAM.  Used for "boot to Flash" Entry Point. */

   /* Monitor Memory Area */
   BEGIN       : origin = 0x3F7FF6, length = 0x000002    /* Part of FLASHA.  Used for "boot to Flash" Entry Point. */
   FLASHH      : origin = 0x3D8000, length = 0x004000
   FLASHG      : origin = 0x3DC000, length = 0x004000
   FLASHF      : origin = 0x3E0000, length = 0x004000
   FLASHE      : origin = 0x3E4000, length = 0x004000
   FLASHD      : origin = 0x3E8000, length = 0x004000
   FLASHC      : origin = 0x3EC000, length = 0x004000
   FLASHB      : origin = 0x3F0000, length = 0x004000
   MONITOR     : origin = 0x3F4000, length = 0x003F80    /* Part of FLASHA. */

   ROM         : origin = 0x3FF000, length = 0x000FC0    /* Part of Boot ROM. */
   RAMM0M1     : origin = 0x000002, length = 0x0007FE    /* Part of M0SARAM & M0SARAM. */
   RAMH0       : origin = 0x3FA000, length = 0x002000    /* Part of H0SARAM. */

   /* Mantory Memory */
   OTP         : origin = 0x3D7800, length = 0x000400

   CSM_RSVD    : origin = 0x3F7F80, length = 0x000076    /* Part of FLASHA.  Program with all 0x0000 when CSM is in use. */
   CSM_PWL     : origin = 0x3F7FF8, length = 0x000008    /* Part of FLASHA.  CSM password locations in FLASHA. */

   RESET       : origin = 0x3FFFC0, length = 0x000002    /* Don't Modify. */
   VECTORS     : origin = 0x3FFFC2, length = 0x00003E    /* Don't Modify. */

PAGE 1:  /* Data Memory */
         /* Memory (RAM/FLASH/OTP) blocks can be moved to PAGE0 for program allocation */
         /* Registers remain on PAGE1                                                  */

   /* Custom Memory Map */
   RAML0L1     : origin = 0x008000, length = 0x002000    /* Part of L0SARAM & L1SARAM. */
}

/* Allocate sections to memory blocks.
   Note:
         codestart user defined section in DSP28_CodeStartBranch.asm used to redirect code 
                   execution when booting to flash
         ramfuncs  user defined section to store functions that will be copied from Flash into RAM
*/ 

SECTIONS
{
   Flash28_API:
	{
		..\Compiler\lib\Flash2809_API_V100.lib(.econst)
	   ..\Compiler\lib\Flash2809_API_V100.lib(.text)
	}              LOAD = MONITOR, 
                   RUN = RAMM0M1, 
                   LOAD_START(_Flash28_API_LoadStart),
                   LOAD_END(_Flash28_API_LoadEnd),
                   RUN_START(_Flash28_API_RunStart),
                   PAGE = 0

   ramfuncs             : LOAD = MONITOR, 
                         RUN = RAMM0M1, 
                         LOAD_START(_RamfuncsLoadStart),
                         LOAD_END(_RamfuncsLoadEnd),
                         RUN_START(_RamfuncsRunStart),
                         PAGE = 0
   ramfuncs1            : LOAD = MONITOR, 
                         RUN = RAMH0, 
                         LOAD_START(_RamfuncsLoadStart1),
                         LOAD_END(_RamfuncsLoadEnd1),
                         RUN_START(_RamfuncsRunStart1),
                         PAGE = 0 
   /* ramfuncs2 is in USER Program */

   /* We don't use CSM Password. */
   /* csmpasswds          : > CSM_PWL     PAGE = 0 */
   /* csm_rsvd            : > CSM_RSVD    PAGE = 0 */

   /* Allocate program areas: */
   codestart           : > BEGIN     PAGE = 0   /* codestart           : > BEGIN   PAGE = 0 */
   .text               : > MONITOR   PAGE = 0
   .cinit              : > MONITOR   PAGE = 0
   .pinit              : > MONITOR   PAGE = 0

   /* Allocate uninitalized data sections: */
   .stack              : > RAMH0     PAGE = 0
   .heap			        : > RAMH0	    PAGE = 0
   .ebss               : > RAML0L1   PAGE = 1
   .esysmem            : > RAMH0     PAGE = 0
   .sysmem			     : > RAMH0		 PAGE = 0

   /* Initalized sections go in Flash */
   /* For SDFlash to program these, they must be allocated to page 0 */
   .econst             : > MONITOR   PAGE = 0
   .switch             : > MONITOR   PAGE = 0      

   /* .reset is a standard section used by the compiler.  It contains the */ 
   /* the address of the start of _c_int00 for C Code.   /*
   /* When using the boot ROM this section and the CPU vector */
   /* table is not needed.  Thus the default type is set here to  */
   /* DSECT  */ 
   .reset              : > RESET,      PAGE = 0, TYPE = DSECT
   vectors             : > VECTORS     PAGE = 0, TYPE = DSECT

   VFD_FONT			     : > MONITOR	   PAGE = 0
}

/*
//===========================================================================
// End of file.
//===========================================================================
*/
