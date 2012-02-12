/******************************************************************************
 *      Program 32                                                            *
 *                                                                            *
 *      Write a program to display the following pattern on the screen.       *
 *                                                                            *
 *            *                                                               *
 *          * * *                                                             *
 *        * * * * *                                                           *
 *      * * * * * * *                                                         *
 *      *           *                                                         *
 *      * *       * *                                                         *
 *      * * *   * * *                                                         *
 *      * * * * * * *                                                         *
 *      * * *   * * *                                                         *
 *      * *       * *                                                         *
 *      *           *                                                         *
 *      * * * * * * *                                                         *
 *        * * * * *                                                           *
 *          * * *                                                             *
 *            *                                                               *
 *                                                                            *
 *      Version: 260112.1729                                                  *
 ******************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <conio.h>

int pattern(int nos, int i, int skip)
{
    char pattern = '*';
    int s, j;
    for (s = nos; s >= 1; s--)
    {
        printf("  ");
    }
    for (j = 1; j <= i; j++)
    {
        if (skip != 0)
        {
            if (i == 4 && j == 1)
            {
                continue;
            }
        }
        printf("%2c", pattern);
    }
    return 0;
}

int main()
{
    int i, nos = 4;
    for (i = 1; i <= 7; (i = i + 2))
    {
        pattern(nos, i, 0);
        nos--;
        printf("\n");
    }
    nos = 5;
    for (i = 1; i <= 4; i++)
    {
        pattern(1, i, 0); //one space needed in each case of the formation
        pattern(nos, i, 1); //skip printing one star in the last row.
        nos = nos - 2;
        printf("\n");
    }
    nos = 1;
    for (i = 3; i >= 1; i--)
    {
        pattern(1, i, 0);
        pattern(nos, i, 0);
        nos = nos + 2;
        printf("\n");
    }
    nos = 1;
    for (i = 7; i >= 1; (i = i - 2))
    {
        pattern(nos, i, 0);
        nos++;
        printf("\n");
    }
    return 0;
}
