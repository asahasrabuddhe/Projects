/******************************************************************************
 *      Program 13                                                            *
 *                                                                            *
 *      Write a program to print the following pattern on the screen.         *
 *                                                                            *
 *                                                                            *
 *      A B C D E                                                             *
 *        B C D E                                                             *
 *          C D E                                                             *
 *            D E                                                             *
 *              E                                                             *
 *                                                                            *
 *                                                                            *
 *      Version: 1.140112.1804                                                *
 *               2.170112.1710 (Implemented using all 3 loops and recursion)  *
 ******************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <conio.h>
#include"charpattern_two.h"

int main()
{
    printf("Using For Loop -\n\n");
    draw_using_for_loop();
    printf("\nUsing While Loop -\n\n");
    draw_using_while_loop();
    printf("\nUsing Do While Loop -\n\n");
    draw_using_do_while_loop();
    printf("\nUsing Recursion -\n\n");
    draw_using_recursion(0);
    getch();
    return (EXIT_SUCCESS);
}

