		AREA Neg, CODE, READONLY
		ENTRY
		EXPORT __main
			
__main
		LDR R0,=array;
		MOV R1,#4;
		MOV R2,#0;
		
loop
		LDR R3,[R0],#4;
		CMP R3,#0;
		BLT large;
		B loop2;
		
large
		ADD R2,#1;
		
loop2
		SUB R1,#1;
		CMP R1, #0;
		BNE loop
		LDR R5,=result;
		STR R2,[R5];
		
STOP B STOP

array DCD 0xFFFFFFFA;
	  DCD 0x41;
	  DCD 0x05
	  DCD 0x01
		
	  area res, data, readwrite
result DCD 0x00;
		END
