global _start

SECTION .data

file db 'readme.txt', 0h

SECTION .text


_start:

mov ebx, file
mov eax, 0xA
int 80h


mov ebx, 0
mov eax, 1
int 80h
