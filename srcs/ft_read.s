
global	ft_read
extern	__errno_location

ft_read:
	mov rax, 0
	syscall 

	cmp rax, 0
	jl .err

	ret

.err:
	push rbx
	mov rbx, rax
	call __errno_location wrt ..plt
	neg rbx
	mov [rax], rbx
	pop rbx
	mov rdx, -1
	mov rax, rdx
	ret
