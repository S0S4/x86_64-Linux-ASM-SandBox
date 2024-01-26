; Hello World Program (Passing arguments from the command line)
; Compile with: nasm -f elf helloworld-args.asm
; Link with (64 bit systems require elf_i386 option): ld -m elf_i386 helloworld-args.o -o helloworld-args
; Run with: ./helloworld-args

SECTION .text
global  _start

.data:

saltoLinea db '', 0Ah

_start:

    pop esi
    cmp esi, 0
    jz exit

sosa:
  pop eax
  mov ecx, eax
  mov ebx, 1

nextchar:

    inc     edx ; Contador de caracteres
    inc     eax
    cmp     byte [eax], 0
    jnz     nextchar
  mov eax, 4

  int 80h
  mov ecx, saltoLinea
  ;mov ebx, 1
  mov edx, 1
  mov eax, 4
  int 80h
  mov ecx, esi
  dec esi
    loop    sosa

exit:
  mov ebx, 0
  mov eax, 1
  int 80h

