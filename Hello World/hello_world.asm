; hello_world.asm
;
; Author: Casper Henningsson
; Date: 2020-08-06



global _start

section .text:

_start:
    mov eax, 0x4			; use the write syscall
    mov ebx, 1			; use the stdout as th fd
    mov ecx, message		; use the message as the buffer
    mov edx, message_length		; and supply the lenght
    int 0x80

    ; 	Exiting

    mov eax, 0x1
    mov ebx, 0
    int 0x80

section .data:
	message: db "Hello World!", 0xA
	message_length equ $-message
