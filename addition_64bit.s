		AREA add64, CODE, READONLY
		ENTRY
		EXPORT __main
			
NUM1 DCD 0X11111111;
NUM2 DCD 0X66666666;
NUM3 DCD 0X22222222;
NUM4 DCD 0X33333333;
__main
		LDR R0, NUM1;
		LDR R1, NUM2;
		LDR R2, NUM3;
		LDR R4, NUM4;
		ADD R4, R0, R1;
		ADD R5, R2, R3;
		LDR R6, =LOWER;
		STR R4, [R6];
		LDR R8, =HIGHER;
		STR R5, [R8];
STOP B STOP
		AREA MulRes, DATA , READWRITE
LOWER DCD 0X00;			
HIGHER DCD 0x00;
		END