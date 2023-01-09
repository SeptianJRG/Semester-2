#include <string.h> 
#include <iostream> 
#include <stdio.h>
using namespace std; 

struct mahasiswa{
char nama[50];
int no_id;
char gender[5]; 
char kelas[10];
};

int main(){
    system("cls");
    struct mahasiswa mhs[100]; 
    int i,jml_mhs;

    printf("Masukkan jumlah mahasiswa : "); 
    scanf("%d",&jml_mhs);

    // ===== Memasukkan data-data mahasiswa ===== // 
    for(i=1;i<=jml_mhs;i++){
        printf("Mahasiswa ke-%d : \n",i); 
        printf("Nama : "); scanf("%s",mhs[i].nama); 
        printf("No Id : "); scanf("%d",&mhs[i].no_id); 
        printf("Gender : "); scanf("%s",mhs[i].gender); 
        printf("Kelas : "); scanf("%s",mhs[i].kelas);

        printf("\n\n");
    }

    // ===== Mencetak data-data mahasiswa ===== // 
    for(i=1;i<=jml_mhs;i++){
        printf("Mahasiswa ke-%d : \n",i); 
        printf("Nama : %s\n",mhs[i].nama);
        printf("No Id : %d\n",mhs[i].no_id); 
        printf("Gender : %s\n",mhs[i].gender); 
        printf("Kelas : %s\n",mhs[i].kelas);

        printf("\n\n");
    }
    return 0;
}