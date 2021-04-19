
global	ft_write
;extern	___error

ft_write:
	call _print
	mov rax, rdx
	ret

_print:
	mov rax, 1
	syscall

	cmp rax, 0
	jl .err

	ret

.err:
	mov rdx, -1
	mov rax, rdx
	;call ___error
	;mov rax, [rax]
	;neg rax
	ret
