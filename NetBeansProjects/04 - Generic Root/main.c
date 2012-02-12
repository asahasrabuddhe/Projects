/******************************************************************************
 *      Program 4                                                             *
 *                                                                            *
 *      Write a program that finds the Generic Root of a number entered by the*
 *      user and prints it on the screen.                                     *
 *                                                                            *
 *      Generic Root is given by successive addition of all the digits of a   *
 *      number until we get a single digit.                                   *
 *                                                                            *
 *      Example: Number = 456                                                 *
 *               Generic Root: 4 + 5 + 6 = 15 (not a single digit number)     *
 *                             1 + 5 = 6      (Generic Root)                  *
 *                                                                            *
 *      Author: Ajitem Sahasrabuddhe                                          *
 *                                                                            *
 *      Version: 1.040112.2336                                                *
 *               2.090112.1040 (Code Optimization)                            *
 *               3.230112.2107 (GR of 0 Bug Fixed)                            *
 ******************************************************************************/

#include<stdio.h>
#include<stdlib.h>
#include<conio.h>

int main()
{
    int num, temp;
    printf("Enter a number");
    scanf("%d", &num);
    if (num == 0)
        printf("Generic Root = %d", num);
    else
        printf("Generic Root = %d\n", (temp = num % 9) ? temp : 9);
    getch();
    return (EXIT_SUCCESS);
}
