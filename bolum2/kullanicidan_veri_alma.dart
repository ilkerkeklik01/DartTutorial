import 'dart:io';

main(List<String> args) {

  //launch.json a consolu terminal olarak ayarlamayı unutma
  print("adınızı giriniz");
  String? isim = stdin.readLineSync();
  print("girilen isim: $isim");

  print("yasınızı giriniz");
  int? yas = int.parse(stdin.readLineSync()!);
  yas *= 2;
  print("girilen yas: $yas");
}
