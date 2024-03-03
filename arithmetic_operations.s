    AREA mul, CODE, READONLY
		ENTRY
		EXPORT __main
			
NUM1 DCD 0x1234;
NUM2 DCD 0x5678;
__main
		LDR R1, NUM1;
		LDR R2, NUM2;
		DIV R0, R1, R2;  // replace with ADD, SUB
		LDR R3, =Result;
		STR R0, [R3];
STOP B STOP
		AREA MulRes, DATA ,READWRITE
Result DCD 0x00;
		END
