format ELF64 executable

macro exit code {
	mov rax, 60
	mov rdi, code
	syscall
}
segment readable executable

entry main
main:
	exit 0
