%include 'functions.asm'

global _start

SECTION .text

_start:

mov eax, 90
mov ebx, 9
sub eax, ebx

mov ecx, 0 ; Initialize counter

call encontrarUnidades

mov ebx, 0
mov eax, 1
int 80h
