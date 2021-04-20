
global	ft_strcmp

ft_strcmp:
	mov al, [rdi]
	mov bl, [rsi]
	cmp bl, 0
	je exit
	inc rdi
	inc rsi
	movzx rax, al
	movzx rbx, bl
	sub rax, rbx
	je ft_strcmp

	ret

exit:
	movzx rax, al
	ret
