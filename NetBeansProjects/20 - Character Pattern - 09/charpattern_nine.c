#include "charpattern_nine.h"

void draw_using_for_loop()
{
    char pattern = 'X';
    int i;
    for (i = 1; i <= 9; i++)
    {
        if (i <= 4)
        {
            printf("%*.*c%*.*c\n", i, 2, pattern, 10 - (2 * i), 2, pattern);
        }
        if (i == 5)
        {
            printf("%*.*c\n", i, 2, pattern);
        }
        if (i >= 6)
        {
            printf("%*.*c%*.*c\n", 10 - i, 2, pattern,
                   (2 * i) - 10, 2, pattern);
        }
    }
}

void draw_using_while_loop()
{
    char pattern = 'X';
    int i = 1;
    while (i <= 9)
    {
        if (i <= 4)
        {
            printf("%*.*c%*.*c\n", i, 2, pattern, 10 - (2 * i), 2, pattern);
        }
        if (i == 5)
        {
            printf("%*.*c\n", i, 2, pattern);
        }
        if (i >= 6)
        {
            printf("%*.*c%*.*c\n", 10 - i, 2, pattern,
                   (2 * i) - 10, 2, pattern);
        }
        i++;
    }
}

void draw_using_do_while_loop()
{
    char pattern = 'X';
    int i = 1;
    do
    {
        if (i <= 4)
        {
            printf("%*.*c%*.*c\n", i, 2, pattern, 10 - (2 * i), 2, pattern);
        }
        if (i == 5)
        {
            printf("%*.*c\n", i, 2, pattern);
        }
        if (i >= 6)
        {
            printf("%*.*c%*.*c\n", 10 - i, 2, pattern,
                   (2 * i) - 10, 2, pattern);
        }
        i++;
    }
    while (i <= 9);
}
