global _start

%define stdout 1
%define syswrite 1
%define exit_success 0
%define sys_exit 60

section .data
msg: db "hello, world", 0xA
len: equ $ - msg

section .text

	mov rdi, stdout
	mov rsi, msg
	mov rdx, len
	mov rax, syswrite
	syscall

	mov rdi, exit_success
	mov rax, sys_exit
	syscall
