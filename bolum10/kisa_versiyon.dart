void main(List<String> args) {
  print("Anne cocugu ekmek almaya yollar");
  print("Cocuk ekmek almak icin evden cikar");

  uzunSurenIslem()
      .then((value) => print(value))
      .catchError(
          (hata) => print(hata)) //sistem bu işlemlerin bitmesini beklemiyor
      .whenComplete(() => print("Operasyon bitti"));

  print("Peynir zeytin hazirlanir");
  print("Kahvalti hazir");
}

Future<String> uzunSurenIslem() {
  return Future<String>.delayed(Duration(seconds: 2), () {
    return "Cocuk ekmekle eve girer"; //valuenin içinde burdaki return ifadesi var
  });
}
