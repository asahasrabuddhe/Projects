#include"charpattern_seven.h"

void draw_using_for_loop()
{
    char pattern[] = "* * * * * * * * *";
    int i, offset = 11;
    for (i = 0; i <= 20; i += 2)
    {
        if (i < 9)
        {
            printf("%*.*s\n", offset, 18, pattern + 16 - (2 * i));
            offset += 2;
        }
        if (i >= 9 && i < 18)
        {
            offset -= 2;
            printf("%*.*s\n", offset - 2, 18, pattern - 16 + (2 * i));
        }
        if (i >= 18)
        {
            printf("%*.*s\n", offset, 18, pattern + 48 - (2 * i));
            offset += 2;
        }
    }
}

void draw_using_while_loop()
{
    char pattern[] = "* * * * * * * * *";
    int i = 0, offset = 11;
    while (i <= 20)
    {
        if (i < 9)
        {
            printf("%*.*s\n", offset, 18, pattern + 16 - (2 * i));
            offset += 2;
        }
        if (i >= 9 && i < 18)
        {
            offset -= 2;
            printf("%*.*s\n", offset - 2, 18, pattern - 16 + (2 * i));
        }
        if (i >= 18)
        {
            printf("%*.*s\n", offset, 18, pattern + 48 - (2 * i));
            offset += 2;
        }
        i += 2;
    }
}

void draw_using_do_while_loop()
{
    char pattern[] = "* * * * * * * * *";
    int i = 0, offset = 11;
    do
    {
        if (i < 9)
        {
            printf("%*.*s\n", offset, 18, pattern + 16 - (2 * i));
            offset += 2;
        }
        if (i >= 9 && i < 18)
        {
            offset -= 2;
            printf("%*.*s\n", offset - 2, 18, pattern - 16 + (2 * i));
        }
        if (i >= 18)
        {
            printf("%*.*s\n", offset, 18, pattern + 48 - (2 * i));
            offset += 2;
        }
        i += 2;
    }
    while (i <= 20);
}

void draw_using_recursion(int no_of_lines)
{
    static char pattern[] = "* * * * * * * * *";
    static int offset = 11;
    if (no_of_lines < 9)
    {
        printf("%*.*s\n", offset, 18, pattern + 16 - (2 * no_of_lines));
        offset += 2;
    }
    if (no_of_lines >= 9 && no_of_lines < 18)
    {
        offset -= 2;
        printf("%*.*s\n", offset - 2, 18, pattern - 16 + (2 * no_of_lines));
    }
    if (no_of_lines >= 18)
    {
        printf("%*.*s\n", offset, 18, pattern + 48 - (2 * no_of_lines));
        offset += 2;
    }
    if (no_of_lines == 20)
        return;
    else
        draw_using_recursion(no_of_lines + 2);
}
