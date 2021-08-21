.386
.model flat

.data
;intArray SWORD 0,0,0,0,9,3,0-34,-56,7,8
intArray sword 0,0,0,0,0,0,0,0,0,0,0,0
.code
start proc
	mov ebx, OFFSET intArray
	mov ecx, LENGTHOF intArray
LP:
	cmp WORD PTR[ebx], 0
	jnz found
	add ebx,2
	loop LP
	jmp notFound
found:
	movsx eax, WORD PTR[ebx]
	jmp quit
notFound:
	mov eax,0
quit:
	ret
start endp
end start