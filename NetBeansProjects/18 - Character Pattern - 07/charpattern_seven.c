#include"charpattern_seven.h"

void draw_using_for_loop()
{
    char c = 'A';
    int i, j, s, nos = 5;
    for (i = 1; i <= 9; i += 2)
    {
        for (s = nos; s >= 1; s--)
        {
            printf("  ");
        }
        for (j = 1; j <= i; j++)
        {
            printf("%2c", c);
            ++c; //Increments the alphabet
            if (i == 9 && j == 9) //for the extra Z
            {
                printf("%2c", c);
            }
        }
        nos--;
        //for the continuation
        if (i != 9)
        {
            printf("\n");
        }
    }
    for (i = 9; i >= 1; i -= 2)
    {
        //Maintaining the required Spaces
        if (i == 9)
        {
            nos = 0;
        }
        else if (i == 7)
        {
            nos = 12;
        }
        for (s = nos; s >= 1; s--)
        {
            printf("  ");
        }
        for (j = 1; j <= i; j++)
        {
            --c; //decrements the alphabet before printing it.
            printf("%2c", c);
        }
        nos++;
        printf("\n");
    }
}

void draw_using_while_loop()
{
    char c = 'A';
    int i = 1, j, k, spaces = 5;
    while (i <= 9)
    {
        k = spaces;
        while (k >= 1)
        {
            printf("  ");
            k--;
        }
        j = 1;
        while (j <= i)
        {
            printf("%2c", c);
            ++c; //Increments the alphabet
            if (i == 9 && j == 9) //for the extra Z
            {
                printf("%2c", c);
            }
            j++;
        }
        spaces--;
        //for the continuation
        if (i != 9)
        {
            printf("\n");
        }
        i += 2;
    }
    i = 9;
    while (i >= 1)
    {
        //Maintaining the required Spaces
        if (i == 9)
        {
            spaces = 0;
        }
        else if (i == 7)
        {
            spaces = 12;
        }
        k = spaces;
        while (k >= 1)
        {
            printf("  ");
            k--;
        }
        j = 1;
        while (j <= i)
        {
            --c; //decrements the alphabet before printing it.
            printf("%2c", c);
            j++;
        }
        spaces++;
        printf("\n");
        i -= 2;
    }
}

void draw_using_do_while_loop()
{
    char c = 'A';
    int i = 1, j, k, spaces = 5;
    do
    {
        k = spaces;
        do
        {
            printf("  ");
            k--;
        }
        while (k >= 1);
        j = 1;
        do
        {
            printf("%2c", c);
            ++c; //Increments the alphabet
            if (i == 9 && j == 9) //for the extra Z
            {
                printf("%2c", c);
            }
            j++;
        }
        while (j <= i);
        spaces--;
        //for the continuation
        if (i != 9)
        {
            printf("\n");
        }
        i += 2;
    }
    while (i <= 9);
    i = 9;
    do
    {
        //Maintaining the required Spaces
        if (i == 9)
        {
            spaces = 0;
        }
        else if (i == 7)
        {
            spaces = 12;
        }
        k = spaces;
        do
        {
            if (i == 9)
                break;
            printf("  ");
            k--;
        }
        while (k >= 1);
        j = 1;
        do
        {
            --c; //decrements the alphabet before printing it.
            printf("%2c", c);
            j++;
        }
        while (j <= i);
        spaces++;
        printf("\n");
        i -= 2;
    }
    while (i >= 1);
}
