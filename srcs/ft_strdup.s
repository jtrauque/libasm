
global	ft_strdup
extern	malloc
extern	ft_strlen
extern	ft_strcpy

ft_strdup:
	call ft_strlen
	mov rcx, rax
	inc rcx
	push rdi
	mov rdi, rcx
	call malloc wrt ..plt
	pop rsi
	cmp rax, 0
	je exit
	mov rdi, rax
	call ft_strcpy

exit:
	ret
