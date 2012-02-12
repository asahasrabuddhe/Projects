/******************************************************************************
 *      Program 16                                                            *
 *                                                                            *
 *      Write a program to print the following pattern on the screen.         *
 *                                                                            *
 *                                                                            *
 *               A   B   C   D   E                                            *
 *                 Z   Y   X   W                                              *
 *               A   B   C   D                                                *
 *                 Z   Y   X                                                  *
 *               A   B   C                                                    *
 *                 Z   Y                                                      *
 *               A   B                                                        *
 *                 Z                                                          *
 *               A                                                            *
 *                 Z                                                          *
 *               A   B                                                        *
 *                 Z   Y                                                      *
 *               A   B   C                                                    *
 *                 Z   Y   X                                                  *
 *               A   B   C   D                                                *
 *                 Z   Y   X   W                                              *
 *               A   B   C   D   E                                            *
 *                                                                            *
 *                                                                            *
 *       Version: 1.140112.2244                                               *
 *                2.190112.0917 (Implemented using all 3 loops)               *
 ******************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <conio.h>
#include"charpattern_five.h"

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

