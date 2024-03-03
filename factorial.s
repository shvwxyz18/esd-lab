    AREA factorial, CODE, READONLY
    ENTRY
    EXPORT __main
__main
    MOV R0, #6
    MOV R1, #1

loop
    MUL R1, R0
    SUBS R0, #1
    BNE loop
    LDR R2, =Result;
    STR R0, [R2];
STOP B STOP
AREA Res, DATA , READWRITE
Result DCD 0x00;
END
