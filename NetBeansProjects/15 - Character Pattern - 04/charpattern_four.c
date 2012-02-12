#include"charpattern_four.h"

void draw_using_for_loop()
{
    char odd_char = 'A';
    char even_char = 'Z';
    int i, j;
    // The right angle has nine rows
    for (i = 1; i <= 9; i++)
    {
        for (j = 1; j <= i; j++)
        {
            //checks for the column printing restrictions..
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
        if (i == 9)
        {
            printf("%4c", odd_char);
        }
        printf("\n");
    }
}

void draw_using_while_loop()
{
    char odd_char = 'A';
    char even_char = 'Z';
    int i = 1, j;
    while (i <= 9)
    {
        j = 1;
        while (j <= i)
        {
            //checks for the column printing restrictions..
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
        if (i == 9)
        {
            printf("%4c", odd_char);
        }
        printf("\n");
        i++;
    }
}

void draw_using_do_while_loop()
{
    char odd_char = 'A';
    char even_char = 'Z';
    int i = 1, j;
    do
    {
        j = 1;
        do
        {
            //checks for the column printing restrictions..
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
        }while (j <= i);
        if (i == 9)
        {
            printf("%4c", odd_char);
        }
        printf("\n");
        i++;
    }while (i <= 9);
}
