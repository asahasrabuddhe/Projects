/******************************************************************************
 *      Program 2                                                            *
 *                                                                            *
 *      Write a program that prints all numbers between 'x' and 'y' without   *
 *      using a loop where 'x' and 'y' are entered by the user.               *
 *                                                                            *
 *      Author: Ajitem Sahasrabuddhe                                          *
 *                                                                            *
 *      Version: 1.040112.2326                                                *
 *               2.090112.1026  (Code Optimization)                           *
 ******************************************************************************/

#include<stdio.h>
#include<stdlib.h>
#include<conio.h>

int main()
{
    int x, y;
    void print_range(int, int);
    printf("Enter the range of numbers\n");
    scanf("%d %d", &x, &y);
    print_range(x, y);
    getch();
    return (EXIT_SUCCESS);
}

void print_range(int x, int y)
{
    if (x < y)
    {
        printf("\n%d", x);
        print_range(x + 1, y);
    }
    if (y < x)
    {
        printf("\n%d", x);
        print_range(x - 1, y);
    }
    if (x == y)
    {
        printf("\n%d\n", x);
        return;
    }
    return;
}
