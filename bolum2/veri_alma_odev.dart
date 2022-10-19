import 'dart:io';

void main(List<String> args) {
  //Cevap 1
  print("ilk not: ");
  double not1 = double.parse(stdin.readLineSync()!);
  print("ikinci not: ");
  double not2 = double.parse(stdin.readLineSync()!);

  print("Notların ortalaması ${(not1 + not2) / 2}");

  print("****************************************");

  //Cevap 2

  print("Ürünün fiyatını giriniz: ");
  double fiyat = double.parse(stdin.readLineSync()!);
  print("Ürünün %18 KDV'li fiyatı : ${fiyat + fiyat * 18 / 100}");

  //Cevap 3

  print("Adınızı giriniz: ");
  String? isim = stdin.readLineSync();
  print('Soydadınızı giriniz: ');
  String? soyisim = stdin.readLineSync();
  print("Yasinizi giriniz: ");
  int yas = int.parse(stdin.readLineSync()!);

  print("Adınız: $isim\nSoyadınız: $soyisim\nYasiniz: $yas");
}
