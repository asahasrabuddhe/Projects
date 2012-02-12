#include"powerpattern.h"

void draw_using_for_loop(unsigned long int no_of_lines, unsigned long int power)
{
    unsigned long int i, j;
    for (i = 1; i < no_of_lines + 1; i++)
    {
        for (j = 1; j <= r_pow(i, power); j++)
        {
            printf("%lu ", r_pow(i, power));
        }
        printf("\n");
    }
}

void draw_using_while_loop(unsigned long int no_of_lines, unsigned long int power)
{
    unsigned long int i, j;
    i = 1;
    while (i < (no_of_lines + 1))
    {
        j = 1;
        while (j <= r_pow(i, power))
        {
            printf("%lu ", r_pow(i, power));
            j++;
        }
        printf("\n");
        i++;
    }
}

void draw_using_do_while_loop(unsigned long int no_of_lines, unsigned long int power)
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
            printf("%lu ", r_pow(i, power));
            j++;
            if (power == 0)
            {
                break;
            }
        }
        while (j < r_pow(i, power));
        printf("\n");
        i++;
    }
    while (i < (no_of_lines + 1));
}

void draw_using_recursion(unsigned long int no_of_lines, unsigned long int count, unsigned long int power)
{
    static unsigned long int number = 1;
    if (number == (no_of_lines + 1))
        return;
    if (no_of_lines == 0)
        return;
    if (no_of_lines == 1)
    {
        printf("%lu\n", number);
        return;
    }
    if(power == 0)
    {
        printf("%lu\n",r_pow(number,power));
        number++;
        draw_using_recursion(no_of_lines,0,power);
        return;
    }
    if (count < r_pow(number, power))
    {
        printf("%lu ", r_pow(number, power));
        draw_using_recursion(no_of_lines, count + 1, power);
    }
    if (count == number)
    {
        number++;
        printf("\n");
        draw_using_recursion(no_of_lines, 0, power);
    }

}

unsigned long int r_pow(unsigned long int number, unsigned long int power)
{
    {
        unsigned long int temp;
        if (power == 0)
            return 1;
        if (power == 1 || number == 1)
            return number;
        temp = r_pow(number, power / 2);
        if (power % 2 == 0)
            return temp * temp;
        else
            return number * temp*temp;
    }

}
