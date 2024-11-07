    .ORIG X3100
    LDI R1, n ; load n label to R1
    AND R2, R2, #0 ; initializes R2=0, clear R2
    ADD R2, R2, #1 ; R2 = 1,
    ADD R2, R2, #-3 ; R2 = -3
    ADD R2, R1, R2 ; R2 = 1 +-3=-2, n-2
    ;checks if it's positive
    BRP POS ; go to POS if positive
    AND R4, R4, #0 ; initializes R4
    ADD R4, R4, #1 ; F = 1 if it is negative
    STI R2, Fn ; store R2 result in Fn
    BR skip ; go to skip = halt
    
POS AND R2, R2, #0 ; clears R2
    ADD R2, R2, #1 ; R2 = 1, a=1
    AND R3, R3, #0 ; initializes R3
    ADD R3, R3, #1 ; R3 = 1, b=1
    ADD R5, R1, #-2 ; R5 = n - 2
    
FAB ADD R4, R2, R3 ;F=b+a
    ADD R2, R3, #0 ; a = b
    ADD R3, R4, #0 ;b=F
    ADD R5, R5, #-1
    BRp FAB
    STI R4, Fn ; store R4 result in Fn
    AND R2, R2, #0 ; clears R2
    ADD R2, R2, #1 ; R2 = 1, a
    AND R3, R3, #0 ; clears R3
    ADD R3, R3, #1 ; R3 = 1, b
    AND R5, R5, #0
    ADD R5, R5, #2; R5 = j = 2
    
FAB2 ADD R4, R2, R3 ; F = b+a
    BRn NEG
    ADD R2, R3, #0 ;a=b
    ADD R3, R4, #0 ; b = F
    ADD R5, R5, #1 ; i=i+1
    BRP FAB2
    
    NEG AND R6, R6, #0 ; clear R6
    ADD R6, R5, #0 ; R6 = N = i
    STI R6, N ; stores R6 in N
    STI R3, FN ; stores R3 result in FN
    
    skip HALT
n .FILL x3100
Fn .FILL x3101
N .FILL x3102
FN .Fill x3103
    .END
