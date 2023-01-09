#include <stdio.h>
#include <stdlib.h>

struct Node
{
    int data;
    struct Node *next;
};

void push(struct Node **head_ref, int new_data){
    
    //allocata node
    struct Node *new_node = (struct Node*)malloc(sizeof(struct Node));

    //put in data
    new_node ->data = new_data;

    //link the new node to old head
    new_node ->next = *head_ref;

    //move the head to the new node
    *head_ref = new_node;
}

//count node
int getCount(struct Node*head){
    //base case
    if (head == NULL)
    {
        return 0;
    }
    //count is 1+count of remaining node
    return 1 + getCount(head->next);
}
void deleteNode (struct Node **head_ref, int key){
    //store heap data
    struct Node *temp = *head_ref;
    struct Node *prev = NULL;

    //if head node itself holds the key to be deleted
    if (temp != NULL && temp->data == key)
    {
        *head_ref = temp->next;
        free(temp);
        return;
    }
    //search for the key to be deleted
    //keep the track of the prev node as we need to change 'prev->next'
    while (temp != NULL && temp->data != key)
    {
        prev = temp;
        temp = temp->next;
    }
    //if key was not present in LL
    if (temp == NULL)
    {
       return;
    }

    //if key is found in LL
    //unlink the node from LL
    prev->next = temp->next;
    free(temp);   
}

//driver function
int main(){
    system("cls");
    //start with empty node
    struct Node *head = NULL;
    //use push to add node
    push(&head,1);
    push(&head,3);
    push(&head,1);
    push(&head,2);
    push(&head,1);

    deleteNode(&head,1);
    deleteNode(&head,2);

    //check the count function
    printf("Count of node after deletion is : %d \n",getCount(head));
    return 0;
}