/******************************************************************************
 *      Program 15                                                            *
 *                                                                            *
 *      Write a program to print the following pattern on the screen.         *
 *                                                                            *
 *                                                                            *
 *              A                                                             *
 *                Z                                                           *
 *              B   C                                                         *
 *                Y   X                                                       *
 *              D   E   F                                                     *
 *                W   V   U                                                   *
 *              G   H   I   J                                                 *
 *                T   S   R   Q                                               *
 *              K   L   M   N   O   P                                         *
 *                                                                            *
 *                                                                            *
 *      Version: 1.140112.2234                                                *
 *               2.190112.0916 (Implemented using all 3 loops)                *
 ******************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <conio.h>
#include"charpattern_four.h"

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

