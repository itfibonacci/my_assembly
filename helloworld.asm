format ELF64 executable

SYSCALL_WRITE = 1
SYSCALL_EXIT = 60
STD_OUT = 1

macro exit code {
	mov rax, SYSCALL_EXIT
	mov rdi, code
	syscall
}

macro write fd, buf, size {
	mov rax, SYSCALL_WRITE
	mov rdi, fd
	mov rsi, buf
	mov rdx, size
	syscall
}

segment readable executable

entry main
main:
	write STD_OUT, msg, msg_len
	write STD_OUT, msg2, msg_len
	exit 0

segment readable writeable
msg db "Hello World!", 10
msg_len = $ - msg
msg2 db "Bye!", 10
msg2_len = $ - msg2
