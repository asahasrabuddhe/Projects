#include"starpattern_four.h"

void draw_using_for_loop()
{
    int i;
    char pattern[] = "*                   *";
    for (i = 1; i <= 8; i++)
    {
        if (i % 2 != 0)
            printf("%s\n", pattern);
        *(pattern + (2 * i)) = '*';
        *(pattern + 20 - (2 * i)) = '*';
    }
}

void draw_using_while_loop()
{
    int i = 1;
    char pattern[] = "*                   *";
    while (i <= 8)
    {
        if (i % 2 != 0)
            printf("%s\n", pattern);
        *(pattern + (2 * i)) = '*';
        *(pattern + 20 - (2 * i)) = '*';
        i++;
    }
}

void draw_using_do_while_loop()
{
    int i = 1;
    char pattern[] = "*                   *";
    do
    {
        if (i % 2 != 0)
            printf("%s\n", pattern);
        *(pattern + (2 * i)) = '*';
        *(pattern + 20 - (2 * i)) = '*';
        i++;
    }
    while (i <= 8);
}

void draw_using_recursion(int count)
{
    static char pattern[] = "*                   *";
    if (count > 8)
        return;
    if (count % 2 != 0)
        printf("%s\n", pattern);
    *(pattern + (2 * count)) = '*';
    *(pattern + 20 - (2 * count)) = '*';
    draw_using_recursion(count+1);
}