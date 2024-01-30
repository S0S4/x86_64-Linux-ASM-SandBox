%include 'functions.asm'

global _start

SECTION .data

filename db 'readme.txt', 0h
msg db 'Hello World', 0h
update db ' Updated', 0h

SECTION .text

_start:


; Open
mov ecx, 1
mov ebx, filename
mov eax, 5
int 80h

; Lseek
mov ebx, eax
mov ecx, 0
mov edx, 2
mov eax, 19
int 80h


; Write
mov edx, 7
mov ecx, update
mov eax, 4
int 80h

; Close file

  mov eax, 6
  int 80h

; Exit
mov ebx, 0
mov eax, 1
int 80h
