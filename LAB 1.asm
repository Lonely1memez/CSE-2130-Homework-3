    .ORIG x3000
    LD R4, ADDRESS
    LDR R1, R4, #0	;R1: FIRST NUM
    LDR R2, R4, #1	;R2: SECOND NUM
    ADD R3, R1, R2	;R3=R1+R2
    STR R3, R4, x2
    AND R3, R1, R2	;R3=R1 AND R2
    STR R3, R4, x3
    NOT R5, R1  ;
    NOT R6, R2
    AND R3, R5, R6
    NOT R3, R3
    STR R3, R4, x4
    STR R5, R4, x5
    STR R6, R4, x6
    ADD R3, R1, #3
    STR R3, R4, x7
    ADD R3, R2, #-3
    STR R3, R4, x8

    AND R5, R1, #1
    BRz EVEN
    AND R3, R3, #0
    ADD R3, R3, #1
    STR R3, R4, x9
    BR NEXT
EVEN
    AND R3, R3, #0
    STR R3, R4, x9
NEXT	HALT
    ADDRESS	.FILL x3100
    .END