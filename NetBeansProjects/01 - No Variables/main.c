/******************************************************************************
 *      Program 1                                                             *
 *                                                                            *
 *      Write a program that scans two numbers from the user, adds them and   *
 *      prints the sum on the user screen, WITHOUT USING variables.           *
 *                                                                            *
 *      Author: Ajitem Sahasrabuddhe                                          *
 *                                                                            *
 *      Version: 1.040112.2259                                                *
 *               2.050112.0924 (BUGFIX: Memory Segmentation Error)            *
 *               3.090112.1043                                                *
 ******************************************************************************/

#include<stdio.h>
#include<stdlib.h>
#include<conio.h>

int main()
{
    printf("Enter any two numbers\n");
    scanf("%d %d", 0x28ff44, 0x28ff40);
    printf("Sum of %d and %d is equal to %d\n", (int) (*(int *) 0x28ff44),
           (int) (*(int *) 0x28ff40),
           ((int) (*(int *) 0x28ff44) + (int) (*(int *) 0x28ff40)));
    getch();
    return (EXIT_SUCCESS);
}
