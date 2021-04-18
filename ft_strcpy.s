

global ft_strcpy
extern	ft_strlen


ft_strcpy:
	push rdi
	mov rdi, rsi
	call ft_strlen
	mov rcx, rax
	pop rdi
	rep movsq
	mov rax, rdi

	ret
