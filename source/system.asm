exit_success:
	xor rdi,rdi

exit:
	mov rax,sys_exit
	syscall
