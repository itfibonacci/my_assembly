section .data

section .text

global _start

_start:
    mov rax, 60          ; System call number for sys_exit
    xor rdi, rdi         ; Exit code 0
    syscall             ; Invoke system call
