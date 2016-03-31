%include "macros.inc"
%include "defines.inc"

section .data

%include "data.inc"

section .bss

%include "bss.inc"

section .text

%include "system.asm"

global _start

_start:
	call socket_tcp_open
	push rdi
	mov rdi,rax
	call close
	pop rdi
	jmp exit_success
