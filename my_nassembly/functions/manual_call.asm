section .text

%macro exit 1
	mov rax, 60
	mov rdi, %1
	syscall
%endmacro

global _start

_start:
	mov rdi, 1
	mov rsi, 5
	; now instead of just executing call add_nums let's see how to do that manually when we execute call add_nums, the current instruction pointer is pushed onto the stack so that later we can come back to it. then the current rip is pointed at the beginning of the function. oh jeez turns out you cannot manually change the rip register. You have to use jmp. And you can't even push rip into the stack. you have to define a label like ( code_end ) and push that.
	push code_end
	jmp add_nums

code_end:
	exit 0

add_nums:
	; this funcy will take two parameters and add them
	; we are expecting the params to be passed through registers rdi, rsi
	mov rax, rdi
	add rax, rsi
	ret
	; ret instruction pops the next address into the rip register
