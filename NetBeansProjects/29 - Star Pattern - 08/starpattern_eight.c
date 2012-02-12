#include"starpattern_eight.h"

void draw_using_for_loop()
{
    int i;
    char pattern[] = "* * * *";
    for (i = 0; i < 8; i++)
    {
        if (i <= 4)
            printf("%*.*s\n", 4 * i, 2 * i, pattern);
        else
            printf("%*.*s\n", (32 - (4 * i)), ((32 - (4 * i)) / 2), pattern);
    }
}

void draw_using_while_loop()
{
    int i = 0;
    char pattern[] = "* * * *";
    while (i < 8)
    {
        if (i <= 4)
            printf("%*.*s\n", 4 * i, 2 * i, pattern);
        else
            printf("%*.*s\n", (32 - (4 * i)), ((32 - (4 * i)) / 2), pattern);
        i++;
    }
}

void draw_using_do_while_loop()
{
    int i = 0;
    char pattern[] = "* * * *";
    do
    {
        if (i <= 4)
            printf("%*.*s\n", 4 * i, 2 * i, pattern);
        else
            printf("%*.*s\n", (32 - (4 * i)), ((32 - (4 * i)) / 2), pattern);
        i++;
    }
    while (i < 8);
}

void draw_using_recursion(int no_of_lines)
{
    static char pattern[] = "* * * * ";
    if (no_of_lines == 8)
        return;
    if (no_of_lines <= 4)
        printf("%*.*s\n", 4 * no_of_lines, 2 * no_of_lines, pattern);
    else
        printf("%*.*s\n", (32 - (4 * no_of_lines)),
               ((32 - (4 * no_of_lines)) / 2), pattern);
    draw_using_recursion(no_of_lines + 1);
}
