global _start

SECTION .data

command db  '/sbin/reboot', 0h
arg1 db     0h
arguments   dd command
            dd arg1
            dd 0h
environment dd 0h


SECTION .text


_start:

mov ebx, command
mov ecx, arguments
mov edx, environment
mov eax, 11

int 80h
