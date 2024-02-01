format ELF64 executable

include "./include/macros.inc"

segment readable executable

entry main
main:
	mov byte [arr], 42
	mov byte [arr + 1], 43
	mov byte [arr + 2], 44
	mov byte [arr + 3], 45
	mov byte [arr + 4], 46
	mov byte [arr + 5], 47
	mov byte [arr + 6], 48
	mov byte [arr + 7], 49
	mov byte [arr + 8], 50
	mov byte [arr + 9], 51
	lea r8, [arr]
	mov qword [arr_address], r8
	write STD_OUT, arr, 10
	write_newline
	write STD_OUT, arr, 10
	write_newline
	write STD_OUT, arr, 10
	write_newline
	write STD_OUT, arr, 10
	write_newline
	exit 0

segment readable writeable

arr rb 10
arr_address dq 0
