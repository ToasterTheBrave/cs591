int function(char *buf) {
     char url[512];  // in stack
     strcpy(url, buf);
     printf("url=%s\n", url);
     return 0;
}
int main(int argc, char* argv[ ])
{
     return function(argv[1]);
     //return lookup(a);
}

