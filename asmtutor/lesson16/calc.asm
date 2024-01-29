%include 'functions.asm'


global _start

SECTION .text

_start:

  pop ecx
  pop esi
  pop eax
  mov ecx, 0

  call atoi

atoi:
 mov bl, byte [eax+ecx]
 cmp bl, 0x30
 jl exit
 cmp bl, 0x39
 jg exit
 sub bl, 0x30
 mov edi, bl
 mov byte [edx+ecx] ,edi

 inc ecx
 cmp bl, 0
 jnz atoi
 call exit


exit:

  mov ebx, 0
  mov eax, 1
  int 80h

