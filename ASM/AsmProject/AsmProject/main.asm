;//  Adrian Nastase
;//  CSIS - 118B - 1282
;//  8 / 15 / 2020
;//  Lab 1

INCLUDE asmlib.inc

.data

msg BYTE "Hello World", 0	;// creates a BYTE variable msg

.code

main PROC
	mov edx, OFFSET  msg	;// moves the variable msg memory location into edx
	call writeLine			;// writes the message to the console and sends the 
							;// cursor to the next line

	exit					;// exit the program

main ENDP
END main