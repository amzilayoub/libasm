section .text
    global _ft_strlen

_ft_strlen:
    mov rsi, 0              ; Init the Counter Value To Zero , (The second Parameter To Get_len)
    call _get_len
    ret


_get_len:
    mov cl, [rdi]           ; mov the Character to the CL register to compare it
    inc rdi                 ; increment the String
    inc rsi                 ; Increment the Counter
    cmp cl, 0               ; Compare the cl With the 0 ('\0')
    jne _get_len            ; (like Recursive) Call get_len again if the cl not Equal to '\0'
    sub rdi, rsi            ; to set the pointer to the first char
    sub rsi, 1              ; cuz i increment the counter then i compare,
    mov rax, rsi            ; Move the value of RSI (the counter) to rcx register
    ret