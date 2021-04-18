
global	ft_strcmp

ft_strcmp:
	mov al, [rdi]
	mov bl, [rsi]
	cmp al, 0
	je .exit
	cmp bl, 0
	je .exit
	inc rdi
	inc rsi
	sub al, bl
	je ft_strcmp
	movzx rax, al

	ret

.exit:
	movzx rax, al
	ret
