#include <stdio.h>
#define QUINE "#include <stdio.h>%1$c#define QUINE %2$c%3$s%2$c%1$c/* Self */%1$c%1$cvoid%1$csomething(){}%1$c%1$cint%1$cmain(void)%1$c{%1$c/* Propagation */%1$cprintf(QUINE, 10, 34, QUINE);%1$csomething();%1$creturn 0;%1$c}"
/* Self */

void
something(){}

int
main(void)
{
/* Propagation */
printf(QUINE, 10, 34, QUINE);
something();
return 0;
}