
;<--------------x86-64 code below-------------->
;.code
;main PROC
;	 mov rax, 2
;	 mov rbx, 3
;	 mov rcx, 4
;	 ret
;main endp
;end
;<--------------x86-32 code below-------------->
;.386
;.model flat
;.code
;main	proc
;	mov eax,2
;	mov ebx,3
;	mov ecx,4
;	ret
;main	endp
;end	main
;<--------------x16 bit code below -------------->
.386
.model flat
.code
main	proc
	mov ax,2
	mov bx,3
	mov cx,4
	ret
main	endp
end		main