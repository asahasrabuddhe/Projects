/******************************************************************************
 *      Program 9                                                             *
 *                                                                            *
 *      Write a program to print the following pattern on the screen for 'n'  *
 *      number of lines where 'n' is entered by user.                         *
 *                                                                            *
 *      Sample Output for n = 6                                               *
 *                                                                            *
 *      1                                                                     *
 *      1                                                                     *
 *      2 2                                                                   *
 *      3 3 3                                                                 *
 *      5 5 5 5 5                                                             *
 *      8 8 8 8 8 8 8 8                                                       *
 *                                                                            *
 *    Author: Ajitem Sahasrabuddhe                                            *
 *                                                                            *
 *    Version: 1.210112.2217                                                  *
 *                                                                            *
 ******************************************************************************/
#include <stdio.h>
#include <stdlib.h>
#include <conio.h>

int main()
{
    int n;
    printf("Enter the number of lines to be output");
    scanf("%d", &n);
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

