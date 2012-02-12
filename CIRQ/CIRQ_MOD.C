int first = 0, last = -1;
main()
{
	int que[5],num,opt,i,r;
	void display(int []);
	clrscr();
	/*Begin infinite loop*/
	while(1)
	{
		clrscr();
		printf("\n1.Insert an element.\n2.Delete an element.\n3.Display Queue.\n4.Exit\nPlease enter a suitable option.");
		scanf("%d",&opt);
		switch(opt)
		{
			case 1:
				printf("Enter the number to be inserted.");
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
