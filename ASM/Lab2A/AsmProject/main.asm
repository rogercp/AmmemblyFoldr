;//  Rogelio Caballero
;//  CSIS - 118B - 1282
;//  8 / 26 / 2020
;//  Lab 2A

INCLUDE asmlib.inc

.data

msg1 BYTE "Here are my programming books:", 0dh,0ah,0							;//creates a BYTE variable msg with spacing underneath

title1 BYTE "Eleoquent Javascript", 0											;//creates a BYTE variable msg
title12 BYTE "An illustrated guide for programmers and other curious people", 0	;//creates a BYTE variable msg
author1 BYTE "Marin Haverbeke", 0												;//creates a BYTE variable msg
publisher1 BYTE  "No Starch Press", 0											;//creates a BYTE variable msg

title2 BYTE "Grokking Algorithms", 0											;//creates a BYTE variable msg
title22 BYTE "A Modern Introduction to Programming", 0							;//creates a BYTE variable msg
author2 BYTE "Aditya Y. Bhargava", 0											;//creates a BYTE variable msg
publisher2 BYTE  "Manning Publications", 0										;//creates a BYTE variable msg

msg BYTE 0dh, 0ah, 0															;//CR LF
tabr BYTE 9h, 0																	;//creates BYTE variable tab  


.code
 
main PROC

	call clearScreen

	mov edx, offset msg1		;// moves the first message into the edx registry
	call WriteString			;//writes the message
	mov edx, offset msg			;//moves into the edx registery the crlf string
	call WriteString			;//writes the string to screen

	;///////////////////////////////////Book 1/////////////////////////////////////////////////

	mov edx, offset title1		;//moves the title1 string message into the edx registry
	call WriteString			;//writes the message
	mov edx, offset msg			;//moves into the edx registery the crlf string
	call WriteString			;//writes the string to screen

	mov edx, offset title12		;//moves the title12 string message into the edx registry
	call WriteString			;//writes the message
	mov edx, offset tabr		;//moves into the edc registry the tab string
	call WriteString			;//writes message
	mov edx, offset tabr		;//moves into the edc registry the tab string
	call WriteString			;//writes message

	mov edx, offset author1		;//moves the author1 string message into the edx registry
	call WriteString			;//writes message
	mov edx, offset tabr		;//moves into the edc registry the tab string
	call WriteString			;//writes message
	mov edx, offset tabr		;//moves into the edc registry the tab string
	call WriteString			;//writes message
	

	mov edx, offset publisher1	;//moves the publisher1 string message into the edx registry
	call WriteString			;//writes message
	mov edx, offset tabr		;//moves into the edc registry the tab string
	call WriteString			;//writes message
	mov edx, offset tabr		;//moves into the edc registry the tab string
	call WriteString			;//writes message
	mov edx, offset tabr		;//moves into the edc registry the tab string
	call WriteString			;//writes message


	;//Creates space below output 
	mov edx, offset msg;//moves into the edx registery the crlf string
	call WriteString;//writes the string to screen
	
	;//////////////////////////////////////Book 2/////////////////////////////////////////////////////////
	

	mov edx, offset title2;//moves the title2 string message into the edx registry
	call WriteString;//writes the message
	mov edx, offset msg;//moves into the edx registery the crlf string
	call WriteString;//writes the string to screen

	mov edx, offset title22;//moves the title22 string message into the edx registry
	call WriteString;//writes the message
	mov edx, offset tabr;//moves into the edc registry the tab string
	call WriteString;//writes message
	mov edx, offset tabr;//moves into the edc registry the tab string
	call WriteString;//writes message
	mov edx, offset tabr;//moves into the edc registry the tab string
	call WriteString;//writes message
	mov edx, offset tabr;//moves into the edc registry the tab string
	call WriteString;//writes message
	mov edx, offset tabr;//moves into the edc registry the tab string
	call WriteString;//writes message


	mov edx, offset author2;//moves the author2 string message into the edx registry
	call WriteString;//writes message
	mov edx, offset tabr;//moves into the edc registry the tab string
	call WriteString;//writes message



	mov edx, offset publisher2;//moves the publisher2 string message into the edx registry
	call WriteString;//writes message
	mov edx, offset tabr;//moves into the edc registry the tab string
	call WriteString;//writes message
	mov edx, offset tabr;//moves into the edc registry the tab string
	call WriteString;//writes message
	mov edx, offset tabr;//moves into the edc registry the tab string
	call WriteString;//writes message

	;//Creates space below output 
	mov edx, offset msg;//moves into the edx registery the crlf string
	call WriteString;//writes the string to screen


	;//////////////////////exits program////////////////////////////

	exit;// exit the program

main ENDP
END main