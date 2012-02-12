/******************************************************************************
 *      Program 17                                                            *
 *                                                                            *
 *      Write a program to print the following pattern on the screen.         *
 *                                                                            *
 *       A B C D E D C B A                                                    *
 *       A B C D   D C B A                                                    *
 *       A B C       C B A                                                    *
 *       A B           B A                                                    *
 *       A               A                                                    *
 *       A B           B A                                                    *
 *       A B C       C B A                                                    *
 *       A B C D   D C B A                                                    *
 *       A B C D E D C B A                                                    *
 *                                                                            *
 *      Version: 1.150112.0000                                                *
 *               2.190112.0922 (Implemented using all 3 loops)                *
 *               3.250112.0832 (Implemented using all 3 loops)                *
 ******************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <conio.h>
#include "charpattern_six.h"

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

