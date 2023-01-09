#include <iostream> 
using namespace std;

const int MAX = 4; 

int main ()
{
    system("cls");
    char *names[MAX] = {
        "Zara Fauzi", 
        "Hina Fauzi", 
        "Nuha Fauzi", 
        "Sara Fauzi"
    };
    for (int i = 0; i < MAX; i++)
    {
        cout << "Value of names[" << i << "] = "; 
        cout << names[i] << endl;
    }
    return 0;
}
