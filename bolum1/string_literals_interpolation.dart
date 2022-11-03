

void main(List<String> args) {
  String isim = "emre";
  var sayi = 56;
  bool deger = true;

//Each of line above are called literal


  String ad = "ilker";
  String soyIsim = "keklik";
  var kurs = 'Dart\'ın kullanimi ';
  String kursTanimi = "Dart'ı ve Flutter'ı ogreneccegiz";

  print(ad + ' ' + soyIsim);

  print("$ad $soyIsim"); //that is called interpolation

  print("soyadim olan $soyIsim'te bulunan karakter sayisi:" +
      soyIsim.length.toString());

  print("Karakter sayisi: ${soyIsim.length}"); //burasi da cok onemli

  double en = 10;
  double boy = 12;

  print("Boyu ${boy.toInt()} eni ${en.toInt()} olan dikdörtgenin alanı ${(en * boy).toInt()} dur");
  
  


}
