%include 'functions.asm'

global _start

SECTION .data

filename db 'readme.txt', 0h
msg db 'Hello World', 0h


SECTION .text

_start:


; Create
mov ecx, 0777o
mov ebx, filename
mov eax, 8
int 80h

; Write
mov edx, 11
mov ecx, msg
mov ebx, eax
mov eax, 4
int 80h

; Open
mov ecx, 0
mov ebx, filename
mov eax, 5
int 80h

; Read
mov edx, 12
mov ecx, msg
mov ebx, eax
mov eax, 3
int 80h


mov eax, msg
call sprintLF


; Close file

  mov eax, 6
  int 80h

; Exit
mov ebx, 0
mov eax, 1
int 80h
