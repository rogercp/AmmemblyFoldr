;//  Rogelo Caballero
;//  CSIS - 118B - 1282
;//  9 / 2 / 2020
;//  Lab 3B

INCLUDE asmlib.inc

.data

promptMain BYTE "Enter three numbers", 0ah, 0dh,0															;// creating an string and setting it as a variable then terminating it whith the value 0
prompt1 BYTE "Enter the first number", 0ah, 0dh ,0															;// creating a string and setting it as a variable then terminating it whith the value 0
prompt2 BYTE "Enter the second number", 0ah, 0dh ,0															;// creating a string and setting it as a variable then terminating it whith the value 0
prompt3 BYTE "Enter the third number", 0ah, 0dh ,0															;// creating a string and setting it as a variable then terminating it whith the value 0

outputsum BYTE "The sum of the first and second number is ", 0ah, 0dh ,0										;// creating a string and setting it as a variable then terminating it whith the value 0
outputdifference BYTE  "The difference between the sum of the first two and the last number is:", 0ah, 0dh, 0	;// creating a string and setting it as a variable then terminating it whith the value 0

afterswapval1 BYTE "After swapping, the first number value is now: ", 0ah, 0dh ,0								;// creating a string and setting it as a variable then terminating it whith the value 0
afterswapval2 BYTE "After swapping, the second number value is now: ", 0ah, 0dh,0								;// creating a string and setting it as a variable then terminating it whith the value 0

val1 DWORD ?																						;//creating a 32-bit signed integer but setting it as undefined initially,this is the first number
val2 DWORD ?																						;//creating a 32-bit signed integer but setting it as undefined initially,this is the second number
val3 DWORD ?																						;//creating a 32-bit signed integer but setting it as undefined initially,this is the third number
sumvalof1and2 DWORD ?																				;//creating a 32-bit signed integer but setting it as undefined initially,this is the sum of number one and number two
difference DWORD ?																					;//creating a 32-bit signed integer but setting it as undefined initially,this is the difference between the sum of one and two minus number three

.code

main PROC

;//////////main major text
	mov edx, OFFSET promptMain	;//goes to the edx register and places the variable promptMain into it, the "OFFSET" goes to the first character address in the string then when it find the null or "0" it stops 
	call writeLine				;// prints the previous string to the the window 

;//////////get input for the number variables

	mov edx, OFFSET prompt1		;//goes to the edx register and overides the current value with the variable prompt1 into it, the "OFFSET" goes to the first character address in the string then when it find the null or "0" it stops 
	call writeLine				;// prints the previous string to the the window 
	call readInt				;//gets input from the keyboard and value is set to the eax register
	mov val1, eax				;//saves that value from the eax register as an integer in the variable val1
	endl						;//macro that works as a carraige return to move onto the next line

	mov edx, OFFSET prompt2		;//goes to the edx register and overides the current value with the variable prompt2 into it, the "OFFSET" goes to the first character address in the string then when it find the null or "0" it stops 
	call writeLine				;// prints the previous string to the the window 
	call readInt				;//gets input from the keyboard and value is set to the eax register
	mov val2, eax				;//saves that value from the eax register as an integer in the variable val2
	endl						;//macro that works as a carraige return to move onto the next line

	mov edx, OFFSET prompt3		;//goes to the edx register and overides the current value with the variable prompt3 into it, the "OFFSET" goes to the first character address in the string then when it find the null or "0" it stops 
	call writeLine				;// prints the previous string to the the window 
	call readInt				;//gets input from the keyboard and value is set to the eax register
	mov val3, eax				;//saves that value from the eax register as an integer in the variable val3
	endl						;//macro that works as a carraige return to move onto the next line


;//////////swap number1 and number2


	mov eax, val1				;//we are going into the eax register and placeing variable val1 into it replacing any value that was previously in the eax register


	mov edx,val2				;//we are going into the edx register and placeing variable val2 into it replacing any value that was previously in the eax register


	mov val2, eax				;//we are placing the value that is currently in the eax register into the variable val2


	mov val1,edx				;//we are placing the value that is currently in the dex register into the variable val1





	mov edx, OFFSET afterswapval1	;//goes to the edx register and overides the current value with the variable afterswapval1 into it, the "OFFSET" goes to the first character address in the string then when it find the null or "0" it stops 
	call writeLine					;//prints the previous string to the the window 
	mov eax, val1					;//now we check that the values have been swapped by placing the variable into the eax register, overriding the current value with the variable val1 and printing it to the window
	call writeInt					;//writes the previous integer out to the window 
	endl							;//macro that works as a carraige return to move onto the next line
	endl							;//macro that works as a carraige return to move onto the next line

	mov edx, OFFSET afterswapval2	;//goes to the edx register and overides the current value with the variable afterswapval2 into it, the "OFFSET" goes to the first character address in the string then when it find the null or "0" it stops 
	call writeLine					;//prints the previous string to the the window 
	mov eax,val2					;//now we check that the values have been swapped by placing the variable into the eax register, overriding the current value with the variable val2 and printing it to the window
	call writeInt					;//writes the previous integer out to the window 
	endl							;//macro that works as a carraige return to move onto the next line
	endl							;//macro that works as a carraige return to move onto the next line


;//////////sum the first two 

	mov edx, OFFSET outputsum		;//goes to the edx register and overides the current value with the variable afterswapval1 into it, the "OFFSET" goes to the first character address in the string then when it find the null or "0" it stops 
	call writeLine					;//prints the previous string to the the window 
	mov eax, val1					;//go into the eax register and overides the current value with the variable val1 
	add eax, val2					;//with use the add label and go into the eax register to grab the current value and combine it with the val2 variable
	mov sumvalof1and2, eax			;//we assign the variable sumvalof1and2 to the current value in register eax
	call writeInt					;//writes the previous integer out to the window 
	endl							;//macro that works as a carraige return to move onto the next line
	endl							;//macro that works as a carraige return to move onto the next line

	

;//////////subtract the third num from the sum of the two
	
	mov edx, OFFSET outputdifference	;//goes to the edx register and overides the current value with the variable outputdifference into it, the "OFFSET" goes to the first character address in the string then when it find the null or "0" it stop
	call writeLine						;//prints the previous string to the the window 
	mov eax, sumvalof1and2				;//go into the eax register and overides the current value with the variable sumvalof1and2 
	sub eax, val3						;//with use the sub label and go into the eax register to grab the current value and find the difference between the register value and the variable val3
	mov difference, eax					;//we assign the variable difference to the current value in register eax
	call writeInt						;//writes the previous integer out to the window 
	endl								;//macro that works as a carraige return to move onto the next line
	endl								;//macro that works as a carraige return to move onto the next line




	exit								;// exit the program

main ENDP
END main