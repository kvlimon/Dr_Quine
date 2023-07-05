section .data
next_file: db "Sully_%d.s", 0x00
sully_name: db "Sully_%d", 0x00
cmdline: db "nasm -f elf64 %1$s && clang -Wall -Wextra -Werror %2$s.o -o %2$s && rm -f %2$s.o", 0x00
quine: db "section .data%1$cnext_file: db %2$cSully_%%d.s%2$c, 0x00%1$csully_name: db %2$cSully_%%d%2$c, 0x00%1$ccmdline: db %2$cnasm -f elf64 %%1$s && clang -Wall -Wextra -Werror %%2$s.o -o %%2$s && rm -f %%2$s.o%2$c, 0x00%1$cquine: db %2$c%3$s%2$c, 0x00%1$cssign: db %2$c./%%s%2$c, 0x00%1$c%1$csection .text%1$cglobal main%1$cextern printf, sprintf, dprintf, strchr, system%1$c%1$cmain:%1$cpush rbp%1$cmov rbp, rsp%1$csub rsp, 0x90%1$cmov DWORD [rbp - 0x04], %4$d%1$cmov rax, [rsi]%1$cmov rsi, 0x5F%1$cmov rdi, rax%1$ccall strchr%1$ccmp rax, 0x00%1$cje define_next_nomenclatures%1$c%1$cdecrement_x:%1$csub DWORD [rbp - 0x04], 0x01%1$c%1$cdefine_next_nomenclatures:%1$cmov edx, DWORD [rbp - 0x04]%1$clea rsi, next_file%1$clea rdi, [rbp - 0x13]%1$cmov eax, 0x00%1$ccall sprintf%1$cmov edx, DWORD [rbp - 0x04]%1$clea rsi, sully_name%1$clea rdi, [rbp - 0x1E]%1$cmov eax, 0x00%1$ccall sprintf%1$c%1$cquine_injection:%1$cmov rdx, 600o%1$cmov rsi, 0x41%1$clea rdi, [rbp - 0x13]%1$cmov rax, 0x02%1$csyscall%1$ccmp rax, 0x00%1$cjz open_failed%1$cmov DWORD [rbp - 0x08], eax%1$cmov r9d, DWORD [rbp - 0x04]%1$clea r8, quine%1$cmov rcx, 0x22%1$cmov rdx, 0xA%1$clea rsi, quine%1$cmov edi, DWORD [rbp - 0x08]%1$ccall dprintf%1$cmov edi, DWORD [rbp - 0x08]%1$cmov rax, 0x03%1$csyscall%1$c%1$ccompile_next_files:%1$clea rcx, [rbp - 0x1E]%1$clea rdx, [rbp - 0x13]%1$clea rsi, cmdline%1$clea rdi, [rbp - 0x90]%1$ccall sprintf%1$clea rdi, [rbp - 0x90]%1$ccall system%1$ccmp DWORD [rbp - 0x04], 0x00%1$cjle return%1$c%1$ccontinue_propagation:%1$clea rdx, [rbp - 0x1E]%1$clea rsi, ssign%1$clea rdi, [rbp - 0x90]%1$ccall sprintf%1$clea rdi, [rbp - 0x90]%1$ccall system%1$cjmp return%1$c%1$copen_failed:%1$cmov rax, -0x01%1$c%1$creturn:%1$cmov rsp, rbp%1$cpop rbp%1$cret", 0x00
ssign: db "./%s", 0x00

section .text
global main
extern printf, sprintf, dprintf, strchr, system

main:
push rbp
mov rbp, rsp
sub rsp, 0x90
mov DWORD [rbp - 0x04], 5
mov rax, [rsi]
mov rsi, 0x5F
mov rdi, rax
call strchr
cmp rax, 0x00
je define_next_nomenclatures

decrement_x:
sub DWORD [rbp - 0x04], 0x01

define_next_nomenclatures:
mov edx, DWORD [rbp - 0x04]
lea rsi, next_file
lea rdi, [rbp - 0x13]
mov eax, 0x00
call sprintf
mov edx, DWORD [rbp - 0x04]
lea rsi, sully_name
lea rdi, [rbp - 0x1E]
mov eax, 0x00
call sprintf

quine_injection:
mov rdx, 600o
mov rsi, 0x41
lea rdi, [rbp - 0x13]
mov rax, 0x02
syscall
cmp rax, 0x00
jz open_failed
mov DWORD [rbp - 0x08], eax
mov r9d, DWORD [rbp - 0x04]
lea r8, quine
mov rcx, 0x22
mov rdx, 0xA
lea rsi, quine
mov edi, DWORD [rbp - 0x08]
call dprintf
mov edi, DWORD [rbp - 0x08]
mov rax, 0x03
syscall

compile_next_files:
lea rcx, [rbp - 0x1E]
lea rdx, [rbp - 0x13]
lea rsi, cmdline
lea rdi, [rbp - 0x90]
call sprintf
lea rdi, [rbp - 0x90]
call system
cmp DWORD [rbp - 0x04], 0x00
jle return

continue_propagation:
lea rdx, [rbp - 0x1E]
lea rsi, ssign
lea rdi, [rbp - 0x90]
call sprintf
lea rdi, [rbp - 0x90]
call system
jmp return

open_failed:
mov rax, -0x01

return:
mov rsp, rbp
pop rbp
ret