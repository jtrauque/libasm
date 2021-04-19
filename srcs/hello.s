
section .data
		text db "Hello World",10 , 0
section .text
		global _start

_start:
	mov rax, text
	call _count

	mov rax, 60
	mov rdi, 0
	syscall

_count:
	push rax ; save the value of rax for later
	mov rbx, 0

_loop:
	inc rax
	inc rbx
	mov cl, [rax]
	cmp cl, 0
	jne _loop

	mov rax, 1
	mov rdi, 1
	pop rsi
	mov rdx, rbx
	syscall

	ret
