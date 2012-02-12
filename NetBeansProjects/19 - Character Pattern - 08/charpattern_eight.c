#include "charpattern_eight.h"

void draw_using_for_loop()
{
    char pattern = 'N';
    int i, j, k;
    for (i = 1; i <= 4; i++)
    {
        //First right-angle triangle.
        for (j = 1; j <= i; j++)
        {
            if (j == 1 || j == i)
            { // This Ensures an empty baseless triangle
                printf("%2c", pattern); //Prints the character after 2 spaces.
            }
            else
            {
                printf("  ");
            }
        }
        //Second right-angle triangle
        for (k = 3; k >= i; k--)
        {
            if (k == i)
            { // k=0 has to skipped as both triangles share the same hypotenuse
                if (i == 4)
                { //For the joining point
                    break;
                }
                printf("%2c", pattern);
            }
            else
            {
                printf("  ");
            }
        }
        printf("\n");
    }
}

void draw_using_while_loop()
{
    char pattern = 'N';
    int i = 1, j, k;
    while(i <= 4)
    {
        //First right-angle triangle.
        j = 1;
        while( j <= i)
        {
            if (j == 1 || j == i)
            { // This Ensures an empty baseless triangle
                printf("%2c", pattern); //Prints the character after 2 spaces.
            }
            else
            {
                printf("  ");
            }
            j++;
        }
        //Second right-angle triangle
        k = 3;
        while( k >= i)
        {
            if (k == i)
            { // k=0 has to skipped as both triangles share the same hypotenuse
                if (i == 4)
                { //For the joining point
                    break;
                }
                printf("%2c", pattern);
            }
            else
            {
                printf("  ");
            }
            k--;
        }
        printf("\n");
        i++;
    }
}

void draw_using_do_while_loop()
{
    char pattern = 'N';
    int i = 1, j, k;
    do
    {
        //First right-angle triangle.
        j = 1;
        do
        {
            if (j == 1 || j == i)
            { // This Ensures an empty baseless triangle
                printf("%2c", pattern); //Prints the character after 2 spaces.
            }
            else
            {
                printf("  ");
            }
            j++;
        }while( j <= i);
        //Second right-angle triangle
        k = 3;
        do
        {
            if (k == i)
            { // k=0 has to skipped as both triangles share the same hypotenuse
                if (i == 4)
                { //For the joining point
                    break;
                }
                printf("%2c", pattern);
            }
            else
            {
                printf("  ");
            }
            k--;
        }while( k >= i);
        printf("\n");
        i++;
    }while(i <= 4);
}
