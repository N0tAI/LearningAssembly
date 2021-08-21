; This program adds and subtracts 32-bit integers.
.386					; Tells the Assembler that the program will only be using instructions found on the 80386 processor or below
.model flat,stdcall		; Identifies the memory segmentation model used. Also identifies the way procedures recieve their parameters
.stack 4096
.data					; Marks any variables within this module of the code
.code					; Marks the code of an executable
main PROC				; Creates a new procedure(function) of name main
	mov eax,10000h		; Moves the value of 0x10000 to register eax
	add eax,40000h		; Adds the value of 0x40000 from the value within register eax
	sub eax,20000h		; Subtracts the value of 0x20000 from the value within register eax
	ret					; Returns control to the calling function/procedure
main ENDP				; Marks the end of the main procedure
						; At this line and below you would insert other procedures which are non main
end	main				; Marks the end of the code to be assembled, it also identifies the name of the Program's startup procedure