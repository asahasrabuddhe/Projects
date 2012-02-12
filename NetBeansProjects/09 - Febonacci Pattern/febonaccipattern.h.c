#include"febonaccipattern.h"

void draw_using_for_loop(int no_of_lines)
{
    int i, j;
    for (i = 0; i < no_of_lines; i++)
    {
        for (j = 1; j <= r_febo(i); j++)
        {
            printf("%d ", r_febo(i));
        }
        printf("\n");
    }
}

void draw_using_while_loop(int no_of_lines)
{
    int i, j;
    i = 0;
    while (i < (no_of_lines))
    {
        j = 1;
        while (j <= r_febo(i))
        {
            printf("%d ", r_febo(i));
            j++;
        }
        printf("\n");
        i++;
    }
}

void draw_using_do_while_loop(int no_of_lines)
{
    int i, j;
    i = 0;
    if (no_of_lines == 0)
        return;
    do
    {
        j = 0;
        do
        {
            printf("%d ", r_febo(i));
            j++;
        }
        while (j < r_febo(i));
        printf("\n");
        i++;
    }
    while (i < (no_of_lines));
}

void draw_using_recursion(int no_of_lines, int count)
{
    static int number = 0;
    if (number == no_of_lines)
        return;
    if (count == r_febo(number))
    {
        number++;
        printf("\n");
        draw_using_recursion(no_of_lines, 0);
        return;
    }
    if (count < r_febo(number))
    {
        printf("%d ", r_febo(number));
        draw_using_recursion(no_of_lines, count + 1);
        return;
    }
    return;

}

int r_febo(int number)
{
    if (number == 0 || number == 1)
        return 1;
    return (r_febo(number - 2) + r_febo(number - 1));
}

