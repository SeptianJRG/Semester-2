#include <stdio.h> 
#include <stdlib.h>
#include <time.h>

struct Node{
    int data;
    struct Node *next;
};

void push(struct Node** head_ref, int new_data){
    struct Node* new_node = (struct Node*) malloc(sizeof(struct Node)); 
    new_node->data = new_data;
    new_node->next = (*head_ref); 
    (*head_ref) = new_node;
}

void deleteNode(struct Node **head_ref, int key){
    struct Node* temp = *head_ref, *prev;
    if (temp != NULL && temp->data == key){
        *head_ref = temp->next; 
        free(temp);
        return;	
    }

    while (temp != NULL && temp->data != key){
        prev = temp;
        temp = temp->next;
    }

    if (temp == NULL) 
    return;
     
    prev->next = temp->next;
    free(temp); 
}

void printList(struct Node *node){
    while (node != NULL){
        printf(" %d ", node->data); 
        node = node->next;
        }
}

int main(){
    system("cls");
    struct Node* head = NULL;

    push(&head, 7);
    push(&head, 1);
    push(&head->next, 3);
    push(&head, 2);
    push(&head->next, 8);
    push(&head, 4);
    push(&head, 9);
    push(&head->next, 6);
    push(&head, 5);

    puts("Created Linked List: "); 
    printList(head);

    clock_t start;
    double duration;
    start = clock();

    deleteNode(&head, 1);
    deleteNode(&head, 5);
    deleteNode(&head, 8);
    duration = (clock() - start) / (double) CLOCKS_PER_SEC;
    puts(" ");
    printf("\nWaktu: %d ms", &duration);
    puts(" ");
    puts("\nLinked List after Deletion of 1,5,8: "); 
    printList(head);
    return 0;
}