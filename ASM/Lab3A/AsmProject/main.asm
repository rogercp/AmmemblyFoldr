;//  Rogelio Caballero
;//  CSIS - 118B - 1282
;//  9 / 2 / 2020
;//  Lab 3A

INCLUDE asmlib.inc

.data



.code

main PROC

	call clearScreen	;//asm command for clearing screen/window
 

	mov eax, 100010b	;// first we convert the number 32 into binary and add a radix "d" which specifies that the number is in binary 
	call writeInt		;//print to the window the current number in the eax register in decimal form 
	endl				;//macro that works as a carraige return to move onto the next line

	mov eax, 52h		;// first we convert the number 82 into hex and add a radix "h" which specifies that the number is in hex 
	call writeInt		;//print to the window the current number in the eax register in decimal form 
	endl				;//macro that works as a carraige return to move onto the next line

	mov eax, 61o		;// first we convert the number 49 into octal and add a radix "o" which specifies that the number is in octal
	call writeInt		;//print to the window the current number in the eax register in decimal form 
	endl				;//macro that works as a carraige return to move onto the next line



	exit				;// exit the program

main ENDP
END main