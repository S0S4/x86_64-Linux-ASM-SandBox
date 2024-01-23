global _start

.data:
intArray db 1,2,3,4,5
index db 0

_start:

  lea rdi, [intArray] ; Apunta a la direccion de la array
  mov rsi, 4 ; N iteraciones
  xor rax, rax ; int Average

  cmp rsi, 0x0
  jne LOOP
  jmp EXIT

LOOP:

    movzx rcx, byte [rdi]
    add rax, rcx
    inc rdi
    dec rsi
    cmp rsi, 0xFFFFFFFFFFFFFFFF
    jne LOOP
    mov ecx, 0x7
    div ecx
    jmp EXIT

EXIT:

  mov rax, 60
  xor rdi, rdi
  syscall

