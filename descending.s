AREA DESCENDING,CODE,READONLY
	EXPORT __main

__main
	MOV R8,#4 ;COUNTER
	LDR R2,=CVALUE ;ADDRESS OF ARRAY IN CODE REGION
	LDR R3,=DVALUE ;ADDRESS OF ARRAY IN DATA REGION

LOOP0
	LDR R1,[R2],#4 ;TAKE FIRST ARRAY VALUE FROM CODE REGION AND INCREMENT COUNTER BY 4

REGION
	STR R1,[R3],#4  ;TAKE SECOND ARRAY VALUE AND INCREMENT COUNTER
	SUBS R8,R8,#1   ;DECREMENT ARRAY COUNTER
	CMP R8,#0	    ;COMPARE COUNTER VALUE WITH 0
	BNE LOOP0	  ;BRANCH TO 'LOOP0' IF NOT EQUAL TO 0
	
START1
	MOV R5,#3		;COMPARISION COUNTER
	MOV R7,#0		;EXCHANGE FLAG
	LDR R1,=DVALUE	;ADDRESS OF ARRAY IN DATA REGION
	
LOOP
	LDR R2,[R1],#4  ;FIRST NUMBER
	LDR R3,[R1]	    ;SECOND NUMBER
	CMP R2,R3		;COMPARE BOTH NUMBERS
	BGT LOOP2		;BRANCH TO 'LOOP2' IF R2 IS GREATER THAN R3
	STR R2,[R1],#-4	;EXCHANGE R2 & R3
	STR R3,[R1]		;EXCHANGE R2 & R3
	MOV R7,#1		;SET EXCHANGE FLAG
	ADD R1,#4		;INCREMENT THE DATA ARRAY POINTER
LOOP2
	SUBS R5,R5,#1	;DECREMENT COMPARISION COUNTER
	CMP R5,#0		;COMPARE COUNTER WITH 0
	BNE LOOP		;LOOP UNTIL ALL THE COMPARISIONS ARE DONE i.e COUNTER IS 0
	CMP R7,#0		;CHECK EXCHANGE FLAG IF 0 THEN THE ARRAY IS SORTED
	BNE START1		;BRANCH IF EXCHANGE FLAG IS NOT 0
	
	NOP ;NO OPERATION
	NOP
	NOP
	
CVALUE DCD 0X44444444
	   DCD 0X11111111
	   DCD 0X33333333
	   DCD 0X22222222
	AREA DST,DATA,READWRITE
DVALUE DCD 0X0
	END
