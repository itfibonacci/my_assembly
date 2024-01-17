format ELF64 executable

segment readable executable
entry main
main:
	; places the syscall number 1 (write syscall) into the rax registry
	mov rax, 1
	; places the stdout fd to the rdi, which is the first parameter to the write syscall
	mov rdi, 1
	mov rsi, msg
	mov rdx, 14
	syscall
	start
	mov rax, 60
	mov rdi, 0
	syscall

segment readable writeable
msg db "Hello, World!", 10
