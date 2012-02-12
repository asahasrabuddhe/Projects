/******************************************************************************
 *      Program 19                                                            *
 *                                                                            *
 *      Write a program to display the following pattern on the screen.       *
 *                                                                            *
 *      N     N                                                               *
 *      N N   N                                                               *
 *      N   N N                                                               *
 *      N     N                                                               *
 *                                                                            *
 *      Version: 1.150112.1507                                                *
 *               2.200112.2251 (Implemented using all 3 loops).               *
 ******************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <conio.h>
#include "charpattern_eight.h"

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

