import 'dart:io';

void main(List<String> args) {
  print("Anne cocugu ekmek almaya yollar");
  uzunSurenIslem();
  print("Peynir zeytin hazirlanir");
  print("Kahvalti hazir!");
}

void uzunSurenIslem() {
  print("Cocuk ekmek almak icin evden cikar");
  //sleep(Duration(seconds: 5)); Senkron programlama ornegi
  
  Future.delayed(Duration(seconds: 5), () {
    print("Cocuk ekmek alma isini bitirip  eve girer");
  });
  //Future.delayed yapisinin fonksiyonu 5 saniye sonra calisacak ama bu surede diger islemler devam edecek
  //Asenkron programlama ornegi
  print("deneme");
  // print("Cocuk ekmekle eve girer");
}
