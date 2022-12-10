import 'dart:io';

void main(List<String> args) {
  //Cevap 1
  print("İki notu sıra sıra girinşz");
  int not1 = int.parse(stdin.readLineSync()!);
  int not2 = int.parse(stdin.readLineSync()!);
  double ort = (not1 + not2) / 2;
  print("ortalama: $ort");
  print("****************************************");

  //Cevap 2

  print("fiyati giriniz");
  double fiyat = double.parse(stdin.readLineSync()!);
  print("%18 kdv li fiyat ${fiyat * 118 / 100}");
  //Cevap 3

  print("adinizi girinşz");
  String? isim = stdin.readLineSync();
  print("soyadinizi giriniz");
  String? soyisim = stdin.readLineSync();
  print("Yasinizi giriniz"); 
  int yas = int.parse(stdin.readLineSync()!);

  print("Adim $isim soyadim $soyisim yasim $yas");
}
