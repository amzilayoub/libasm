section .text
    global _ft_strcmp

_cmp_exit:
    sub rax, rbx        ; the sub between the two value
    ret

_ft_strcmp:
    mov rax, 0          ; set return value to 0
    mov al, [rdi]       ; move char of the first param to al register
    mov bl, [rsi]       ; move char of the second param to bl register
    cmp al, 0           ; compare if it's 0
    je _cmp_exit        ; if it's, then jump to _cmp_exit
    cmp bl, 0           ; compare if it's 0
    je _cmp_exit        ; if it's, then jump to _cmp_exit
    inc rdi             ; increment first param
    inc rsi             ; increment second param
    cmp al, bl          ; compare between the two char
    jne _cmp_exit       ; if not equal, then jump to _cmp_exit
    je _ft_strcmp       ; if equal, jump to _ft_strlen again