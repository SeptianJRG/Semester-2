 #include <iostream>

 using namespace std;

 int luas(int &a, int &b){
    return a * b;

 }

 int main(){
    system ("cls");
    int p,l;
    cout << "panjang: ";
    cin >> p;
    cout << "lebar: ";
    cin >> l;
    cout << "luasnya: " << luas(p,l);
 }