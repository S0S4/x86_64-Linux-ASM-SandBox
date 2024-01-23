global _start

.data:

msg db 'Hello World', 0Ah
len  equ  $-msg

_start:


mov edx, len
mov ecx, msg
mov ebx, 1
mov eax, 0x4

int 80h

mov ebx, 0x0
mov eax, 0x1

int 80h

