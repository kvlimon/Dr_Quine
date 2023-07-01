section .data
message: db "section .data%1$cmessage: db %2$c%3$s%2$c%1$c%1$csection .text%1$cglobal main%1$cextern printf%1$c%1$c; Self%1$c;%1$csomething:%1$cret%1$c%1$cmain:%1$c; Propagation%1$cpush rbp%1$cmov rbp, rsp%1$ccall something%1$cmov rcx, message%1$cmov rdx, 34%1$cmov rsi, 10%1$cmov rdi, message%1$ccall printf%1$cmov rsp, rbp%1$cpop rbp%1$cret%1$c"

section .text
global main
extern printf

; Self

something:
ret

main:
; Propagation
push rbp
mov rbp, rsp
call something
mov rcx, message
mov rdx, 34
mov rsi, 10
mov rdi, message
call printf
mov rsp, rbp
pop rbp
ret
