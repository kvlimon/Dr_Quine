#include <stdio.h>
#define MAINPROG(X) int main() { FILE* fffffff; fffffff = fopen("Grace_kid.c", "w"); if (fffffff == NULL) { return -1; } fprintf(fffffff, AM_I, 10, 34, SOMETHING, AM_I); fclose(fffffff); return 0; }
#define SOMETHING "GNIHTEMOS"
#define AM_I "#include <stdio.h>%1$c#define MAINPROG(X) int main() { FILE* fffffff; fffffff = fopen(%2$cGrace_kid.c%2$c, %2$cw%2$c); if (fffffff == NULL) { return -1; } fprintf(fffffff, AM_I, 10, 34, SOMETHING, AM_I); fclose(fffffff); return 0; }%1$c#define SOMETHING %2$c%3$s%2$c%1$c#define AM_I %2$c%4$s%2$c%1$c/* hide without hiding */%1$cMAINPROG(HIDDEN)"
/* hide without hiding */
MAINPROG(HIDDEN)