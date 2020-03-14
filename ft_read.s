section .text
    global _ft_read

_error_fun:
    mov rax, -1
    ret

_ft_read:
    mov rax, 0x2000003
    syscall
    jc _error_fun
    ret