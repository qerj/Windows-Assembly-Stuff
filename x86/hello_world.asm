section .text
global _main
extern _printf ;defeats the purpose of purity :(    


_main:

  push msg
  call _printf
  add esp, 4 ; we dont use "pop" in this household [|[___(..__]|]
  ret

section .data

  msg db "Hello, World", 0xA, 0xD, 0x0
