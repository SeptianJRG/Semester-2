#include <iostream> 
using namespace std;

const int MAX = 3; 

int main ()
{
    system("cls");
    int var[MAX] = {10, 100, 200};
    for (int i = 0; i < MAX; i++)
    {
        *var = i; // This is a correct syntax 
         //var++; // This is incorrect.
        cout << *var << endl;
        cout << var << endl;
    }
    
    return 0;
}
