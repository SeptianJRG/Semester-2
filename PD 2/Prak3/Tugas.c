#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>

struct dimensi1
{
	int a;
	int b;
	int c;
};

struct dimensi2
{
	struct dimensi1 d1[10];
};

void main()
{
    system("cls");
	struct dimensi2 mtr[10];
	int n, m, p, q;

	printf("--------matrix---------\n");
	printf("masukkan jumlah baris matrix A: "); scanf("%d", &m);
	printf("masukkan jumlah kolom matrix A: "); scanf("%d", &q);
	printf("masukkan jumlah baris matrix B: "); scanf("%d", &n);
	printf("masukkan jumlah kolom matrix B: "); scanf("%d", &p);

	if (n != q)
	{
		printf("\nmatriks tidak bisa di kalikan\n");
	}
	else
	{
		printf("masukkan elemen matrik A: \n");
		for (int i = 0; i < m; i++)
		{
			for (int j = 0; j < q; j++)
			{
				scanf("%d", &mtr[i].d1[j].a);
			}
		}
		printf("\nmatrix A:\n\n");
		for (int i = 0; i < m; i++)
		{
			for (int j = 0; j < q; j++)
			{
				printf("%d\t", mtr[i].d1[j].a);
			}
			puts("\n");
		}
		puts("");

		printf("masukkan elemen matrik B: \n");
		for (int i = 0; i < n; i++)
		{
			for (int j = 0; j < p; j++)
			{
				scanf("%d", &mtr[i].d1[j].b);
			}
		}
		printf("\nmatrix B:\n\n");
		for (int i = 0; i < m; i++)
		{
			for (int j = 0; j < p; j++)
			{
				printf("%d\t", mtr[i].d1[j].b);
			}
			puts("\n");
		}
		printf("Maka hasil perkalian matrix AB:\n\n");
		for (int i = 0; i < m; i++)
		{
			for (int j = 0; j < p; j++)
			{
				mtr[i].d1[j].c = 0;
				for (int k = 0; k < n; k++)
				{
					mtr[i].d1[j].c = mtr[i].d1[j].c + mtr[i].d1[k].a * mtr[k].d1[j].b;
				}
			}
		}
		for (int i = 0; i < m; i++)
		{
			for (int j = 0; j < n; j++)
			{
				printf("%d\t", mtr[i].d1[j].c);
			}
			puts("\n");
		}
		printf("Maka hasil penjumlahan matrix AB:\n\n");
		for (int i = 0; i < m; i++)
		{
			for (int j = 0; j < p; j++)
			{
				mtr[i].d1[j].c = mtr[i].d1[j].a + mtr[i].d1[j].b;
			}
		}
		for (int i = 0; i < m; i++)
		{
			for (int j = 0; j < n; j++)
			{
				printf("%d\t", mtr[i].d1[j].c);
			}
			puts("\n");
		}

		printf("Maka hasil pengurangan matrix AB:\n\n");
		for (int i = 0; i < m; i++)
		{
			for (int j = 0; j < p; j++)
			{
				mtr[i].d1[j].c = mtr[i].d1[j].a - mtr[i].d1[j].b;
			}
		}
		for (int i = 0; i < m; i++)
		{
			for (int j = 0; j < n; j++)
			{
				printf("%d\t", mtr[i].d1[j].c);
			}
			puts("\n");
		}
	}
}