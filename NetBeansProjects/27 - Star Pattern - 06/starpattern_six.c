#include"starpattern_six.h"

void draw_using_for_loop()
{
    char pattern[] = "*   *   *   *   *";
    int i;
    for (i = 0; i <= 8; i++)
    {
        if (i <= 4)
            printf("%*.*s\n", 18 - (2 * i), 18, pattern + (4 * i));
        else
            printf("%*.*s\n", (2 * i) + 2, 18, pattern + 32 - (4 * i));
    }
}

void draw_using_while_loop()
{
    char pattern[] = "*   *   *   *   *";
    int i = 0;
    while (i <= 8)
    {
        if (i <= 4)
            printf("%*.*s\n", 18 - (2 * i), 18, pattern + (4 * i));
        else
            printf("%*.*s\n", (2 * i) + 2, 18, pattern + 32 - (4 * i));
        i++;
    }
}

void draw_using_do_while_loop()
{
    char pattern[] = "*   *   *   *   *";
    int i = 0;
    do
    {
        if (i <= 4)
            printf("%*.*s\n", 18 - (2 * i), 18, pattern + (4 * i));
        else
            printf("%*.*s\n", (2 * i) + 2, 18, pattern + 32 - (4 * i));
        i++;
    }
    while (i <= 8);
}

void draw_using_recursion(int no_of_lines)
{
    static char pattern[] = "*   *   *   *   *";
    if (no_of_lines > 8)
        return;
    if (no_of_lines <= 4)
        printf("%*.*s\n", 18 - (2 * no_of_lines), 18,
               pattern + (4 * no_of_lines));
    else
        printf("%*.*s\n", (2 * no_of_lines) + 2, 18,
               pattern + 32 - (4 * no_of_lines));
    draw_using_recursion(no_of_lines + 1);
}
