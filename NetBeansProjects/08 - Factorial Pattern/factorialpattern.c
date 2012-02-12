#include"factorialpattern.h"

void draw_using_for_loop(unsigned long int no_of_lines)
{
    unsigned long int i, j;
    for (i = 1; i < no_of_lines + 1; i++)
    {
        for (j = 1; j <= r_fact(i); j++)
        {
            printf("%lu ", r_fact(i));
        }
        printf("\n");
    }
}

void draw_using_while_loop(unsigned long int no_of_lines)
{
    unsigned long int i, j;
    i = 1;
    while (i < (no_of_lines + 1))
    {
        j = 1;
        while (j <= r_fact(i))
        {
            printf("%lu ", r_fact(i));
            j++;
        }
        printf("\n");
        i++;
    }
}

void draw_using_do_while_loop(unsigned long int no_of_lines)
{
    unsigned long int i, j;
    i = 1;
    if (no_of_lines == 0)
        return;
    do
    {
        j = 0;
        do
        {
            printf("%lu ",r_fact(i));
            j++;
        }
        while (j < r_fact(i));
        printf("\n");
        i++;
    }
    while (i < (no_of_lines + 1));
}

void draw_using_recursion(unsigned long int no_of_lines, unsigned long int count)
{
    static unsigned long int number = 1;
    if(number == no_of_lines+1)
        return;
    if(count == r_fact(number))
    {
        number++;
        printf("\n");
        draw_using_recursion(no_of_lines,0);
        return;
    }
    if(count < r_fact(number))
    {
        printf("%d ",r_fact(number));
        draw_using_recursion(no_of_lines,count+1);
        return;
    }
    return;

}

unsigned long int r_fact(unsigned long int number)
{
    if (number == 0 || number == 1)
        return 1;
    return (number * r_fact(number - 1));
}

