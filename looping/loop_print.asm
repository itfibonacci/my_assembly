; this program demonstrates why using loop is not a good idea...
; it results in an infinite loop
format ELF64 executable

segment readable executable

include "../include/macros.inc"

entry main
main:
	mov rcx, 5; All loop instructions automatically decrement this register
my_loop:
	write STD_OUT, msg, msg_len
	loop my_loop
	exit 0

msg db "Hello", 10
msg_len = $ - msg
