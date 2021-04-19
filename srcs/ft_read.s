
global	ft_read

ft_read:
	mov rax, 0
	syscall 

	cmp rax, 0
	jl .err

	ret

.err:
	mov rdx, -1
	mov rax, rdx
	ret
