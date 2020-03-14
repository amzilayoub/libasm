section .data
    string: db "hello", 0

section .text
    global _ft_strcpy

_copy_helper:
    mov cl, [rsi]       ; Mov the  byte to cl register
    mov [rdi], cl       ; mov the byte in cl to rdi
    inc rdx             ; increment the counter
    inc rdi             ; increment the first param
    inc rsi             ; increment the second param
    cmp cl, 0           ; compare the cl to the end of string ('\0')
    jne _copy_helper    ; jump if cl not equal to 0
    ret

_ft_strcpy:
    mov rdx, 0          ; The counter of number that i copy, i Will use it later to initialiate the pointer that i increment to the first Char
    call _copy_helper
    sub rdi, rdx
    mov rax, rdi
    ret