.686
.model flat,c

.code
SignedMinA proc
	push ebp
	mov ebp,esp

	mov eax,[ebp+8]		; eax = 'a'
	mov ecx, [ebp+12]	; ecx = b
	cmp eax,ecx
	jle @F				; Jump to nearest @@ if less than or equal to
	mov eax, ecx		; eax = min(a, b)
	
@@: mov ecx,[ebp+16]
	cmp eax,ecx
	jle @F
	mov eax,ecx			; eax = min(a,b,c)

@@: pop ebp
	ret
SignedMinA endp

SignedMaxA proc
	push ebp
	mov ebp,esp

	mov eax,[ebp+8]		; eax = 'a'
	mov ecx, [ebp+12]	; ecx = b
	cmp eax,ecx
	jge @F
	mov eax,ecx			; eax = max(a,b)

@@:	mov ecx,[ebp+16]
	cmp eax,ecx
	jge @F
	mov eax, ecx		; eax = max(a,b,c)

@@:	pop ebp
	ret
SignedMaxA endp

SignedMinB proc
	push ebp
	mov ebp,esp

	mov eax,[ebp+8]		; eax = a
	mov ecx,[ebp+12]	; ecx = b
	cmp eax,ecx
	cmovg eax,ecx		; Copies content of ecx to eax if eax is greater than ecx
						; eax = min(a,b)

	mov ecx,[ebp+16]
	cmp eax,ecx
	cmovg eax,ecx		; eax = min(eax,c)

	pop ebp
	ret
SignedMinB endp

SignedMaxB proc
	push ebp
	mov ebp,esp

	mov eax,[ebp+8]		; eax = a
	mov ecx,[ebp+12]	; ecx = b
	cmp eax,ecx
	cmovl eax,ecx		; Copies content of ecx to eax if eax is less than ecx
						; eax = max(a,b)

	mov ecx,[ebp+16]
	cmp eax,ecx
	cmovl eax,ecx		; eax = min(eax,c)

	pop ebp
	ret
SignedMaxB endp
end