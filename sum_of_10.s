	AREA SUM10, CODE, READONLY
	ENTRY
	EXPORT __main
		
__main
	MOV R0, #1
	MOV R1, #0

LOOP
	ADD R1, R1, R0
	ADD R0, R0, #1
	CMP R0, #11
	BNE LOOP
	LDR R2, =RESULT
	STR R1, [R2]
	
STOP B STOP
	AREA RES, DATA, READWRITE
RESULT DCD 0x00
	END

 ;EXPECTED RESULT R1 - OX00000037
