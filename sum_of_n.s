  AREA mul, CODE, READONLY
  ENTRY
  EXPORT __main
__main
  MOV R0, #1

loop
  ADD R1, R0
  ADD R0, #1
  CMP R0, #11
  BNE loop
  LDR R2, =Result;
  STR R0, [R2];
STOP B STOP
  AREA Res, DATA , READWRITE
Result DCD 0x00;
  END
