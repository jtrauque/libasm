
global	ft_strcmp

ft_strcmp:
	mov al, [rdi]
	mov bl, [rsi]
	cmp bl, 0
	je exit
	inc rdi
	inc rsi
	sub al, bl
	je ft_strcmp
	movsx rax, al

	ret

exit:
	movsx rax, al
	ret
