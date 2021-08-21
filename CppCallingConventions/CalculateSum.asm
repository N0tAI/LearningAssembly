.386
.model flat,c
.code
CalculateSum proc
	; Function prolog
	push ebp
	mov ebp,esp		
	sub esp, 12			; allocates 12 bytes of memory to the stack/local storage(stack grows downwards, towards lower addresses)
	push ebx
	push esi			; local storage uses negative displacement values while function arguments uses positive displacement values from the base pointer
	push edi

	; load arguments
	; ebp+4 is the address of the calling function
	; following that is the parameters of the function passed via stack
	mov eax,[ebp+8]		; eax = 'a'
	mov ebx,[ebp+12]	; ebx = 'b'
	mov ecx,[ebp+16]	; ecx = 'c'
	mov edx,[ebp+20]	; edx = 's1'
	mov esi,[ebp+24]	; esi = 's2'
	mov edi,[ebp+28]	; edi = 's3'

	; Compute s1 = a + b + c
	mov [ebp-12],eax	; moving values to local mem 'temp s1'
	add [ebp-12],ebx
	add [ebp-12],ecx

	; Compute s2 = a^2 + b^2 + c^2
	imul eax,eax
	imul ebx,ebx
	imul ecx,ecx
	mov [ebp-8],eax
	add [ebp-8],ebx
	add [ebp-8],ecx

	; Compute s3 = a^3 + b^3 + c^3
	imul eax,[ebp+8]	;eax = a * a * a
	imul ebx,[ebp+12]
	imul ecx,[ebp+16]
	mov [ebp-4],eax
	add [ebp-4],ebx
	add [ebp-4],ecx

	; Save s1, s2, and s3
	mov eax,[ebp-12]
	mov [edx],eax
	mov eax,[ebp-8]
	mov [esi],eax
	mov eax, [ebp-4]
	mov [edi],eax
	
	; Epilog
	; Restoring necessary registers
	pop edi
	pop esi
	pop ebx
	mov esp,ebp ; Reclaiming memory from the stack
	pop ebp
	ret
CalculateSum endp
end