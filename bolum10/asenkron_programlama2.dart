import 'dart:io';

void main(List<String> args) {
  print("Anne cocugu ekmek almaya yollar");

  Future<String> sonuc = uzunSurenIslem();

  //benim sonucum basarili sekilde tamamlandiginda burayi tetikle
  sonuc
      .then((String value) => print(value))
      .catchError((error) => print(error))//basarisiz tamamlanma durumu
      .whenComplete(() => print("Ekmek alma operasyonu bitti")) //her turlu calisan kisim
  ;

  print("Peynir zeytin hazirlanir");
  print("Kahvalti hazir!");
}

// Future<String> demek olasi bir String deger demek
Future<String> uzunSurenIslem() {
  print("Cocuk ekmek almak icin evden cikar");

  Future<String> sonuc = Future.delayed(Duration(seconds: 5), () {
    //  return "Cocuk ekmek alma isini bitirip  eve girer";
    throw Exception("Bakkalda ekmek kalmamis");
  });

  return sonuc;
}
