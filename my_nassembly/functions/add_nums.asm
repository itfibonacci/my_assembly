section .text

global _start

_start:
	; Our function will accept two arguments, add them, return the result
	mov rdi, 5
	mov rsi, 7

	call add_nums

	; Exit the program
	mov rax, 60
	xor rdi, rdi
	syscall

add_nums:
	add rdi, rsi
	mov rax, rdi
	ret
