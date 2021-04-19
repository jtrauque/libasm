
global	ft_write
extern	ft_strlen

ft_write
	call _print
	mov rax, rdx

	ret

_print
	mov rax, 1
	syscall

	ret
