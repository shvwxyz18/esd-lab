		AREA squ, CODE, READONLY
		ENTRY
		EXPORT __main
			
TABLE DCD 0x00;
	  DCD 0x01;
	  DCD 0x04;
	  DCD 0x09;
	  DCD 0x10;
	  DCD 0x19;
	  DCD 0x24;
	  DCD 0x31;
	  DCD 0x40;
	  DCD 0x51;
	  DCD 0x64;


__main
		LDR R0, =TABLE;
		MOV R1, #6;
		MOV R1, R1, LSL#0x02;
		ADD R0, R1;
		LDR R6, [R0];
		LDR R2, =Result;
		STR R6, [R2];

STOP B STOP
		AREA Res, DATA ,READWRITE
Result DCD 0x00;
		END
