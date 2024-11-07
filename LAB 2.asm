.ORIG x3000
LDI R0, X
LDI R1, Y

;functions of X-Y
    NOT R3, R1
    ADD R3, R3, #1
    ADD R3, R0, R3
    STI R3, X_Y
    
    ADD R2, R0, #0 
    BRzp ABSX
    NOT R2, R2
    ADD R2, R2, #1
ABSX STI R2, ABX
    ADD R4, R1, #0
    BRzp ABSY
    NOT R4, R4
    ADD R4, R4, #1
    
ABSY STI R4 ABY
    NOT R4, R4
    ADD R4, R4, #1
    ADD R5, R2, R4
    BRzp NEXT
    AND R5, R5, #0
    ADD R5, R5, #2
    BRp SETZ
    
NEXT BRz SETZ
    AND R5, R5, #0
    ADD R5, R5, #1
    BRp SETZ
    
SETZ STI R5, Z
        HALT
X   .FILL X3120
Y   .FILL X3121
X_Y .FILL X3122
ABX .FILL X3124
ABY .FILL X3125
Z   .FILL X3125
    .END
