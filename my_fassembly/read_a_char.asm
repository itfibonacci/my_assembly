format ELF64 executable

SYSCALL_WRITE = 1
SYSCALL_READ = 0
SYSCALL_EXIT = 60
STD_OUT = 0
STD_IN = 1

segment readable executable

; the idea of this program is to get a single character from the user
; then print this character back to the screen

entry main
main:
	; read one byte from stdin and put it in buf
	mov rax, SYSCALL_READ
	mov rdi, STD_IN
	mov rsi, buf
	mov rdx, 1
	syscall

	; move the newline character to the address one next to buf
	mov byte [buf + 1], 10

	; write to bytes to stdout
	mov rax, SYSCALL_WRITE
	mov rdi, STD_OUT
	mov rsi, buf
	mov rdx, 2
	syscall
	
	; Exit with code 0
	mov rax, SYSCALL_EXIT
	xor rdi, rdi
	syscall

segment readable writeable
buf rb 1
