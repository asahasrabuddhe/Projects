/******************************************************************************
 *      Program 7                                                             *
 *                                                                            *
 *      Write a program to print the following pattern on the screen for 'n'  *
 *      number of lines where 'n' and 'p' is entered by user.                 *
 *                                                                            *
 *      Sample Output for n = 4 and p = 2                                     *
 *                                                                            *
 *      1                                                                     *
 *      4 4 4 4                                                               *
 *      9 9 9 9 9 9 9 9 9                                                     *
 *      16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 and so on             *
 *                                                                            *
 *    Author: Ajitem Sahasrabuddhe                                            *
 *                                                                            *
 *    Version: 1.050112.1205                                                  *
 *             2.090112.2324 (Changed to Power + Code Optimization)           *
 *             3.170112.1627 (Implemented using all 3 loops and recursion)    *
 ******************************************************************************/

#include<stdio.h>
#include<stdlib.h>
#include<conio.h>
#include"powerpattern.h"

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
