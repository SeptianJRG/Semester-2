#include <iostream>
using namespace std;

struct Node{
    int data;
    Node *link;
    Node *p;
}

int main(){
    Node *A = new Node;
    Node *B = new Node;
    Node *C = new Node;
    int count = 0;
    p = A;
    A->data = 7;
    A->link = NULL;
    B->data = 8;
    B->link = NULL;
    C->data = 9;
    C->link = NULL;
    A->link = B;
    B->link = C;

    while (p.link != NULL){
        count++;
        p = p.link;
    }
    cout << "Jumlh node: " << count <<endl;
    return 0;
};