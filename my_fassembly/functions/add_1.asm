; function will take an argument. add one to it and return the number

format ELF64 executable

include "../include/macros.inc"

segment readable executable

entry main
main:
	mov rdi, 56
	call add_numbers

	add rax, '0'
	mov byte [letter], al
	write STD_OUT, letter, 1
	write_newline
	exit 0

add_numbers:
	add rdi, 2
	mov rax, rdi
	ret

segment readable writeable

letter rb 2
