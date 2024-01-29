format ELF64 executable

include "../include/macros.inc"

segment readable executable

entry main
main:
	mov r8, 10
print_loop:
	write STD_OUT, msg, msg_len
	dec r8
	test r8, r8
	jnz print_loop
end_program:
	exit 0

segment readable writeable

msg db "Hello", 10
msg_len = $ - msg
