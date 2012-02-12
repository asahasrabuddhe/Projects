#include"charpattern_five.h"

void draw_using_for_loop()
{
    int i;
    //Prints the first right angle triangle with 9 rows
    for (i = 9; i >= 1; i--)
    {
        char odd_char = 'A';
        char even_char = 'Z';
        int j;
        for (j = 1; j <= i; j++)
        {
            //Checks for the restrictions
            if ((i % 2) != 0 && (j % 2) != 0)
            {
                printf("%2c", odd_char);
                odd_char++;
            }
            else if ((i % 2) == 0 && (j % 2) == 0)
            {
                printf("%2c", even_char);
                even_char--;
            }
            else
            {
                printf("  ");
            }
        }
        printf("\n");
    }
    // This prints the second right angle triangle skipping its tip.
    for (i = 2; i <= 9; i++)
    {
        char odd_char = 'A';
        char even_char = 'Z';
        int j;
        for (j = 1; j <= i; j++)
        {
            //Checks for the restrictions
            if ((i % 2) != 0 && (j % 2) != 0)
            {
                printf("%2c", odd_char);
                odd_char++;
            }
            else if ((i % 2) == 0 && (j % 2) == 0)
            {
                printf("%2c", even_char);
                even_char--;
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
    int i = 9, j;
    //Prints the first right angle triangle with 9 rows
    while (i >= 1)
    {
        char odd_char = 'A';
        char even_char = 'Z';
        j = 1;
        while (j <= i)
        {
            //Checks for the restrictions
            if ((i % 2) != 0 && (j % 2) != 0)
            {
                printf("%2c", odd_char);
                odd_char++;
            }
            else if ((i % 2) == 0 && (j % 2) == 0)
            {
                printf("%2c", even_char);
                even_char--;
            }
            else
            {
                printf("  ");
            }
            j++;
        }
        printf("\n");
        i--;
    }
    // This prints the second right angle triangle skipping its tip.
    i = 2;
    while (i <= 9)
    {
        char odd_char = 'A';
        char even_char = 'Z';
        j = 1;
        while (j <= i)
        {
            //Checks for the restrictions
            if ((i % 2) != 0 && (j % 2) != 0)
            {
                printf("%2c", odd_char);
                odd_char++;
            }
            else if ((i % 2) == 0 && (j % 2) == 0)
            {
                printf("%2c", even_char);
                even_char--;
            }
            else
            {
                printf("  ");
            }
            j++;
        }
        printf("\n");
        i++;
    }
}

void draw_using_do_while_loop()
{
    int i = 9, j;
    //Prints the first right angle triangle with 9 rows
    do
    {
        char odd_char = 'A';
        char even_char = 'Z';
        j = 1;
        do
        {
            //Checks for the restrictions
            if ((i % 2) != 0 && (j % 2) != 0)
            {
                printf("%2c", odd_char);
                odd_char++;
            }
            else if ((i % 2) == 0 && (j % 2) == 0)
            {
                printf("%2c", even_char);
                even_char--;
            }
            else
            {
                printf("  ");
            }
            j++;
        }
        while (j <= i);
        printf("\n");
        i--;
    }
    while (i >= 1);
    // This prints the second right angle triangle skipping its tip.
    i = 2;
    do
    {
        char odd_char = 'A';
        char even_char = 'Z';
        j = 1;
        do
        {
            //Checks for the restrictions
            if ((i % 2) != 0 && (j % 2) != 0)
            {
                printf("%2c", odd_char);
                odd_char++;
            }
            else if ((i % 2) == 0 && (j % 2) == 0)
            {
                printf("%2c", even_char);
                even_char--;
            }
            else
            {
                printf("  ");
            }
            j++;
        }
        while (j <= i);
        printf("\n");
        i++;
    }
    while (i <= 9);
}
