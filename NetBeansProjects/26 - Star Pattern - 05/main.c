/******************************************************************************
 *      Program 26                                                            *
 *                                                                            *
 *      Write a program to display the following pattern on the screen.       *
 *                                                                            *
 *      *                         *                                           *
 *         *                   *                                              *
 *      *     *             *     *                                           *
 *         *     *       *     *                                              *
 *      *     *      *      *     *                                           *
 *         *     *       *     *                                              *
 *      *     *             *     *                                           *
 *         *                   *                                              *
 *      *                         *                                           *
 *                                                                            *
 *      Version: 230112.2034                                                  *
 ******************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <conio.h>

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

