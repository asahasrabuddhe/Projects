/******************************************************************************
 *      Program 12                                                            *
 *                                                                            *
 *      Write a program to display the following pattern on the screen.       *
 *                                                                            *
 *      K             K                                                       *
 *      K           K                                                         *
 *      K         K                                                           *
 *      K       K                                                             *
 *      K     K                                                               *
 *      K   K                                                                 *
 *      K K                                                                   *
 *      K                                                                     *
 *      K K                                                                   *
 *      K   K                                                                 *
 *      K     K                                                               *
 *      K       K                                                             *
 *      K         K                                                           *
 *      K           K                                                         *
 *      K             K                                                       *
 *                                                                            *
 *      Version: 1.150112.2148                                                *
 *               2.200112.2301 (Implemented using all 3 loops)                *
 ******************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <conio.h>
#include "charpattern_ten.h"

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

