/*  

Bir kullanicinin hesabiyla ilgili islem yapabildigi program...

12253067-Algoritma ödev-1 Muhammed Ali Yaman 
kullanici adi= ali
sıfre= 1234

*/

#include <stdio.h>  //kullandigimiz yöntemler icin ekledigimiz kütüphaneler.
#include <conio.h>


void main(){
        
        int sifre=1234;  //tanımladigim sifre (istege baglı)
        int sifre1;      //kullanicidan aldıgım şifre
        int islem;       //switch icin tanımladıgim deger.Bu degere göre switch caseleri seçilecek.
        int para=2000;   //hesap sahibinin mevcut bulunan parasi (istege baglı)
        int paraCek=0,paraY=0,gonder=0;  //paracekme ve yatirma islemlerinde kullandigim degişkenler.
                
        char a,b,c;  //kullanici ismini aldigim degiskenler
        printf("Lutfen kullanici adinizi giriniz :"); 
		scanf_s("%c",&a,1),scanf_s("%c",&b,1),scanf_s("%c",&c,1);     //kullanici adini aldik (tek enterla)
        

		if((a=='a'||a=='A')&&( b=='l'||a=='L')&& (c=='i'||c=='İ')){ //sırayla islem yapmak icin 2 if tanımladım kullanıcı adi yanlıssa sifre almadan yanlıs demek icin 
			printf("Lutfen sifrenizi giriniz :");                        
        scanf_s("%d",&sifre1);    //sifreyi aldik
			if(sifre==sifre1){ //önce sifreyi denedik sonra kullanici adini
                printf("\n\t\t\tSistemimize Hosgeldiniz ....\n\n");                                //buyuk kucuk harf hatalarını önleleyerek denedik.
				printf("Hesabinizda %d TL bulunmaktadir sayin %c%C%C",para,a,b,c);                 //önce 
                printf("\nLUtfen yapacaginiz islemi seciniz :\n");

                printf("1 / PARA EKLE\n");
                printf("2 / PARA CEK\n");
                printf("3 / BASKA HESABA PARA GONDER\n");        // Menu oluşturup yapacagi islem turunu scanf le alıyoruz.
                printf("4 / CIKIS\n");
                scanf_s("%d",&islem);

                switch(islem){

                case 1 :
                        printf("Lutfen yatiracaginiz miktari giriniz :");
                        scanf_s("%d",&paraY);                                     //yatirdigi paranın degerini alip ana paramiza ekliyoruz.
                        para+=paraY;                                            
                        printf("Hesabinizda %d TL bulunmaktadir.",para);
                        _getche();  
                        break;
                case 2:
                        printf("Hesabinizdan cekeceginiz miktari giriniz :");
                        scanf_s("%d",&paraCek);                                                //cekecegi parayi alip ana paramizdan düsüyoruz.
                        if(paraCek<=para){                                                   //cektigi para ana paradan buyuk olamaz      
                        para-=paraCek;                                                       //bunun icin if le denetleme yapıyoruz.
                        printf("Hesabinizda kalan miktar %d TL dir...",para);                 //kalan miktar. 
                        _getche();     
                        break;
                        
                            
                }else{
                        printf("Hesabinizda yeterli bakiye bulunmamaktadir...");
                }
                        _getche();
                        break;

                case 3:
                        
                        printf("Gondereceginiz miktari giriniz :");                             //gonderecegi parayi alip ana paramizdan düsüyoruz.
                        scanf_s("%d",&gonder);
                        if(gonder<=para){                                                          //gonderdigi para ana paradan buyuk olamaz 
                        para-=gonder;
                        printf("Gonderme islemi gerceklesti...\n Kalan tutar : %d",para);            //bunun icin if le denetleme yapıyoruz.
                        }else{                                                                           //kalan miktar..
                                printf("Yeterli Bakiye bulunmamaktadir...");                              
                        }
                        _getche();
                        break;
                case 4:
                        break;
                default:
                        printf("Lutfen islem turunu belirtiniz!");
        }


        }else{
        printf("Yanlis sifre veya Kullanici adi girdiniz!!!");
        _getche();
        }
		}else{
			printf("Yanlis sifre veya Kullanici adi girdiniz!!!");
			_getche();
		}
}
