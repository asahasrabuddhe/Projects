#include"starpattern_ten.h"

void draw_using_for_loop()
{
    int i, offset = 18;
    char pattern[] = "* * * * * * * * * * * * * * * * *";
    for (i = 0; i < 18; i++)
    {
        if (i % 2 == 0)
            printf("%*.*s\n", 34 - i, 34, pattern + (2 * i));
        if (i > 0 && i <= 6)
        {
            *(pattern + offset) = ' ';
            offset += 2;
        }
        if (i == 7)
        {
            *(pattern + 18) = *(pattern + 20) = *(pattern + 22)
                    = *(pattern + 24) = *(pattern + 26) = *(pattern + 28) = '*';
        }
    }
}

void draw_using_while_loop()
{
    int i = 0, offset = 18;
    char pattern[] = "* * * * * * * * * * * * * * * * *";
    while (i < 18)
    {
        if (i % 2 == 0)
            printf("%*.*s\n", 34 - i, 34, pattern + (2 * i));
        if (i > 0 && i <= 6)
        {
            *(pattern + offset) = ' ';
            offset += 2;
        }
        if (i == 7)
        {
            *(pattern + 18) = *(pattern + 20) = *(pattern + 22)
                    = *(pattern + 24) = *(pattern + 26) = *(pattern + 28) = '*';
        }
        i++;
    }
}

void draw_using_do_while_loop()
{
    int i = 0, offset = 18;
    char pattern[] = "* * * * * * * * * * * * * * * * *";
    do
    {
        if (i % 2 == 0)
            printf("%*.*s\n", 34 - i, 34, pattern + (2 * i));
        if (i > 0 && i <= 6)
        {
            *(pattern + offset) = ' ';
            offset += 2;
        }
        if (i == 7)
        {
            *(pattern + 18) = *(pattern + 20) = *(pattern + 22)
                    = *(pattern + 24) = *(pattern + 26) = *(pattern + 28) = '*';
        }
        i++;
    }
    while (i < 18);
}

void draw_using_recursion(int no_of_lines)
{
    static int offset = 18;
    static char pattern[] = "* * * * * * * * * * * * * * * * *";
    if(no_of_lines == 18)
        return;
    if (no_of_lines % 2 == 0)
        printf("%*.*s\n", 34 - no_of_lines, 34, pattern + (2 * no_of_lines));
    if (no_of_lines > 0 && no_of_lines <= 6)
    {
        *(pattern + offset) = ' ';
        offset += 2;
    }
    if (no_of_lines == 7)
    {
        *(pattern + 18) = *(pattern + 20) = *(pattern + 22)
                = *(pattern + 24) = *(pattern + 26) = *(pattern + 28) = '*';
    }
    draw_using_recursion(no_of_lines+1);
}
