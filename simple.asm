format ELF64 executable

segment readable executable

entry main
main:
	mov al, 60; Place 60 (syscall exit) into the register eax
	xor edi, edi;
	syscall;
