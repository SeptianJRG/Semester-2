#include <assert.h>
#include <bits/stdc++.h>
using namespace std;

// Link list node
class Node {
public:
	int data;
	Node* next;
};

void push(Node** head_ref, int new_data)
{

	// allocate node
	Node* new_node = new Node();

	// put in the data
	new_node->data = new_data;

	// link the old list
	// off the new node
	new_node->next = (*head_ref);

	// move the head to point
	// to the new node
	(*head_ref) = new_node;
}

// Takes head pointer of
// the linked list and index
// as arguments and return
// data at index
int GetNth(Node* head, int index)
{

	Node* current = head;

	// the index of the
	// node we're currently
	// looking at
	int count = 0;
	while (current != NULL) {
		if (count == index)
			return (current->data);
		count++;
		current = current->next;
	}

	/* if we get to this line,
	the caller was asking
	for a non-existent element
	so we assert fail */
	assert(0);
}

// Driver Code
int main()
{
    system("cls");
	// Start with the
	// empty list
	Node* head = NULL;

	// Use push() to construct
	// below list
	// 1->12->1->4->1
	push(&head, 1);
	push(&head, 4);
	push(&head, 1);
	push(&head, 12);
	push(&head, 1);

	push(&head,13);
	push(&head,14);

	// Check the count
	// function
	cout << "Element at index 3 is " << GetNth(head, 3) << endl;
	cout << "Element at index 5 is " << GetNth(head, 5) << endl;
	return 0;
}