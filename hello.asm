;nasm -fmacho64 HW3Question9.asm && ld HW3Question9.o && ./a.out
;code written by Michael Simmons, Ethan Boone, and Thomas Ochsner

global    start

section   .text
start:    mov       rax, 0x02000004         ; system call for write
mov       rdi, 1                  ; file handle 1 is stdout
mov       rsi, message            ; address of string to output
mov       rdx, 19                 ; number of bytes
syscall                           ; invoke operating system to do the write
mov       rax, 0x02000001         ; system call for exit
xor       rdi, rdi                ; exit code 0
syscall                           ; invoke operating system to exit

section   .data
message:  db        "最近怎么样?", 10      ; note the newline at the end
