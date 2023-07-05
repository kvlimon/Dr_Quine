#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define QUINE "#include <stdio.h>%1$c#include <stdlib.h>%1$c#include <string.h>%1$c#define QUINE %2$c%3$s%2$c%1$c%1$cint X = %4$d;%1$c%1$cint%1$cmain(void)%1$c{%1$cchar next_file[11];%1$cchar next_exec[11];%1$cif ((strchr(__FILE__, '_')) != NULL)%1$c{%1$c--X;%1$c}%1$csprintf(next_file, %2$cSully_%%d.c%2$c, X);%1$csprintf(next_exec, %2$cSully_%%d%2$c, X);%1$cFILE* fffffff;%1$cfffffff = fopen(next_file, %2$cw%2$c);%1$cif (fffffff == NULL)%1$c{%1$creturn -1;%1$c}%1$cfprintf(fffffff, QUINE, 10, 34, QUINE, X);%1$cfclose(fffffff);%1$cchar cmdline[100];%1$csprintf(cmdline, %2$cclang -Wall -Wextra -Werror %%s -o %%s%2$c, next_file, next_exec);%1$csystem(cmdline);%1$cif (X > 0)%1$c{%1$csprintf(cmdline, %2$c./%%s%2$c, next_exec);%1$csystem(cmdline);%1$c}%1$creturn 0;%1$c}"

int X = 5;

int
main(void)
{
char next_file[11];
char next_exec[11];
if ((strchr(__FILE__, '_')) != NULL)
{
--X;
}
sprintf(next_file, "Sully_%d.c", X);
sprintf(next_exec, "Sully_%d", X);
FILE* fffffff;
fffffff = fopen(next_file, "w");
if (fffffff == NULL)
{
return -1;
}
fprintf(fffffff, QUINE, 10, 34, QUINE, X);
fclose(fffffff);
char cmdline[100];
sprintf(cmdline, "clang -Wall -Wextra -Werror %s -o %s", next_file, next_exec);
system(cmdline);
if (X > 0)
{
sprintf(cmdline, "./%s", next_exec);
system(cmdline);
}
return 0;
}