format ELF64 executable

include "../include/macros.inc"

segment readable executable

entry main
main:
	mov rdi, 1
	;call add_1 instead of this call let's do it manually
	jmp add_1
	exit 0

add_1:
	add rdi, 1
	ret
