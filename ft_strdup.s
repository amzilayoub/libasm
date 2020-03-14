section .text
    global _ft_strdup
    extern _malloc
    extern _ft_strlen
    extern _ft_strcpy

_exit:
    ret

_helper_fun:

_ft_strdup:
    mov rax, 0
    push rdi
    call _ft_strlen
    inc rax
    mov rdi, rax
    call _malloc
    cmp rax, 0
    je _exit
    mov rdi, rax
    pop rsi
    call _ft_strcpy
    ret