#include <bits/stdc++.h>
using namespace std;

class Node
{
    public:
    int data;
    Node* next;
};

void deleteList(Node** head_ref){
    Node* current = *head_ref;
    Node* next;

    while (current != NULL){
        next = current->next;
        free(current);
        current = next;
    }
    *head_ref = NULL;
}

void push(Node** head_ref, int new_data){
    Node* new_node = new Node();
    new_node->data = new_data;
    new_node->next = (*head_ref);
    (*head_ref) = new_node;
}

int main(){
    system("cls");
    Node* head = NULL;
    push(&head, 1);
    push(&head, 4);
    push(&head, 1);
    push(&head, 12);
    push(&head, 1);

    cout << ("\n Deleting linked list");
    deleteList(&head);

    cout << ("\n Linked list deleted");
    
}