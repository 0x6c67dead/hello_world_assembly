.global _start

.section .data
msg:
  .asciz "Hello World!\n"

.section .text
_start:
  call print_hello_world
  jmp exit

print_hello_world:
  mov $0x01, %rax
  mov $0x01, %rdi
  lea msg(%rip), %rsi
  mov $0x0e, %rdx 
  syscall
  ret

exit:
  mov $0x3c, %rax
  mov $0x0, %rdi
  syscall
