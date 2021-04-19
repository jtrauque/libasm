
global ft_strlen

ft_strlen:
	mov rax, rdi
	mov cl, [rax]
	cmp cl, 0
	je _exit
	mov rbx, 0

_loop:
	inc rax
	inc rbx
	mov cl, [rax]
	cmp cl, 0
	jne _loop
	mov rax, rbx

	ret

_exit:
	mov rbx, 0
	mov rax, rbx
	ret
