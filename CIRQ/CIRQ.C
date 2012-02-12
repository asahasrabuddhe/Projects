#include"stdlib.h"
int first = 0, last = -1;
main(int argc, char *argv[])
{
	int que[5],num,opt,i,r;
	int debug = 0;
	void display(int []);
	void debugcirq();
	clrscr();
	if(argc <= 2)
	{
		debug = atoi(argv[1]);
	}
	else
	{
		printf("Parameter Overflow ! Use 1 for Debug Mode");
	}
	/*Begin infinite loop*/
	while(1)
	{
		clrscr();
		if(debug == 1)
		{
			printf("Circular Queue implementation in C by Ajitem Sahasrabuddhe\nDEBUG MODE...\n");
			printf("First = %d Last = %d",first,last);
		}
		printf("\n1.Insert an element.\n2.Delete an element.\n3.Display Queue.\n4.Exit");
		if(debug == 1)
		{
			printf("\n5.DEBUG OPTION - Circular Queue Status.\nPlease enter a suitable option:");
		}
		else
		{
			printf("\nPlease enter a suitable option:");
		}
		scanf("%d",&opt);
		switch(opt)
		{
			case 1:
				printf("Enter the number to be inserted:");
				scanf("%d",&num);
				r = insert(que,num);
				if(r == 1)
				{
					printf("Element inserted successfully");
				}
				else
				{
					printf("Queue Full");
				}
				break;
			case 2:
				r = delete(que,&num);
				if(r == 1)
				{
					printf("Element %d removed successfully",num);
				}
				else
				{
					printf("Queue is empty");
				}
				break;
			case 3:
				display(que);
				break;
			case 4:
				exit(1);
			case 5:
				if(debug == 0)
				{
					printf("Invalid Option");
					break;
				}
				debugcirq(que);
				break;
			default:
				printf("Invalid Option");
		}
		getch();
	}
}
insert(int q[], int n)
{
	if( (first == 0 && last == 4) || ( (first - last == 1) && (first != 0 && last != -1) ) )
	{
		/*Queue is full*/
		return(0);
	}
	else
	{
		if(last < 4)
		{
			last++;
		}
		else
		{
			last = 0;
		}
		q[last] = n;
		return(1);
	}
}
delete(int q[], int *n)
{
	if(first == 0 && last == -1)
	{
		/*Queue is empty*/
		return(0);
	}
	else
	{
		*n = q[first];
		if(first == last)
		{
			first = 0;
			last = -1;
		}
		else
		{
			if(first < 4)
			{
				first++;
			}
			else
			{
				first = 0;
			}
		}
		 return(1);
	}
}
void display(int q[])
{
	int i = first;
	while(i != last)
	{
		if(last == -1)
		{
			break;
		}
		printf("%d\n",q[i]);
		i++;
		if(i > 4)
		{
			i = 0;
		}
	}
	if(i == last)
	{
		printf("%d\n",q[i]);
	}
}
void debugcirq()
{
	if(first == 0)
	{
		printf("Positions Empty = %d",4-last);
	}
	else
	{
		if(first > last)
		{
			printf("Positions Empty = %d",first-last-1);
		}
		if(first < last)
		{
			printf("Position Empty = %d",first);
		}
	}
}

