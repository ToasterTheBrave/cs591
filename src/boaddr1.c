int main(int argc, char* argv[ ])
{
     char a[30];  // in stack
     gets(a);
     printf("a=%s\n", a);
    printf("&a=0x%x\n", &a);
     //return lookup(a);
}

