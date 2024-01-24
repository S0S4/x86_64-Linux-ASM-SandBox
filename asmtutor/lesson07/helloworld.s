%include 'functions.s'

global _start

.data:

msg1 db "Hello, brave new world", 0h
msg2 db "Recycling!", 0h

_start:

  mov eax, msg1
  call sprintLF

  mov eax, msg2
  call sprint


  mov     ebx, 0
  mov     eax, 1
  int     80h


