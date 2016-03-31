exit_success:
	xor rdi,rdi

exit:
	mov rax,sys_exit
	syscall

socket_tcp_open:
	push rdx
	push rsi
	push rdi
	mov rdx,PROTOCOL_TCP	; int socket(int protocol,
	mov rsi,SOCK_STREAM	;	     int type,
	mov rdi,AF_INET		; 	     int domain);
	mov rax,sys_socket	; socket(rdi, rsi, rdx);
	syscall
	pop rdi
	pop rsi
	pop rdx
	ret

close:
	mov rax,sys_close
	syscall
	ret
