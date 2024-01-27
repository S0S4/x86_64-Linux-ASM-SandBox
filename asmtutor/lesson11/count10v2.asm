SECTION .text

global _start

_start:

mov ecx, 0

siguienteNum:

 inc ecx

  ; Pasar de INT a STR
 mov eax, ecx
 add eax, 48
 push eax

; Imprimir
 mov esi, ecx
 mov ecx, esp
 mov ebx, 1
 mov edx, 1
 mov eax, 4
 int 80h

 ; Salto de linea

 mov eax, 0Ah
 push eax
 mov ecx, esp
 mov edx, 1
 mov eax, 4
 int 80h

 mov ecx, esi
 cmp ecx, 9
 jnz siguienteNum
 cmp ecx, 10
 jz iften

iften:

mov eax, 49
push eax
; Imprimir
 mov ecx, esp
 mov ebx, 1
 mov edx, 1
 mov eax, 4
 int 80h

mov eax, 48
push eax
; Imprimir
 mov ecx, esp
 mov ebx, 1
 mov edx, 1
 mov eax, 4
 int 80h





; Exit
 mov ebx, 0
 mov eax, 1
 int 80h
