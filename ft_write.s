section .text
    global _ft_write

_error_fun:
    mov rax, -1             ; set -1 for error
    ret

_ft_write:
    mov rax, 0x2000004
    syscall
    jc _error_fun           ; jump if carry flag is set
    ret