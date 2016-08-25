int main(int argc, char* argv[ ])
{
     char a[512];  // in stack
     strcpy(a, argv[1]);
     printf("a=%s\n", a);
     //return lookup(a);
}

