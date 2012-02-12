/******************************************************************************
 *      Program 6                                                             *
 *                                                                            *
 *      Write a program to print the following pattern on the screen for 'n'  *
 *      number of lines where 'n' is entered by user.                         *
 *                                                                            *
 *      Sample Output for n = 7                                               *
 *                                                                            *
 *      1                                                                     *
 *      3 3 3                                                                 *
 *      5 5 5 5 5                                                             *
 *      7 7 7 7 7 7 7                                                         *
 *      9 9 9 9 9 9 9 9 9                                                     *
 *      11 11 11 11 11 11 11 11 11 11 11                                      *
 *      13 13 13 13 13 13 13 13 13 13 13 13 13 and so on                      *
 *                                                                            *
 *      Author: Ajitem 'bZk' Sahasrabuddhe                                    *
 *                                                                            *
 *      Version: 1.050112.1041                                                *
 *               2.090112.2312 (Code Optimization)                            *
 *               3.170112.1328 (Implemented using all 3 loops and recursion)  *
 ******************************************************************************/

#include<stdio.h>
#include<stdlib.h>
#include<conio.h>
#include"oddpattern.h"

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
