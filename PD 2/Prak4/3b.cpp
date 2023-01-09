#include<bits/stdc++.h>
using namespace std;

class Node{
    public:
    int data;
    Node *next;
};

void push(Node** head_ref, int new_data){
    Node* new_node = new Node();
    new_node->data = new_data;
    new_node->next = (*head_ref);
    (*head_ref) = new_node;
}

void insertAfter(Node* prev_node, int new_data){
    if (prev_node == NULL){
        cout << "the given previous node cannot be NULL";
        return;
    }
    Node* new_node = new Node();
    new_node->data = new_data;
    new_node->next = prev_node->next;
    prev_node->next = new_node;
}

void append(Node** head_ref, int new_data){
    Node* new_node = new Node();
    Node *last = *head_ref;
    new_node->data = new_data;
    new_node->next = NULL;

    if(*head_ref == NULL){
        *head_ref = new_node;
        return;
    }
    while(last->next != NULL)
        last = last->next;
        last->next = new_node;
        return;
}

void printList(Node *node){
    while(node != NULL){
        cout << " " << node->data;
        node = node->next;
    }
}

int main(){
    system("cls");
    Node* head = NULL;
    append(&head,6);
    append(&head,5);
    insertAfter(head->next,10);
    push(&head,7);
    append(&head,11);
    push(&head,1);
    insertAfter(head->next,3);
    append(&head,4);
    push(&head,2);
    insertAfter(head->next,8);
    push(&head,9);

    cout << "Created Linked list is: ";
    printList(head);

    return 0;
}