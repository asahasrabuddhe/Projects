/******************************************************************************
 *      Program 31                                                            *
 *                                                                            *
 *      Write a program to display the following pattern on the screen.       *
 *                                                                            *
 *      * * * * * * * * * * * * * * * * *                                     *
 *        * * * * * * *   * * * * * * *                                       *
 *          * * * * *       * * * * *                                         *
 *            * * *           * * *                                           *
 *              * * * * * * * * *                                             *
 *                * * * * * * *                                               *
 *                  * * * * *                                                 *
 *                    * * *                                                   *
 *                      *                                                     *
 *                                                                            *
 *      Version: 260112.0805                                                  *
 ******************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <conio.h>
#include "starpattern_ten.h"

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
