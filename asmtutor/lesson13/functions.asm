encontrarUnidades:

  inc ecx
  mov esi, 10
  idiv esi
  add edx, 48
  push edx
  mov edx, 0
  cmp eax, 0
  jnz encontrarUnidades

  mov esi, ecx

iPrint:


  mov ebx, 1
  mov ecx, esp
  pop edi
  dec esi
  mov edx, 2
  mov eax, 4

  int 80h

  cmp esi, 0
  jnz iPrint

  ret



