void main(List<String> args) {
  String isim = "İlker";
  String soyIsim = "Keklik";
  var yas = 20;

  print(
      "Benim adim $isim $soyIsim, yasim $yas ve tüm ismimdeki karakter sayisi : ${(isim + soyIsim).length}'tir");
  
  var kenar1 = 3;
  var kenar2 = 4;
  var kenar3 = 5;

  print(
      "Birinci kenari $kenar1, ikinci kenari $kenar2, üçüncü kenari $kenar3, olan üçgenin çevresi ${(kenar1 + kenar2 + kenar3)}'dir");
}
