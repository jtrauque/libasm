

global ft_strcpy

ft_strlen:
	mov rax, rsi
	mov rbx, 0
	call _loop

_loop:
	inc rax
	inc rbx
	mov cl, [rax]
	cmp cl, 0
	jne _loop
	mov rcx, rbx

	ret 

ft_strcpy:
	call ft_strlen
	rep movsq
	mov rax, rdi

	ret
