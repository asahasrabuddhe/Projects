/******************************************************************************
 *      Program 14                                                            *
 *                                                                            *
 *      Write a program to print the following pattern on the screen.         *
 *                                                                            *
 *                                                                            *
 *             A                                                              *
 *           a   a                                                            *
 *         B   B   B                                                          *
 *       b   b   b   b                                                        *
 *     C   C   C   C   C                                                      *
 *       c   c   c   c                                                        *
 *         D   D   D                                                          *
 *           d   d                                                            *
 *             E                                                              *
 *                                                                            *
 *                                                                            *
 *      Version: 1.140112.1828                                                *
 *               2.170112.1801 (Implemented using all 3 loops)                *
 ******************************************************************************/


#include <stdio.h>
#include <stdlib.h>
#include <conio.h>
#include"charpattern_three.h"

int main()
{
    printf("Using For Loop -\n\n");
    draw_using_for_loop();
    printf("\nUsing While Loop -\n\n");
    draw_using_while_loop();
    printf("\nUsing Do While Loop -\n\n");
    draw_using_do_while_loop();
    getch();
    return (EXIT_SUCCESS);
}

