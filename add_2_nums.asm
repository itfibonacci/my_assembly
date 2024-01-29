format ELF64 executable

include 'include/macros.inc'

segment readable executable

entry main
main:
	mov rax, 5
	mov rbx, 10
	add rax, rbx
	
	exit 0
