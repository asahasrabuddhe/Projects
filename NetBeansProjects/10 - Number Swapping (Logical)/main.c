/******************************************************************************
 *      Program 10                                                            *
 *                                                                            *
 *      Write a program to swap two numbers using logical operators.          *
 *                                                                            *
 *      Author: Ajitem Sahasrabuddhe                                          *
 *                                                                            *
 *      Version: 1.130212.1708                                                *
 *               2.190112.0844 (Code Optimization)                            *
 ******************************************************************************/

#include <stdio.h>
#include <conio.h>
#include <stdlib.h>

int main()
{
    int a,b;
    printf("Enter two numbers");
    scanf("%d %d", &a, &b);
    printf("\nYou entered A = %d and B = %d.\n\nNow Swapping...", a, b);
    a ^= b ^= a ^= b;
    printf("\n\nAfter Swapping Operation, A = %d and B = %d\n\n",a,b);
    getch();
    return (EXIT_SUCCESS);
}

