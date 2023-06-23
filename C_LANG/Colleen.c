#include <stdio.h>
#define QUINE "#include <stdio.h>%1$c#define QUINE %2$c %3$s %2$c"
/* Self replicating */

char*
something(){}

int
main(void)
{
    /* Propagation */
    //printf("%s", QUINE, 10);
    printf(QUINE, 10, 34, QUINE);//, 34);
    something();

    return 0;
}
