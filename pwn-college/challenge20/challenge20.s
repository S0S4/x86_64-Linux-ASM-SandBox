global _start

.data:
intArray db 1,2,3,4,5
index db 0

_start:

        lea rdi,[intArray]
        mov rsi, 0x4
        mov rax, 0x0

        test rsi, 0x0
        jae LOOP

LOOP:
        add rax, rdi
        lea rdi, [rdi+rsi]
        dec rsi
        test rsi, 0x0
        ja _start

        ret


