/******************************************************************************
 *      Program 23                                                            *
 *                                                                            *
 *      Write a program to display the following pattern on the screen.       *
 *                                                                            *
 *               *                                                            *
 *            *  *                                                            *
 *         *  *  *                                                            *
 *      *  *  *  *                                                            *
 *                                                                            *
 *      Version: 1.210112.1106                                                *
 ******************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <conio.h>

int main()
{
    char *pattern = "*  *  *  *";
    int i;
    for(i = 1; i <= 10; i+=3)
    {
        printf("%*.*s\n",10,i,pattern);

    }
    getch();
    return (EXIT_SUCCESS);
}

