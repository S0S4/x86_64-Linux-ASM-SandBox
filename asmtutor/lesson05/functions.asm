sprint:

    mov ebx, eax
    call strlen

    mov     edx, eax
    mov     ecx, ebx
    mov     ebx, 1
    mov     eax, 4
    int     80h

    ret

strlen:
    cmp     byte [eax], 0
    jz      finished
    inc     eax
    jmp     strlen

finished:
    sub     eax, ebx
    ret
