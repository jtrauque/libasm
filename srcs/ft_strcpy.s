

global ft_strcpy
extern	ft_strlen

ft_strcpy:
	push rdi
	push rdi
	mov rdi, rsi
	call ft_strlen
	mov rcx, rax
	inc rcx ; mettre de la place pour le 0 et empeche d avoir rcx a 0
	pop rdi
	rep movsb
	;pop rdi
	;mov rax, rdi
	pop rax

	ret
