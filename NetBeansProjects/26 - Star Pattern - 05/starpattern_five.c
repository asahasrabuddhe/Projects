#include "starpattern_five.h"

void draw_using_for_loop()
{
    char pattern = '*';
    int i, j, k, s, p, r, nos = 7;

    for (i = 1; i <= 5; i++)
    {
        for (j = 1; j <= i; j++)
        {
            if ((i % 2) != 0 && (j % 2) != 0)
            {
                printf("%3c", pattern);
            }
            else if ((i % 2) == 0 && (j % 2) == 0)
            {
                printf("%3c", pattern);
            }
            else
            {
                printf("   ");
            }
        }
        for (s = nos; s >= 1; s--)
        { // for the spacing factor
            printf("   ");
        }
        for (k = 1; k <= i; k++)
        {
            //Joining seperate figures
            if (i == 5 && k == 1)
            {
                continue;
            }
            if ((k % 2) != 0)
            {
                printf("%3c", pattern);
            }
            else
            {
                printf("   ");
            }
        }
        printf("\n");
        nos = nos - 2; // space control
    }
    nos = 1; // remaining half..
    for (p = 4; p >= 1; p--)
    {
        for (r = 1; r <= p; r++)
        {
            if ((p % 2) != 0 && (r % 2) != 0)
            {
                printf("%3c", pattern);
            }
            else if ((p % 2) == 0 && (r % 2) == 0)
            {
                printf("%3c", pattern);
            }
            else
            {
                printf("   ");
            }
        }
        for (s = nos; s >= 1; s--)
        {
            printf("   ");
        }
        for (k = 1; k <= p; k++)
        {
            if ((k % 2) != 0)
            {
                printf("%3c", pattern);
            }
            else
            {
                printf("   ");
            }
        }
        nos = nos + 2; // space control
        printf("\n");
    }
}

void draw_using_while_loop()
{
    char pattern = '*';
    int i = 1, j, k, s, p, r, nos = 7;

    while (i <= 5)
    {
        j = 1;
        while (j <= i)
        {
            if ((i % 2) != 0 && (j % 2) != 0)
            {
                printf("%3c", pattern);
            }
            else if ((i % 2) == 0 && (j % 2) == 0)
            {
                printf("%3c", pattern);
            }
            else
            {
                printf("   ");
            }
            j++;
        }
        s = nos;
        while (s >= 1)
        { // for the spacing factor
            printf("   ");
            s--;
        }
        //for (k = 1; k <= i; k++)
        k = 1;
        while (k <= i)
        {
            //Joining seperate figures
            if (i == 5 && k == 1)
            {
                k++;
                continue;
            }
            if ((k % 2) != 0)
            {
                printf("%3c", pattern);
            }
            else
            {
                printf("   ");
            }
            k++;
        }
        printf("\n");
        nos = nos - 2; // space control
        i++;
    }
    nos = 1; // remaining half..
    p = 4;
    while (p >= 1)
    {
        r = 1;
        while (r <= p)
        {
            if ((p % 2) != 0 && (r % 2) != 0)
            {
                printf("%3c", pattern);
            }
            else if ((p % 2) == 0 && (r % 2) == 0)
            {
                printf("%3c", pattern);
            }
            else
            {
                printf("   ");
            }
            r++;
        }
        s = nos;
        while (s >= 1)
        {
            printf("   ");
            s--;
        }
        k = 1;
        while (k <= p)
        {
            if ((k % 2) != 0)
            {
                printf("%3c", pattern);
            }
            else
            {
                printf("   ");
            }
            k++;
        }
        nos = nos + 2; // space control
        printf("\n");
        p--;
    }
}

void draw_using_do_while_loop()
{
    char pattern = '*';
    int i = 1, j, k, s, p, r, nos = 7;

    do
    {
        j = 1;
        do
        {
            if ((i % 2) != 0 && (j % 2) != 0)
            {
                printf("%3c", pattern);
            }
            else if ((i % 2) == 0 && (j % 2) == 0)
            {
                printf("%3c", pattern);
            }
            else
            {
                printf("   ");
            }
            j++;
        }
        while (j <= i);
        s = nos;
        do
        { // for the spacing factor
            printf("   ");
            s--;
        }
        while (s >= 1);
        if(i == 5)
            printf("\b\b\b");
        k = 1;
        do
        {
            //Joining seperate figures
            if (i == 5 && k == 1)
            {
                k++;
                continue;
            }
            if ((k % 2) != 0)
            {
                printf("%3c", pattern);
            }
            else
            {
                printf("   ");
            }
            k++;
        }
        while (k <= i);
        printf("\n");
        nos = nos - 2; // space control
        i++;
    }
    while (i <= 5);
    nos = 1; // remaining half..
    p = 4;
    do
    {
        r = 1;
        do
        {
            if ((p % 2) != 0 && (r % 2) != 0)
            {
                printf("%3c", pattern);
            }
            else if ((p % 2) == 0 && (r % 2) == 0)
            {
                printf("%3c", pattern);
            }
            else
            {
                printf("   ");
            }
            r++;
        }
        while (r <= p);
        s = nos;
        do
        {
            printf("   ");
            s--;
        }
        while (s >= 1);
        k = 1;
        do
        {
            if ((k % 2) != 0)
            {
                printf("%3c", pattern);
            }
            else
            {
                printf("   ");
            }
            k++;
        }
        while (k <= p);
        nos = nos + 2; // space control
        printf("\n");
        p--;
    }
    while (p >= 1);
}

