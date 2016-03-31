; socket();
%define AF_INET	     0x2
%define SOCK_STREAM  0x1
%define PROTOCOL_TCP 0x6

; syscall numbers
%define sys_close  0x03
%define sys_socket 0x29
%define sys_exit   0x3C
