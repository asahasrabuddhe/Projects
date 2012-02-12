/******************************************************************************
 *      Program 5                                                             *
 *                                                                            *
 *      Write a program to print the following pattern on the screen for 'n'  *
 *      number of lines where 'n' is entered by user.                         *
 *                                                                            *
 *      Sample Output for n = 7                                               *
 *                                                                            *
 *      2 2                                                                   *
 *      4 4 4 4                                                               *
 *      6 6 6 6 6 6                                                           *
 *      8 8 8 8 8 8 8 8                                                       *
 *      10 10 10 10 10 10 10 10 10 10                                         *
 *      12 12 12 12 12 12 12 12 12 12 12 12                                   *
 *      14 14 14 14 14 14 14 14 14 14 14 14 14 14 and so on                   *
 *                                                                            *
 *      Author: Ajitem Sahasrabuddhe                                          *
 *                                                                            *
 *      Version: 1.050112.1032                                                *
 *               2.090112.1305 (Code Optimization)                            *
 *               3.170112.1252 (Implemented using all the 3 loops)            *
 *               4.170112.1315 (Implemented using recursion)                  *
 ******************************************************************************/

#include<stdio.h>
#include<stdlib.h>
#include<conio.h>
#include"evenpattern.h"

int main()
{
    int no_of_lines;
    printf("Enter the number of lines to be output");
    scanf("%d", &no_of_lines);
    printf("\nPattern using For Loop - \n");
    draw_using_for_loop(no_of_lines);
    printf("\nPattern using While Loop - \n");
    draw_using_while_loop(no_of_lines);
    printf("\nPattern using Do-While Loop - \n\n");
    draw_using_do_while_loop(no_of_lines);
    printf("\nPattern using Recursion - \n\n");
    draw_using_recursion(no_of_lines,0);
    getch();
    return (EXIT_SUCCESS);
}
