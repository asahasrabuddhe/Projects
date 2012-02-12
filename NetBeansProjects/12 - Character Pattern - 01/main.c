/******************************************************************************
 *      Program 12                                                            *
 *                                                                            *
 *      Write a program to print the following pattern on the screen.         *
 *                                                                            *
 *                                                                            *
 *      A                                                                     *
 *      B A                                                                   *
 *      C B A                                                                 *
 *      D C B A                                                               *
 *      E D C B A                                                             *
 *                                                                            *
 *                                                                            *
 *      Version: 1.140112.1417                                                *
 *               2.140112.1746 (Serious Optimization)                         *
 *               3.170112.1700 (Implemented using all 3 loops and recursion)  *
 ******************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <conio.h>
#include"charpattern_one.h"

int main()
{
    printf("Using For Loop | Long Method -\n\n");
    draw_using_for_loop_long();
    printf("\nUsing For Loop | Short Method -\n\n");
    draw_using_for_loop_short();
    printf("\nUsing While Loop | Long Method -\n\n");
    draw_using_while_loop_long();
    printf("\nUsing While Loop | Short Method -\n\n");
    draw_using_while_loop_short();
    printf("\nUsing Do While Loop | Long Method -\n\n");
    draw_using_do_while_loop_long();
    printf("\nUsing Do While Loop | Short Method -\n\n");
    draw_using_do_while_loop_short();
    printf("\nUsing Recursion -\n\n");
    draw_using_recursion(0);
    getch();
    return (EXIT_SUCCESS);
}

