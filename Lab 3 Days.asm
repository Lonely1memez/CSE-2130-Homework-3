.ORIG x3000
	LEA R0, PROMPT		; Prompt user for input
	PUTS
	GETC			; Get input from user

; Convert input from ascii to integer
	ADD R0, R0, #-16
	ADD R0, R0, #-16
	ADD R0, R0, #-16

	ADD R0, R0, #0
	BRn INVALID
	ADD R0, R0, #-6
	BRp INVALID
;	OUT 


LOOP				; Go through the days of the week
	LEA R0, DAYS
	ADD R0, R0, #0
	BRz DISPLAY		; Day of week found, so display 	
	ADD R0, R0, #10		; Go to the next day of the week 
	ADD R0, R0, #-1		; Decrement the counter
	BRp LOOP
DISPLAY	PUTS			; Display the day of the week

INVALID				; Input is invalid

HALT

PROMPT .STRINGZ "Please enter a number from 0-6: "
DAYS .STRINGZ "Sunday   "
 .STRINGZ "Monday   "
 .STRINGZ "Tuesday  "
 .STRINGZ "Wendsday "
 .STRINGZ "Thursday "
 .STRINGZ "Friday   "
 .STRINGZ "Saturday " 


.END