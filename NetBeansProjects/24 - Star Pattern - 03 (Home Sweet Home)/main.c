/******************************************************************************
 *      Program 24                                                             *
 *                                                                            *
 *      Write a program to print the following pattern on the screen          *
 *                                                                            *
 *          *                                                                 *
 *         ***                                                                *
 *        *****                                                               *
 *       *******                                                              *
 *      *********                                                             *
 *      *********                                                             *
 *      *********                                                             *
 *      ***   ***                                                             *
 *      ***   ***                                                             *
 *      ***   ***                                                             *
 *      ***   ***                                                             *
 *                                                                            *
 *    Author: Ajitem Sahasrabuddhe                                            *
 *                                                                            *
 *    Version: 1.050112.1232                                                  *
 *             2.090112.1328 (Code Optimization)                              *
 ******************************************************************************/

#include<stdio.h>
#include<stdlib.h>
#include<conio.h>

int main()
{
    char ptr[] = "*********";
    int i, j;
    for (i = 0; i < 11; i++)
    {
        if (i < 5)
            printf("%*.*s\n", 5 + i, 2 * i + 1, ptr);
        else
        {
            if (i == 7)
            {
                (*(ptr + 3)) = ' ';
                (*(ptr + 4)) = ' ';
                (*(ptr + 5)) = ' ';
            }
            printf("%*.*s\n", 9, 9, ptr);
        }
    }
    getch();
    return (EXIT_SUCCESS);
}
