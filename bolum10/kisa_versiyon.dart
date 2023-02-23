import 'dart:io';

void main(List<String> args) {
  print("Anne cocugu ekmek almaya yollar");
  uzunSurenIslem()
      .then((String value) => print(value))
      .catchError((hata) => print(hata))
      .whenComplete(() => print("Ekmek alma operasyonu bitti"));

  print("Peynir zeytin hazirlanir");
  print("Kahvalti hazir!");
}

Future<String> uzunSurenIslem() {
  print("Cocuk ekmek almak icin evden cikar");

  return Future<String>.delayed(Duration(seconds: 5), () {
    return "Cocuk ekmek alma isini bitirip  eve girer";
  });
}
