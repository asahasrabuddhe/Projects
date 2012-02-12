/******************************************************************************
 *      Program 27                                                            *
 *                                                                            *
 *      Write a program to display the following pattern on the screen.       *
 *                                                                            *
 *       *   *   *   *   *                                                    *
 *         *   *   *   *                                                      *
 *           *   *   *                                                        *
 *             *   *                                                          *
 *               *                                                            *
 *             *   *                                                          *
 *           *   *   *                                                        *
 *         *   *   *   *                                                      *
 *       *   *   *   *   *                                                    *
 *                                                                            *
 *      Version: 240112.0855                                                  *
 ******************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <conio.h>
#include "starpattern_six.h"

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

