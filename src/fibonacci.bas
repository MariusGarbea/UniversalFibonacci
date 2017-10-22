1000 REM Fibonacci Sequence Project
1010 REM Quite BASIC Math Project
1020 REM ------------------------ 
2010 CLS
2020 REM The array F holds the Fibonacci numbers
2030 ARRAY F
2040 LET F[0] = 0
2050 LET F[1] = 1
2060 LET N = 1
2070 REM Compute the next Fibbonacci number
2080 LET F[N+1] = F[N] + F[N-1]
2090 LET N = N + 1
2100 PRINT F[N];", ";
2110 REM Stop after printing  50 numbers
2120 IF N < 50 THEN GOTO 2080