#include <stdio.h>
#include <stdlib.h>


int main(){
    system("cls");
	double* pvalue=NULL;
	if(!(pvalue = new double)){
		printf("Error: out of memory");
		exit(1);
	}
	else{
		printf("pvalue: %x",pvalue);
		exit(1);
	}
}