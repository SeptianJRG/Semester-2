#include <iostream>
using namespace std;

int main() {
    system("cls");
   int a[10][10], transpose[10][10], row, column, i, j;

   cout << "masukkan baris dan kolom matrix: ";
   cin >> row >> column;

   cout << "\nMasukkan element matrix: " << endl;

   for (int i = 0; i < row; ++i) {
      for (int j = 0; j < column; ++j) {
         cout << "element=" << i + 1 << j + 1 << ": ";
         cin >> a[i][j];
      }
   }

   cout << "\nMasukkan Matrix: " << endl;
   for (int i = 0; i < row; ++i) {
      for (int j = 0; j < column; ++j) {
         cout << " " << a[i][j];
         if (j == column - 1)
            cout << endl << endl;
      }
   }

   for (int i = 0; i < row; ++i)
      for (int j = 0; j < column; ++j) {
         transpose[j][i] = a[i][j];
      }

   cout << "\nTranspose matrix: " << endl;
   for (int i = 0; i < column; ++i)
      for (int j = 0; j < row; ++j) {
         cout << " " << transpose[i][j];
         if (j == row - 1)
            cout << endl << endl;
      }

   return 0;
}