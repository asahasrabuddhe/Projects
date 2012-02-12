/******************************************************************************
 *      Program 11                                                            *
 *                                                                            *
 *      Write a program to swap two numbers using a single statement.         *
 *                                                                            *
 *      Author: Ajitem Sahasrabuddhe                                          *
 *                                                                            *
 *      Version: 1.130212.2307                                                *
 ******************************************************************************/

#include <stdio.h>
#include <stdlib.h>

#include <stdio.h>
#include <conio.h>
#include <stdlib.h>

int main()
{
    int a,b;
    printf("Enter two numbers");
    scanf("%d %d", &a, &b);
    printf("\nYou entered A = %d and B = %d.\n\nNow Swapping...", a, b);
    a = (a + b) - (b = a);
    printf("\n\nAfter Swapping Operation, A = %d and B = %d\n",a,b);
    getch();
    return (EXIT_SUCCESS);
}
