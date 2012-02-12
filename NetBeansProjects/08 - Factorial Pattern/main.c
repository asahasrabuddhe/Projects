/******************************************************************************
 *      Program 8                                                             *
 *                                                                            *
 *      Write a program to print the following pattern on the screen for 'n'  *
 *      number of lines where 'n' is entered by user.                         *
 *                                                                            *
 *      Sample Output for n = 3                                               *
 *                                                                            *
 *      1                                                                     *
 *      2 2                                                                   *
 *      6 6 6 6 6 6                                                           *
 *                                                                            *
 *    Author: Ajitem Sahasrabuddhe                                            *
 *                                                                            *
 *    Version: 1.210112.2158                                                  *
 *                                                                            *
 ******************************************************************************/


#include <stdio.h>
#include <stdlib.h>
#include <conio.h>
#include "factorialpattern.h"

int main()
{
    unsigned long int n;
    printf("Enter the number of lines to be output");
    scanf("%lu", &n);
    printf("\nPattern using For Loop - \n");
    draw_using_for_loop(n);
    printf("\nPattern using While Loop - \n");
    draw_using_while_loop(n);
    printf("\nPattern using Do-While Loop - \n\n");
    draw_using_do_while_loop(n);
    printf("\nPattern using Recursion - \n\n");
    draw_using_recursion(n,0);
    getch();
    return (EXIT_SUCCESS);
}

