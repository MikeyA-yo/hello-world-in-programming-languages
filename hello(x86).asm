section .data
    helloMsg db 'Hello, World!', 0

section .text
    global _start

_start:
    ; write the message to stdout
    mov eax, 4       ; sys_write syscall number
    mov ebx, 1       ; file descriptor 1 (stdout)
    mov ecx, helloMsg ; pointer to the message
    mov edx, 13      ; message length
    int 0x80         ; call kernel

    ; exit
    mov eax, 1       ; sys_exit syscall number
    xor ebx, ebx     ; return code 0
    int 0x80         ; call kernel
