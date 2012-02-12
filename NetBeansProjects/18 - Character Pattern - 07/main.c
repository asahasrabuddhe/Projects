/******************************************************************************
 *      Program 18                                                            *
 *                                                                            *
 *      Write a program to display the following pattern on the screen.       *
 *                                                                            *
 *         A                                                                  *
 *       B C D                                                                *
 *     E F G H I                                                              *
 *   J K L M N O P                                                            *
 * Q R S T U V W X Y                                                          *
 *                   Z                                                        *
 *                     Y X W V U T S R Q                                      *
 *                       P O N M L K J                                        *
 *                         I H G F E                                          *
 *                           D C B                                            *
 *                             A                                              *
 *                                                                            *
 *      Version: 1.150112.0029                                                *
 *               2.190112.1010 (Implemented using all 3 loops)                *
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

