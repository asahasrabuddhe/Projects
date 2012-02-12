/******************************************************************************
 *      Program 22                                                            *
 *                                                                            *
 *      Write a program to print the following pattern on the screen for 'n'  *
 *      number of lines where 'n' is entered by user WITHOUT USING A LOOP.    *
 *                                                                            *
 *      Sample Output for n = 4                                               *
 *                                                                            *
 *      *                                                                     *
 *      * *                                                                   *
 *      * * *                                                                 *
 *      * * * *                                                               *
 *                                                                            *
 *      Author: Ajitem Sahasrabuddhe                                          *
 *                                                                            *
 *      Version: 1.050112.1006                                                *
 *               2.130112.1008 (Changed to Power + Code Optimization)         *
 *               3.140112.1745 (Code Pattern Finally displays spaces)         *
 ******************************************************************************/

#include<stdio.h>
#include<conio.h>
#include<string.h>
#include<stdlib.h>

int main()
{
      int no_of_lines;
      char pattern[] = " ";
      void generate_pattern(char *, int, int);
      void print_pattern(char *, int);
      printf("Enter number of lines to be printed");
      scanf("%d",&no_of_lines);
      generate_pattern(pattern, no_of_lines, 0);
      print_pattern(pattern,0);
      getch();
      return(EXIT_SUCCESS);
}

void generate_pattern(char *p,int lines, int count)
{
     if(count < lines*2)
     {
              *(p+count) = '*';
              *(p+count+1) = ' ';
              generate_pattern(p,lines,count+2);
     }
     if(count == lines*2)
     {
              *(p+count-1) = '\0';
              return;
     }
}

void print_pattern(char *p, int count)
{
     int lines = strlen(p);
     if(count < lines)
     {
         printf("%*.*s\n", 1,count+1, p);
         print_pattern(p,count+2);
     }

}
