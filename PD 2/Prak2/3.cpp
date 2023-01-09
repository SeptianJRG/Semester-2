// #include <stdio.h>
// #include <stdlib.h>
// #include <iostream>
// using namespace std;

// int main()
// {
//     system("cls");
//     int i,j;
//     int ROW = 5;
//     int COL = 8;
//     double **pvalue = new double* [ROW];
//     // Allocate memory for rows
//     // Now allocate memory for columns
//     for(i=0;i<ROW;i++)
//     {
//         pvalue[i] = new double[COL];
//     }

//     for(i=0;i<ROW;i++)
//     {
//         for(j=0;j<COL;j++)
//         {
//             pvalue[i][j]=0.1; 
//             printf("%.2f\t",pvalue[i][j]);
//         }
//     printf("\n");
//     }

//     for(i=0;i<ROW;i++)
//     {
//         delete[] pvalue[i];
//     }
//     delete [] pvalue;

//     _sleep(500);
// }
#include <stdio.h>
#include <stdlib.h>

int main(){
    system("cls");
	int i,j;
	int ROW=5,COL=8;
	double** pvalue = new double* [ROW];
	double* pvalue2 = new double [COL];

	for(i=0;i<ROW;i++){
		pvalue[i] = new double [COL];
	}
	for(i=0;i<ROW;i++){
		for(j=0;j<COL;j++){
			pvalue[i][j]=0.1;
			printf("%g ",pvalue[i][j]);
		}
		puts("");
	}
	puts("");
	for(i=0;i<COL;i++){
		pvalue2[i]=0.1;
		printf("%g ",pvalue2[i]);
	}

	for(i=0;i<ROW;i++){
		delete[] pvalue[i];
	}
	delete[] pvalue;
	delete[] pvalue2;
}