#include<bits/stdc++.h>
using namespace std;

class Node{
    public:
    float data;
    Node *next;
};

void push(Node** head_ref, float new_data){
    Node* new_node = new Node();
    new_node->data = new_data;
    new_node->next = (*head_ref);
    (*head_ref) = new_node;
}

void printList(Node *node){
    while(node != NULL){
        cout << " " << node->data;
        node = node->next;
    }
}
int getCount(Node* head){
    int count = 0;
    Node* current = head;
    while (current != NULL){
        count++;
        current = current->next;
    }
    return count;
}

int GetNth(Node* head, int index){
    Node* current = head;

    int count = 0;
    while (current != NULL){
        if(count == index)
        return (current->data);
        count++;
        current = current->next;
    }
    assert(0);
}
int main(){
    system("cls");
    Node* head = NULL;
    push(&head,1);
    push(&head,2);
    push(&head,3);
    push(&head,4);
    push(&head,5);
    push(&head,6);
    push(&head,7);
    push(&head,8);
    push(&head,9);
    push(&head,10);

    cout << "Data: ";
    printList(head);

    cout << endl;

    cout << "Count: " << getCount(head) << endl;

    cout << "Element dari index 7: " << GetNth(head, 3);
    return 0;
}