#include <stdio.h>
#include <stdlib.h>
#define QUINE "#include <stdio.h>%1$c#include <stdlib.h>%1$c#define QUINE %2$c%3$s%2$c%1$cint X = %4$d;%1$c%1$c\
int%1$cmain(void)%1$c{%1$cchar str[] = %2$cSully_X.c%2$c;%1$cstr[6] = X + '0';%1$cFILE* fffffff;%1$cfffffff = fopen(str, %2$cw%2$c);%1$cif (fffffff == NULL)%1$c{%1$creturn -1;%1$c}%1$cfprintf(fffffff, QUINE, 10, 34, QUINE, X);%1$c\
fclose(fffffff);%1$cif (X == 0)%1$c{%1$creturn -1;%1$c}%1$cchar cmdline[100];%1$csprintf(cmdline, %2$cclang -Wall -Wextra -Werror -o %%s Sully ; ./Sully%2$c, str);%1$csystem(cmdline);%1$c--X%1$creturn 0;%1$c}"
int X = 5;

int
main(void)
{
char str[] = "Sully_X.c";
str[6] = X + '0';
FILE* fffffff;
fffffff = fopen(str, "w");
if (fffffff == NULL)
{
return -1;
}
fprintf(fffffff, QUINE, 10, 34, QUINE, X);
fclose(fffffff);
if (X == 0)
{
return -1;
}
char cmdline[100];
sprintf(cmdline, "clang -Wall -Wextra -Werror -o %s Sully ; ./Sully", str);
system(cmdline);
--X;
return 0;
}