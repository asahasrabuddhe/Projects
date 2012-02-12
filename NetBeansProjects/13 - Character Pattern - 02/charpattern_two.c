#include"charpattern_two.h"

void draw_using_for_loop()
{
    char *c = "A B C D E";
    int i;
    for(i = 0; i < 5; i++)
    {
        printf("%*.*s\n",9,10,c+(2*i));
    }
}

void draw_using_while_loop()
{
    char *c = "A B C D E";
    int i = 0;
    while(i < 5)
    {
        printf("%*.*s\n",9,10,c+(2*i));
        i++;
    }
}

void draw_using_do_while_loop()
{
    char *c = "A B C D E";
    int i = 0;
    do
    {
        printf("%*.*s\n",9,10,c+(2*i));
        i++;
    }while(i < 5);
}

void draw_using_recursion(int count)
{
    static char *c = "A B C D E";
    if(count == 5)
        return;
    printf("%*.*s\n",9,10,c+(2*count));
    draw_using_recursion(count+1);
}
