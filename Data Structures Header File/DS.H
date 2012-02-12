#if __STDC__
#define _Cdecl
#else
#define _Cdecl cdecl
#endif

#if	!defined(__DS_DEF_)
#define __DS_DEF_
#endif

#if !defined(_STDIO)
#include	<stdio.h>
#endif

#if !defined(_STDLIB)
#include	<stdlib.h>
#endif

struct list
{
	int info;
	struct list *next;
};
typedef struct list node;

struct dlist
{
	int info;
	struct list *next,*prev;
};
typedef struct dlist dnode;

/*struct pque
{
	int info;
	int priority;
	int order;
};
typedef struct pque pqnode;

struct btree
{
	int info;
	struct btree *left,*right;
};
typedef struct btree btnode;

struct tbt
{
	int info;
	struct tbt *left,*right;
	int leftthread,rightthread;
};
typedef struct tbt tbtnode;
*/
int _Cdecl compare(node *s1, node *s2)
{
		int flag = 0;
		node *temp1 = s1, *temp2 = s2;
		while(temp1 != NULL && temp2 != NULL)
		{
			if(temp1->info == temp2->info)
			{
				temp1 = temp1->next;
				temp2 = temp2->next;
			}
			else
			{
				flag = 1;
				break;
			}
		}
		if(temp1 != NULL || temp2 != NULL)
			flag = 1;
		return(!flag);
}
node * _Cdecl copy(node *s)
{
	node *newnode,*st,*prev,*temp;
	temp = s;
	prev = NULL;
	st = NULL;
	while(temp != NULL)
	{
		newnode = (node *)malloc(sizeof(node));
		newnode->info = temp->info;
		newnode->next = NULL;
		if(st == NULL)
			st = newnode;
		else
			prev->next = newnode;
		prev = newnode;
		temp = temp->next;
	}
	return(st);
}
int _Cdecl count(node *s)
{
	int count = 0;
	node *temp = s;
	while(temp != NULL)
	{
		count++;
		temp = temp->next;
	}
	return(count);
}
node * _Cdecl createlist()
{
	node *s, *prev, *newnode;
	int iscreated = 0;
	int num;
	char another = 'y';
	s = NULL;
	prev = NULL;
	if(iscreated == 1)
	{
		printf("Cannot create linked list twice !\n");
		return(NULL);
	}
	clrscr();
	while(another == 'y')
	{
		printf("Enter a number");
		scanf("%d",&num);
		newnode = (node *)malloc(sizeof(node));
		newnode->info = num;
		newnode->next = NULL;
		if(s == NULL)
		{
			s = newnode;
		}
		else
		{
			prev->next = newnode;
		}
		prev = newnode;
		printf("Do you wish to continue ? [y/n]");
		fflush(stdin);
		scanf("%c",&another);
	}
	iscreated = 1;
	return(s);
}
void _Cdecl display(node *s)
{
	node *temp = s;
	while(temp != NULL)
	{
		printf("%d ",temp->info);
		temp = temp->next;
	}
}

int _Cdecl delete(node **s, int n)
{
	node *temp, *prev;
	if(*s == NULL)
		return(0);
	else
	{
		prev = NULL;
		temp = *s;
		while(temp != NULL && temp->info != n)
		{
				prev = temp;
				temp = temp->next;
		}
		if(temp == NULL)
			return(0);
		else
		{
				if(temp == *s)
					*s = (*s)->next;
				else
					prev->next = temp->next;
				return(1);
		}
	}
}

node * _Cdecl insert(node *s, int n, int p)
{
	node *newnode,*temp;
	int i;
	newnode = (node *)malloc(sizeof(node));
	newnode->info = n;
	newnode->next=NULL;
	if(p == 1 || s == NULL)
	{
		newnode->next = s;
		s = newnode;
	}
	else
	{
			i = 2;
			temp = s;
			while(i <= p-1 && temp->next != NULL)
			{
					i++;
					temp = temp->next;
			}
			newnode->next = temp->next;
			temp->next = newnode;
	}
	return(s);
}


node * _Cdecl insertatend(node *s, int n)
{
	node *newnode,*temp;
	newnode = (node *)malloc(sizeof(node));
	newnode->info = n;
	newnode->next = NULL;
	if(s == NULL)
	{
		s = newnode;
	}
	else
	{
			temp = s;
			while(temp->next != NULL)
			temp = temp->next;
			temp->next = newnode;
	}
	return(s);
}

void _Cdecl join(node *s1,node *s2)
{
	node *temp;
	temp = s1;
	while(temp->next != NULL)
		temp = temp->next;
	temp->next = s2;
}

int _Cdecl largest(node *s)
{
	node *temp = s->next;
	int max = s->info;
	while(temp != NULL)
	{
		if(temp->info > max)
		{
			max = temp->info;
		}
		temp = temp->next;
	}
	return(max);
}
node * _Cdecl reverse(node *s)
{
	node *current = s, *prev = NULL, *save;
	while(current != NULL)
	{
		save = current->next;
		current->next = prev;
		prev = current;
		current = save;
	}
	return(prev);
}
int _Cdecl search(node *s, int n)
{
	node *temp  = s;
	int flag = 0;
	while(temp != NULL)
	{
		if(temp->info == n)
		{
			flag = 1;
			break;
		}
		temp = temp->next;
	}
	return(flag);
}
void _Cdecl sort(node *s)
{
	node *tempi,*tempj;
	int t;
	for(tempi = s; tempi->next!=NULL; tempi=tempi->next)
	{
		for(tempj = tempi->next; tempj->next!=NULL; tempj=tempj->next)
		{
			if(tempi->info >= tempj->info)
			{
				t = tempi->info;
				tempi->info = tempj->info;
				tempj->info = t;
			}
		}
	}
}
int _Cdecl sum(node *s)
{
	int ss = 0;
	node *temp;
	temp = s;
	while(temp != NULL)
	{
		ss = ss + temp->info;
		temp = temp->next;
	}
	return(ss);
}

