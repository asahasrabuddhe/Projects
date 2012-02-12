#include"evenpattern.h"

void draw_using_for_loop(int no_of_lines)
{
    int i, j;
    for (i = 0; i < ((no_of_lines * 2) + 2); i += 2)
    {
        for (j = 0; j <= i - 1; j++)
        {
            printf("%d ", i);
        }
        printf("\n");
    }
}

void draw_using_while_loop(int no_of_lines)
{
    int i, j;
    i = 0;
    while (i < ((no_of_lines * 2) + 2))
    {
        j = 0;
        while (j <= (i - 1))
        {
            printf("%d ", i);
            j++;
        }
        printf("\n");
        i += 2;
    }
}

void draw_using_do_while_loop(int no_of_lines)
{
    int i, j;
    i = 2;
    if (no_of_lines == 0)
        return;
    do
    {
        j = 0;
        do
        {
            printf("%d ", i);
            j++;
        }
        while (j < i);
        printf("\n");
        i += 2;
    }
    while (i < ((no_of_lines * 2) + 2));
}

void draw_using_recursion(int no_of_lines, int count)
{
    static int number = 2;
    if ((number / 2) == (no_of_lines + 1))
    {
        return;
    }
    if (count <= (number - 1))
    {
        printf("%d ", number);
        draw_using_recursion(no_of_lines, count + 1);
    }
    if (count == number)
    {
        number += 2;
        printf("\n");
        draw_using_recursion(no_of_lines, 0);
    }

}
