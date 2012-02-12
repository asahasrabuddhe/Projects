#include "charpattern_ten.h"

void draw_using_for_loop()
{
    char pattern = 'K';
    int i;
    for (i = 1; i <= 15; i++)
    {
        if (i <= 7)
        {
            printf("%2c%*.*c\n", pattern, 9 - i, 2, pattern);
        }
        if (i == 8)
        {
            printf("%2c\n", pattern);
        }
        if (i >= 9)
        {
            printf("%2c%*.*c\n", pattern, i - 7, 2, pattern);
        }
    }
}

void draw_using_while_loop()
{
    char pattern = 'K';
    int i = 1;
    while (i <= 15)
    {
        if (i <= 7)
        {
            printf("%2c%*.*c\n", pattern, 9 - i, 2, pattern);
        }
        if (i == 8)
        {
            printf("%2c\n", pattern);
        }
        if (i >= 9)
        {
            printf("%2c%*.*c\n", pattern, i - 7, 2, pattern);
        }
        i++;
    }
}

void draw_using_do_while_loop()
{
    char pattern = 'K';
    int i = 1;
    do
    {
        if (i <= 7)
        {
            printf("%2c%*.*c\n", pattern, 9 - i, 2, pattern);
        }
        if (i == 8)
        {
            printf("%2c\n", pattern);
        }
        if (i >= 9)
        {
            printf("%2c%*.*c\n", pattern, i - 7, 2, pattern);
        }
        i++;
    } while (i <= 15);
}
