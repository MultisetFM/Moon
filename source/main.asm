%include "macros.inc"
%include "defines.inc"

section .data

%include "data.inc"

section .bss

%include "bss.inc"

section .text

%include "system.inc"

global _start

_start:
	jmp exit_success
