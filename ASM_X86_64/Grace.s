section .data
quine: db "section .data%1$cquine: db %2$c%3$s%2$c, 0%1$cfilename: db %2$cGrace_kid.s%2$c, 0%1$c%1$csection .text%1$cglobal main%1$cextern dprintf%1$c%1$c; Hide without hiding%1$c%1$c%%macro OPEN_FILE 2%1$cmov rdx, %%1%1$cmov rsi, %%2%1$cmov rdi, filename%1$cmov rax, 0x02%1$csyscall%1$cmov DWORD [rbp - 4], eax%1$c%%endmacro%1$c%1$c%%macro QUINE_INJECTION 1%1$cmov r8, quine%1$cmov rcx, 34%1$cmov rdx, 10%1$cmov rsi, quine%1$cmov edi, DWORD [rbp - 4]%1$ccall dprintf%1$c%%endmacro%1$c%1$c%%macro THE_MAIN 1%1$cmain:%1$cpush rbp%1$cmov rbp, rsp%1$csub rsp, 16%1$cOPEN_FILE 600o, 0x41%1$cQUINE_INJECTION(HIDDEN)%1$cmov edi, DWORD [rbp - 4]%1$cmov rax, 0x03%1$csyscall%1$cmov rsp, rbp%1$cpop rbp%1$cret%1$c%%endmacro%1$c%1$cTHE_MAIN(HIDDEN)%1$c", 0
filename: db "Grace_kid.s", 0

section .text
global main
extern dprintf

; Hide without hiding

%macro OPEN_FILE 2
mov rdx, %1
mov rsi, %2
mov rdi, filename
mov rax, 0x02
syscall
mov DWORD [rbp - 4], eax
%endmacro

%macro QUINE_INJECTION 1
mov r8, quine
mov rcx, 34
mov rdx, 10
mov rsi, quine
mov edi, DWORD [rbp - 4]
call dprintf
%endmacro

%macro THE_MAIN 1
main:
push rbp
mov rbp, rsp
sub rsp, 16
OPEN_FILE 600o, 0x41
QUINE_INJECTION(HIDDEN)
mov edi, DWORD [rbp - 4]
mov rax, 0x03
syscall
mov rsp, rbp
pop rbp
ret
%endmacro

THE_MAIN(HIDDEN)
