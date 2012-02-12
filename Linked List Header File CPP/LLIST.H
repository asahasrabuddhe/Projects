/*
llist.h
	Linked List implementation header file

	Coded by Ajitem Sahasrabuddhe 17/03/2010
*/
#define _cplusplus

#if !defined( __IOSTREAM_H )
#include <iostream.h>
#endif

#if !defined( __STDLIB_H )
#include <stdlib.h>
#endif

#if !defined( __LLIST_H )
#define __LLIST_H
#endif

_CLASSDEF(llist)

class _CLASSTYPE linkedlist
{
	private:
		struct list
		{
			int info;
			struct list *next;
		};

		typedef struct list node;

		node *start,*newnode,*prev,*temp;
		int num;
		node *createNode(int num)
		{
			node *tempnode;
			tempnode = (node *)malloc(sizeof(node));
			tempnode->info = num;
			tempnode->next = NULL;
			return(tempnode);
		}

		node *getStart()
		{
			return start;
		}

	public:
		linkedlist();
		~linkedlist();
		void _Cdecl add(int num, int pos);
		void _Cdecl add(int num);
		void _Cdecl addArray(int array[],int);
		void _Cdecl addFirst(int num);
		void _Cdecl addLast(int num);
		void _Cdecl clear();
		int _Cdecl contains(int num);
		int _Cdecl compare(linkedlist list);
		int _Cdecl count();
		void _Cdecl display();
		int _Cdecl get(int pos);
		void _Cdecl getArray(int *);
		int _Cdecl getFirst();
		int _Cdecl getLast();
		void _Cdecl join(linkedlist list);
		int _Cdecl largest();
		void _Cdecl remove(int num);
		void _Cdecl reverse();
		void _Cdecl set(int num, int pos);
		void _Cdecl sort();
		int _Cdecl sum();
}

		linkedlist::linkedlist()
		{
			start = NULL;
		}
		linkedlist::~linkedlist()
		{
			clear();
		}
		void _Cdecl linkedlist::add(int num,int pos)
		{
			newnode = createNode(num);
			if(pos == 1 || start == NULL)
			{
				newnode->next = start;
				start = newnode;
			}
			else
			{
				int i=2;
				temp=start;
				while(temp->next != NULL && i < pos)
				{
					i++;
					temp = temp->next;
				}
				newnode->next = temp->next;
				temp->next = newnode;
			}
			cout<<"Number inserted successfully\n";
		}
		void _Cdecl linkedlist::add(int num)
		{
			newnode = createNode(num);
			if(start == NULL)
			{
				start = newnode;
			}
			else
			{
				temp = start;
				while(temp->next != NULL)
				{
					temp = temp->next;
				}
				temp->next = newnode;
			}
			cout<<"Number inserted successfully\n";
		}
		void _Cdecl linkedlist::addArray(int array[],int dim)
		{
			for(int i = 0; i < dim; i++)
			{
				add(array[i]);
			}
		}

		void _Cdecl linkedlist::addFirst(int num)
		{
			add(num,1);
		}
		void _Cdecl linkedlist::addLast(int num)
		{
			add(num,count()+1);
		}
		void _Cdecl linkedlist::clear()
		{
			prev = start;
			temp = start->next;
			while(temp->next != NULL)
			{
				free(prev);
				prev = temp;
				temp = temp->next;
			}
			free(prev);
		}

		int _Cdecl linkedlist::contains(int num)
		{
			temp = start;
			while(temp->next != NULL)
			{
				if(temp->info == num)
				{
					return 1;
				}
				temp = temp->next;
			}
			return 0;
		}
		int _Cdecl linkedlist::compare(linkedlist list)
		{
			int flag = 0;
			node *s = list.getStart();
			temp = start;
			while(temp->next != NULL || s->next !=NULL)
			{
				if(temp->info == s->info)
				{
					s = s->next;
					temp = temp->next;
				}
				else
				{
					flag = 1;
					break;
				}
			}
			if(temp != NULL || s != NULL)
			{
				flag = 1;
			}
			return(!flag);
		}
		int _Cdecl linkedlist::count()
		{
			int count = 0;
			temp = start;
			while(temp != NULL)
			{
				count++;
				temp = temp->next;
			}
			return(count);
		}
		void _Cdecl linkedlist::display()
		{
			temp = start;
			while(temp != NULL)
			{
				cout<<temp->info<<" ";
				temp = temp->next;
			}
			cout<<"\n";
		}
		int _Cdecl linkedlist::get(int pos)
		{
			temp = start;
			if(pos == 1)
			{
				return(temp->info);
			}
			else
			{
				int i = 2;
				while(i < pos)
				{
					i++;
					temp = temp->next;
				}
				if(temp == NULL)
				{
					cout<<"Invalid Position ! Insert adequate elements first !";
					return(-1);
				}
				return(temp->info);
			}

		}
		void _Cdecl linkedlist::getArray(int array[])
		{
			temp = start;
			int i = 0;
			if(temp == NULL)
			{
				cout<<"List Empty !\n";
			}
			else
			{
				while(temp != NULL)
				{
					array[i] = temp->info;
					temp = temp->next;
					i++;
				}
			}
		}
		int _Cdecl linkedlist::getFirst()
		{
			return get(1);
		}
		int _Cdecl linkedlist::getLast()
		{
			return get(count());
		}
		void _Cdecl linkedlist::join(linkedlist list)
		{
			temp = start;
			while(temp->next != NULL)
			{
				temp = temp->next;
			}
			temp->next = list.getStart();
			list.clear();
		}
		int _Cdecl linkedlist::largest()
		{
			int max;
			temp = start->next;
			max = start->info;
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
		void _Cdecl linkedlist::remove(int num)
		{
			if(start == NULL)
			{
				cout<<"List is empty !\n";
			}
			else
			{
				prev = NULL;
				temp = start;
				while(temp != NULL && temp->info != num)
				{
					prev = temp;
					temp = temp->next;
				}
				if(temp == NULL)
				{
					cout<<"Number not found !\n";
				}
				else
				{
					if(temp == start)
					{
						start = start->next;
					}
					else
					{
						prev->next = temp->next;
					}
					free(temp);
				}
			}
		}
		void _Cdecl linkedlist::reverse()
		{
			node *save;
			prev = NULL;
			temp = start;
			while(temp != NULL)
			{
				save = temp->next;
				temp->next = prev;
				prev = temp;
				temp = save;
			}
			start = prev;
		}


		void _Cdecl linkedlist::set(int num, int pos)
		{
			temp = start;
			if( pos < count() )
			{
				cout<<"Invalid Position ! Enter adequate elements\n";
			}
			else
			{
				if(pos == 1)
				{
					temp->info = num;
				}
				else
				{
					int i = 2;
					while(i < pos)
					{
						i++;
						temp = temp->next;
					}
					temp->info = num;
				}
			}
		}
		void _Cdecl linkedlist::sort()
		{
			int t;
			for(temp = start; temp->next != NULL; temp = temp->next)
			{
				for(prev = temp->next; prev->next != NULL; prev = prev->next)
				{
					if(temp->info > prev->info)
					{
						t = temp->info;
						temp->info = prev->info;
						prev->info = t;
					}
				}
			}
		}


		int _Cdecl linkedlist::sum()
		{
			int sum = 0;
			temp = start;
			while(temp != NULL)
			{
				sum = sum + temp->info;
				temp = temp->next;
			}
			return(sum);
		}