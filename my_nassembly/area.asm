section .text

global _start

%define SYSCALL_WRITE 1
%define STD_OUT 1
%define SYSCALL_READ 0
%define STD_IN 0

%macro write 2
	mov rax, SYSCALL_WRITE
	mov rdi, STD_OUT
	mov rsi, %1
	mov rdx, %2
	syscall
%endmacro

%macro read 1
	mov rax, SYSCALL_READ
	mov rdi, STD_IN
	mov rsi, %1
	mov rdx, 1
	syscall
	movzx %1, byte [rsi]
%endmacro

area:
	push rbp
	mov rbp, rsp
	mov rax, rdi
	imul rsi
	pop rbp
	ret

_start:
	write message1, message1len
	read length
	write message2, message2len
	read width
	mov rdi, [length]
	mov rsi, [width]
	call area

_end:
	mov rax, 60
	mov rdi, 0
	syscall

section .data
message1 db 'Please input the length of the rectangle: '
message1len equ $-message1
message2 db 'Please input the width of the rectangle: '
message2len equ $-message2

section .bss
length: resb 1
width: resb 1
