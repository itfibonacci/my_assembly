format ELF64 executable

segment readable executable

entry main
main:
	add al, 2
	add al, 2
	add al, 56
	xor edi, edi
	inc edi; increment the register by one
	inc edi
	dec edi; decrement the register
	add edi, -1
	syscall
