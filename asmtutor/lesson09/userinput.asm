%include    'functions.asm'

global _start


section .data

msgWelcome db 'Introduce tu nombre:', 0h

section .bss
userInput: resb 255

section .text

_start:

  mov eax, msgWelcome
  call sprint

  ; Take user input
  mov edx, 255
  mov ecx, userInput
  mov ebx, 0
  mov eax, 3
  int 80h

; Print user input

 mov eax, userInput
 call sprint


  mov eax, 1
  mov ebx, 0
  int 80h
