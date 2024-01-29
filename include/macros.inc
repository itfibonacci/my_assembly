SYSCALL_EXIT = 60
SYSCALL_WRITE = 1
STD_IN = 0
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
