#include"iostream.h"
#include"conio.h"
#include"llist.h"
void main()
{
	clrscr();

	linkedlist list1,list2;
	int array1[5] = {1,3,5,7,9};
	int array2[5] = {0,2,4,6,8};

	cout<<"Adding arrays to the linked list\n";

	list1.addArray(array1,5);
	list2.addArray(array2,5);

	cout<<"List 1 and List 2 are as follows\n";
	list1.display();
	list2.display();
	cout<<"Press any key to continue\n";
	getch();

	cout<<"Adding some more elements to the lists...\n";
	for(int i = 10;i < 20; i++)
	{
		if(i % 2 != 0)
		{
			list1.add(i);
		}
		else
		{
			list2.add(i);
		}
	}

	cout<<"List 1 and List 2 are now as follows\n";
	list1.display();
	list2.display();
	cout<<"Press any key to continue...\n";

	cout<<"List 1 now has"<<list1.count()<<"elements and List 2 now has"<<list2.count()<<"elements\n";

	cout<<"Insert numbers 100, 200 and 300 at first, last and seventh positions respectively on List 1\n";
	list1.addFirst(100);
	list1.addLast(200);
	list1.add(300,7);
	cout<<"List 1 is now as follows\n";
	list1.display();

	getch();
}