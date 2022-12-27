import 'dart:io';

void main(List<String> args) {
  print("Anne cocugu ekmek almaya yollar");

  Future<String> sonuc = uzunSurenIslem();

  sonuc.then((String value) => print(value))
  .catchError((hata) {
    print(hata);
  }).whenComplete(() => print("Ekmek alma operasyonnu bitti"));

  print("Anne peynir zeytin hazirlar");
  print("Kahvalti hazir!");
}

//2 saniye sonra olası bir string
Future<String> uzunSurenIslem() {
  print("Cocuk ekmek almak icin evden cikar");
  //sleep(Duration(seconds: 5));
  //dart:io nun içinde sleep diye bir fonksiyon var
  //Duration sinifindan bir parametre bekliyor ve bu sinif const constructorinda optional named parametrler alıyor saniye gün ay milisaniye gibi. Sonra bunu kendi içinde milisaniyeye dönüştürüp kendi içindeki _milliseconds degiskenine atıyor ve program o sure boyunca bekliyor
  //Ama bu senkron calısıyor biz bunu istemiyoruz

  Future<String> res = Future.delayed(Duration(seconds: 2), () {
     return "Cocuk ekmekle eve girer";
   // throw Exception("Bakkalda ekmek kalmamis");
  });

  return res;
  //print("Cocuk ekmegi getirir");
}
