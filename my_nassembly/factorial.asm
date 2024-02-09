section .text

global _start

_start:
	mov rdi, 5
	call factorial

factorial:
	push rbp
	mov rbp, rsp
	mov rax, 1

_looping:
	imul rdi
	dec rdi
	jnz _looping

_end:
	mov rax, 60
	mov rdi, 0
	syscall
