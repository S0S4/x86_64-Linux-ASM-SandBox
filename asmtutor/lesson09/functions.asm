sprint:

    mov ebx, eax
    call strlen

    mov     edx, eax
    mov     ecx, ebx
    mov     ebx, 1
    mov     eax, 4
    int     80h

    ret

sprintLF:

  call sprint

  mov eax, 0Ah
  push eax
  mov ecx, esp
  mov edx, 1
  mov eax, 4
  int 80h

  pop edi
  ret


strlen:
    cmp     byte [eax], 0
    jz      finished
    inc     eax
    jmp     strlen

finished:
    sub     eax, ebx
    ret
