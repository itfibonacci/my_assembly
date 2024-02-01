format ELF64 executable

segment readable executable

entry main
main:
	mov al, 60;
	mov edi, 1;
	syscall;
