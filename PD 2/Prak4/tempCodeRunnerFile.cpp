#include <bits/stdc++.h>
using namespace std;

/* Link list node */
struct Node {
	int data;
	struct Node* next;
};

/* Given a reference (pointer to pointer) to
	the head of a list and an int, push a
	new node on the front of the list. */
void push(struct Node** head_ref, int new_data)
{
	/* allocate node */
	struct Node* new_node
		= (struct Node*)malloc(sizeof(struct Node));

	/* put in the data */
	new_node->data = new_data;

	/* link the old list off the new node */
	new_node->next = (*head_ref);

	/* move the head to point to the new node */
	(*head_ref) = new_node;
}

/* Takes head pointer of the linked list and index
	as arguments and return data at index. (Don't use
another variable)*/
int GetNth(struct Node* head, int n)
{
	// if length of the list is less
	// than the given index, return -1
	if (head == NULL)
		return -1;

	// if n equal to 0 return node->data
	if (n == 0)
		return head->data;

	// increase head to next pointer
	// n - 1: decrease the number of recursions until n = 0
	return GetNth(head->next, n - 1);
}

/* Driver code*/
int main()
{
    system("cls");
	/* Start with the empty list */
	struct Node* head = NULL;

	/* Use push() to construct below list
	1->12->1->4->1 */
	push(&head, 1);
	push(&head, 4);
	push(&head, 1);
	push(&head, 12);
	push(&head, 1);

	
	push(&head,13);
	push(&head,14);

	
	cout << "Element at index 3 is " << GetNth(head, 3) << endl;
	cout << "Element at index 5 is " << GetNth(head, 5) << endl;
}