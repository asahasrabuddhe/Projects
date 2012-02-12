/******************************************************************************
 *      Program 3                                                             *
 *      Write a program that prints all prime numbers between 'x' and 'y'     *
 *      without using a loop where 'x' and 'y' are entered by the user.       *
 *                                                                            *
 *      Author: Ajitem Sahasrabuddhe                                          *
 *                                                                            *
 *      Version: 1.040112.2331                                               *
 *               2.090112.1028  (Code Optimization)                           *
 ******************************************************************************/

#include<stdio.h>
#include<stdlib.h>
#include<conio.h>

int main()
{
    int x, y;
    void print_range_prime(int, int);
    printf("Enter the range of numbers\n");
    scanf("%d %d", &x, &y);
    print_range_prime(x, y);
    getch();
    return (EXIT_SUCCESS);
}

void print_range_prime(int x, int y)
{
    int i, flag = 0;
    if (x < y)
    {
        for (i = 2; i <= x - 1; i++)
        {
            if (x % i == 0)
            {
                flag = 1;
                break;
            }
        }
        if (flag == 0)
        {
            printf("\n%d", x);
        }
        print_range_prime(x + 1, y);
    }
    if (y < x)
    {
        for (i = 2; i <= x - 1; i++)
        {
            if (x % i == 0)
            {
                flag = 1;
                break;
            }
        }
        if (flag == 0)
        {
            printf("\n%d", x);
        }
        print_range_prime(x - 1, y);
    }
    if (x == y)
    {
        for (i = 2; i <= x - 1; i++)
        {
            if (x % i == 0)
            {
                flag = 1;
                break;
            }
        }
        if (flag == 0)
        {
            printf("\n%d\n", x);
        }
        return;
    }
}
