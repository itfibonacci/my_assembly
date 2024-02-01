format ELF64 executable

SYSCALL_EXIT = 60;

macro exit code {
	mov rax, SYSCALL_EXIT
	mov rdi, code
	syscall
}

segment readable executable

entry main
main:
	exit 0
