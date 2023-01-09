#include <string.h> 
#include <iostream> 
#include <stdio.h>

using namespace std; 

struct anatomi{
    char media_gerak[50]; 
    int jml;
};

struct pola_hidup{
    char cara_bergerak[50]; 
    struct anatomi gerak;
    char cara_berkembangbiak[50];
};

struct jenis{
    char nama[50]; 
    struct pola_hidup ph;
};

int main(){
    system("cls");
    struct jenis makhluk[100]; 
    int i,jml;
    printf("Masukkan jumlah makhluk : "); 
    scanf("%d",&jml);

    // ===== Memasukkan data-data makhluk ===== // 
    for(i=1;i<=jml;i++){
        printf("Masukkan nama makhluk : "); scanf("%s",makhluk[i].nama);
        printf("Masukkan cara bergeraknya : ");
        scanf("%s",makhluk[i].ph.cara_bergerak);
        printf("Dengan media apa makhluk tersebut bergerak : ");
        scanf("%s",makhluk[i].ph.gerak.media_gerak);
        printf("Berapa jumlah kaki/sirip/sayap makhluk tersebut : "); 
        scanf("%d",&makhluk[i].ph.gerak.jml);
        printf("Dengan cara apa makhluk berkembangbiak : ");
        scanf("%s",makhluk[i].ph.cara_berkembangbiak);
        printf("\n");
    }
    printf("\n\n");

    // ===== Mencetak data-data makhluk ===== //
    for(i=1;i<=jml;i++){
        printf("Nama makhluk yaitu %s\n",makhluk[i].nama);
        printf("Cara bergerak dengan %s\n",makhluk[i].ph.cara_bergerak);
        printf("Media makhluk tersebut bergerak menggunakan %s\n",makhluk[i].ph.gerak.media_gerak);
        printf("Jumlah kaki/sirip/sayap makhluk tersebut adalah %d\n",makhluk[i].ph.gerak.jml);
        printf("Cara makhluk berkembangbiak dengan %s\n",makhluk[i].ph.cara_berkembangbiak);
        printf("\n");
    }
    return 0;
}