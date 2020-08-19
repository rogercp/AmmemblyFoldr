;//  Rogelio  Caballero
;//  CSIS - 118B - 1282
;//  8 / 19 / 2020
;//  Lab 1B

INCLUDE asmlib.inc

.data

msg1 BYTE "Welcome to", 0dh,0ah,0
msg2 BYTE "ASM Programming!", 0dh, 0ah, 0
msg3 BYTE  0dh, 0ah, 0
msg4 BYTE "ASM language is fun to work with!", 0dh, 0ah, 0


.code

main PROC
	mov edx, OFFSET  msg1;	// moves the variable msg memory location into edx
	call writeString;			// writes the message to the console 
	mov edx, OFFSET  msg2;	// moves the variable msg memory location into edx
	call writeString;			// writes the message to the console 
	mov edx, OFFSET  msg3;	// moves the variable msg memory location into edx
	call writeString;			// writes the message to the console 
	mov edx, OFFSET  msg4;	// moves the variable msg memory location into edx
	call writeString;			// writes the message to the console 

	exit;// exit the program

main ENDP
END main