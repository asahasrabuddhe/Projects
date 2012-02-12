#include"charpattern_one.h"

void draw_using_for_loop_long()
{
    char c = 'A';
    int i, j;
    for (i = 1; i <= 5; i++)
    {
        for (j = 1; j <= i; j++)
        {
            printf("%c ", (c + (i - j)));
        }
        printf("\n");
    }
}

void draw_using_for_loop_short()
{
    char *c = "E D C B A";
    int i;
    for (i = 0; i < 5; i++)
    {
        printf("%s\n", ((c + 9)-(2 * i) - 1));
    }
}

void draw_using_while_loop_long(void)
{
    char c = 'A';
    int i = 1, j;
    while (i <= 5)
    {
        j = 1;
        while (j <= i)
        {
            printf("%c ", (c + (i - j)));
            j++;
        }
        printf("\n");
        i++;
    }
}

void draw_using_while_loop_short(void)
{
    char *c = "E D C B A";
    int i = 0;
    while (i < 5)
    {
        printf("%s\n", ((c + 9)-(2 * i) - 1));
        i++;
    }
}

void draw_using_do_while_loop_long(void)
{
    char c = 'A';
    int i = 1, j;
    do
    {
        j = 1;
        do
        {
            printf("%c ", (c + (i - j)));
            j++;
        }
        while (j <= i);
        printf("\n");
        i++;
    }
    while (i <= 5);
}

void draw_using_do_while_loop_short(void)
{
    char *c = "E D C B A";
    int i = 0;
    do
    {
        printf("%s\n", ((c + 9)-(2 * i) - 1));
        i++;
    }
    while (i < 5);
}

void draw_using_recursion(int count)
{
    static char *c = "E D C B A";
    if(count == 5)
        return;
    printf("%s\n", ((c + 9)-(2 * count) - 1));
    draw_using_recursion(count+1);
}
