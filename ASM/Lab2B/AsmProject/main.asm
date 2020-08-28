;//  Adrian Nastase
;//  CSIS - 118B - 1282
;//  8 / 26 / 2020
;//  Lab 2B

INCLUDE asmlib.inc

.data



.code

main PROC

	call clearScreen		;//asm command for clearing screen/window

	call writeHex			;//writes the content of EAX to the console
	endl					;//moves cursor to next line BYTE 0dh,0ah also works 

	mov al, 22h				;//updates the AL portion which is 8-bit therefore only changing the last two digits "000000xx" of the previous hex number
	call writeHex			;//writes the content of AL to the console
	endl					;//moves cursor to next line BYTE 0dh,0ah also works 

	mov ax, 2222h			;//this one updates the AX portion which is 16-bit therefore the entire last 4 digits "0000xxxx" will be changed to 2222 the rest remain the same
	call writeHex			;//writes the content of AX to the console 
	endl					;//moves cursor to next line BYTE 0dh,0ah also works 

	mov ah, 33h				;//this one goes back to 8-bit but addresses the AH portion which is the second to last 8bits so "0000xx00" this changes the previous hex to only those places 
	call writeHex			;//writes the content of AH to the console 
	endl					;//moves cursor to next line BYTE 0dh,0ah also works 

	mov eax, 4444h			;//this goes back to EAC 32-bit, On a 64-bit mode and using 32-bit registers zeroes the top when you do any operation in this case "...000xxxx"
	call writeHex			;//writes the content of EAX to the console
	endl					;//moves cursor to next line BYTE 0dh,0ah also works 




	exit					;// exit the program

main ENDP
END main