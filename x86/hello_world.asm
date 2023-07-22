section .text
global _main
extern _printf ;defeats the purpose of purity :(    


_main:

  push msg
  call _printf
  add esp, 4 ; cdecl calling convention. We have to clear the stack inside in the caller rather than the callee like stdcall. I love stds.
  ret

section .data

  msg db "Hello, World", 0xA, 0xD, 0x0
