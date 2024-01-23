global _start

.data:

msg db 'Hello World Guys',0Ah

_start:

  lea eax, [msg]
  mov esi, eax

  cmp eax, ebx
  jnz nextchar


nextchar:

  inc esi

  movzx edx, byte [esi] ; Buscamos el null byte de final de la string
  cmp edx, 0xA
  je count
  jmp nextchar


count:

  sub esi, eax
  mov ebx, 1
  mov ecx, msg
  mov edx, esi
  mov eax, 4
  int 80h

jmp finish


finish:

  mov ebx, 0x0
  mov eax, 0x1
  int 80h

