/******************************************************************************
 *      Program 20                                                            *
 *                                                                            *
 *      Write a program to display the following pattern on the screen.       *
 *                                                                            *
 *      X               X                                                     *
 *        X           X                                                       *
 *          X       X                                                         *
 *            X   X                                                           *
 *              X                                                             *
 *            X   X                                                           *
 *          X       X                                                         *
 *        X           X                                                       *
 *      X               X                                                     *
 *                                                                            *
 *      Version: 1.150112.2123                                                *
 *               2.200112.2215 (Implemented using all 3 loops)                *
 ******************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <conio.h>
#include "charpattern_nine.h"

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

