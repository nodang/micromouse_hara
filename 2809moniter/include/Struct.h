#ifndef __STRUCT_H__
#define __STRUCT_H__

#ifdef	__STRUCT__
	#undef	__STRUCT__
	#define STRUCT_EXT
#else
	#define	STRUCT_EXT extern
#endif

#define VARIABLE_OPT volatile


#define MAX_DATA_LENGTH     0x20
#define MAX_ERROR_COUNT     0x20


typedef union {
    Uint16    all;
    struct {         
       Uint16     bit0:1;             
       Uint16     bit1:1;             
       Uint16     bit2:1;             
       Uint16     bit3:1;             
       Uint16     bit4:1;             
       Uint16     bit5:1;             
       Uint16     bit6:1;             
       Uint16     bit7:1;             
    }Bit; 
}BYTE_DEF;

typedef union 
{
    Uint32    Long;
    struct {
        Uint16    Low:16;
        Uint16    High:16;
    }Word;
}DIVIDE_LONG;

typedef struct {							
    Uint16    		DataLength;
	DIVIDE_LONG		Address;			
    Uint16   	 	RecordType;
	
    Uint16  		Checksum;
    BYTE_DEF    	Status;
    Uint16    		ErrorCnt;
    Uint16    		FrameNumber;
    Uint16    		ErrorFrame[MAX_ERROR_COUNT];
}HEX_FIELD;

STRUCT_EXT VARIABLE_OPT HEX_FIELD DownLoadingHex;
#endif



