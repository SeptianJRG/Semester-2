#include <stdio.h>
#include <stdlib.h>

/* a node of the doubly linked list */
struct Node
{
	int data;
	struct Node *next;
	struct Node *prev;
};

/* A utility function to swap two elements */
void swap ( int* a, int* b )
{ int t = *a; *a = *b; *b = t; }

// A utility function to find last node of linked list
struct Node *lastNode(struct Node *root)
{
	while (root && root->next)
		root = root->next;
	return root;
}

/* Considers last element as pivot, places the
pivot element at its correct position in sorted array,
and places all smaller (smaller than pivot) to left
of pivot and all greater elements to right of pivot */
struct Node* partition(struct Node *l, struct Node *h)
{
	// set pivot as h element
	int x = h->data;

	// similar to i = l-1 for array implementation
	struct Node *i = l->prev;

	// Similar to "for (int j = l; j <= h- 1; j++)"
	for (struct Node *j = l; j != h; j = j->next)
	{
		if (j->data <= x)
		{
			// Similar to i++ for array
			i = (i == NULL) ? l : i->next;

			swap(&(i->data), &(j->data));
		}
	}
	i = (i == NULL) ? l : i->next; // Similar to i++
	swap(&(i->data), &(h->data));
	return i;
}

/* A recursive implementation of quicksort for linked list */
void _quickSort(struct Node* l, struct Node *h)
{
	if (h != NULL && l != h && l != h->next)
	{
		struct Node *p = partition(l, h);
		_quickSort(l, p->prev);
		_quickSort(p->next, h);
	}
}

// The main function to sort a linked list.
// It mainly calls _quickSort()
void quickSort(struct Node *head)
{
	// Find last node
	struct Node *h = lastNode(head);

	// Call the recursive QuickSort
	_quickSort(head, h);
}

// A utility function to print contents of arr
void printList(struct Node *head)
{
	while (head)
	{
		printf("%d ", head->data);
		head = head->next;
	}
	printf("\n");
}

void reverse(struct Node **head_ref)
{
	struct Node *temp = NULL;
	struct Node *current = *head_ref;
	
	/* swap next and prev for all nodes of
	doubly linked list */
	while (current != NULL)
	{
	temp = current->prev;
	current->prev = current->next;
	current->next = temp;			
	current = current->prev;
	}	
	
	/* Before changing head, check for the cases like empty
		list and list with only one node */
	if(temp != NULL )
		*head_ref = temp->prev;
}	

/* Function to insert a node at the
beginning of the Doubly Linked List */
void push(struct Node** head_ref, int new_data)
{
	struct Node* new_node = (struct Node*)
			malloc(sizeof(struct Node)); /* allocate node */
	new_node->data = new_data;

	/* since we are adding at the beginning,
	prev is always NULL */
	new_node->prev = NULL;

	/* link the old list off the new node */
	new_node->next = (*head_ref);

	/* change prev of head node to new node */
	if ((*head_ref) != NULL) (*head_ref)->prev = new_node ;

	/* move the head to point to the new node */
	(*head_ref) = new_node;
}

// Driver Code
int main(int argc, char **argv)
{
    system("cls");
	struct Node *a = NULL;
	push(&a, 5);
	push(&a, 20);
	push(&a, 4);
	push(&a, 3);
	push(&a, 30);

	printf("\nLinked List before sorting \n");
	printList(a);

	quickSort(a);

	printf("\nLinked List after ascendent sorting \n");
	printList(a);

	reverse(&a);

	printf("\nLinked List after descendent sorting \n");
	printList(a);

	getchar();

	return 0;
}