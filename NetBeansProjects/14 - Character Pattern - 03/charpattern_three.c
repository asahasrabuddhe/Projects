#include"charpattern_three.h"

void draw_using_for_loop()
{
    char even_char = 'a';
    char odd_char = 'A';
    int i, j, s, nos = 4, line = ODD; //line tracks if the row is odd or even
    for (i = 1; i <= 9; i += 2)
    {
        for (s = nos; s >= 1; s--)
        { // For the required spacings
            printf("  ");
        }
        for (j = 1; j <= i; j++)
        {
            if (line == ODD)
            {
                if ((i % 2) != 0 && (j % 2) != 0)
                {
                    printf("%2c", odd_char); // Prints capital letter if l=0
                }
                else
                {
                    printf("  ");
                }
            }
            else
            {
                if ((i % 2) != 0 && (j % 2) != 0)
                {
                    printf("%2c", even_char); //else prints a small letter
                }
                else
                {
                    printf("  ");
                }
            }
        }
        /* After one column the value of line is interchanged and even_char or
           odd_char is incremented accordingly */
        if (line == ODD)
        {
            odd_char++;
            line = EVEN;
        }
        else
        {
            even_char++;
            line = ODD;
        }
        nos--; //no of space decremented by 1
        printf("\n");
    }
    nos = 1;
    /* Second half of the diamond. This one skips its first row rest goes pretty much the same */
    for (i = 7; i >= 1; i -= 2)
    {
        for (s = nos; s >= 1; s--)
        {
            printf("  ");
        }
        for (j = 1; j <= i; j++)
        {
            if (line == ODD)
            {
                if ((i % 2) != 0 && (j % 2) != 0)
                {
                    printf("%2c", odd_char);
                }
                else
                {
                    printf("  ");
                }
            }
            else
            {
                if ((i % 2) != 0 && (j % 2) != 0)
                {
                    printf("%2c", even_char);
                }
                else
                {
                    printf("  ");
                }
            }
        }
        if (line == ODD)
        {
            odd_char++;
            line = EVEN;
        }
        else
        {
            even_char++;
            line = EVEN;
        }
        nos++; //no of spaces is incremented by one
        printf("\n");
    }
}

void draw_using_while_loop()
{
    char even_char = 'a';
    char odd_char = 'A';
    int i = 1, j, s, nos = 4, line = ODD; //line tracks if the row is odd or even
    while (i <= 9)
    {
        s = nos;
        while (s >= 1)
        { // For the required spacings
            printf("  ");
            s--;
        }
        j = 1;
        while (j <= i)
        {
            if (line == ODD)
            {
                if ((i % 2) != 0 && (j % 2) != 0)
                {
                    printf("%2c", odd_char); // Prints capital letter if l=0
                }
                else
                {
                    printf("  ");
                }
            }
            else
            {
                if ((i % 2) != 0 && (j % 2) != 0)
                {
                    printf("%2c", even_char); //else prints a small letter
                }
                else
                {
                    printf("  ");
                }
            }
            j++;
        }
        /* After one column the value of line is interchanged and even_char or
           odd_char is incremented accordingly */
        if (line == ODD)
        {
            odd_char++;
            line = EVEN;
        }
        else
        {
            even_char++;
            line = ODD;
        }
        nos--; //no of space decremented by 1
        printf("\n");
        i += 2;
    }
    nos = 1;
    /* Second half of the diamond. This one skips its first row rest goes pretty much the same */
    i = 7;
    while (i >= 1)
    {
        s = nos;
        while (s >= 1)
        {
            printf("  ");
            s--;
        }
        j = 1;
        while (j <= i)
        {
            if (line == ODD)
            {
                if ((i % 2) != 0 && (j % 2) != 0)
                {
                    printf("%2c", odd_char);
                }
                else
                {
                    printf("  ");
                }
            }
            else
            {
                if ((i % 2) != 0 && (j % 2) != 0)
                {
                    printf("%2c", even_char);
                }
                else
                {
                    printf("  ");
                }
            }
            j++;
        }
        if (line == ODD)
        {
            odd_char++;
            line = EVEN;
        }
        else
        {
            even_char++;
            line = EVEN;
        }
        nos++; //no of spaces is incremented by one
        printf("\n");
        i -= 2;
    }
}

void draw_using_do_while_loop()
{
    char even_char = 'a';
    char odd_char = 'A';
    int i = 1, j, s, nos = 4, line = ODD; //line tracks if the row is odd or even
    do
    {
        s = nos;
        do
        { // For the required spacings
            printf("  ");
            s--;

        }
        while (s >= 1);
        if (i == 9)
            printf("\b\b");
        j = 1;
        do
        {
            if (line == ODD)
            {
                if ((i % 2) != 0 && (j % 2) != 0)
                {
                    printf("%2c", odd_char); // Prints capital letter if l=0
                }
                else
                {
                    printf("  ");
                }
            }
            else
            {
                if ((i % 2) != 0 && (j % 2) != 0)
                {
                    printf("%2c", even_char); //else prints a small letter
                }
                else
                {
                    printf("  ");
                }
            }
            j++;
        }
        while (j <= i);
        /* After one column the value of line is interchanged and even_char or
           odd_char is incremented accordingly */
        if (line == ODD)
        {
            odd_char++;
            line = EVEN;
        }
        else
        {
            even_char++;
            line = ODD;
        }
        nos--; //no of space decremented by 1
        printf("\n");
        i += 2;
    }
    while (i <= 9);
    nos = 1;
    /* Second half of the diamond. This one skips its first row rest goes pretty much the same */
    i = 7;
    do
    {
        s = nos;
        do
        {
            printf("  ");
            s--;
        }
        while (s >= 1);
        j = 1;
        do
        {
            if (line == ODD)
            {
                if ((i % 2) != 0 && (j % 2) != 0)
                {
                    printf("%2c", odd_char);
                }
                else
                {
                    printf("  ");
                }
            }
            else
            {
                if ((i % 2) != 0 && (j % 2) != 0)
                {
                    printf("%2c", even_char);
                }
                else
                {
                    printf("  ");
                }
            }
            j++;
        }
        while (j <= i);
        if (line == ODD)
        {
            odd_char++;
            line = EVEN;
        }
        else
        {
            even_char++;
            line = EVEN;
        }
        nos++; //no of spaces is incremented by one
        printf("\n");
        i -= 2;
    }
    while (i >= 1);
}
