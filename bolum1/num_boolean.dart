void main(List<String> args) {
  int yas = 20;
  print(yas);

  yas = 44;
  print(yas);

  num yil = 2002;
  print(yil);

  double sayi = 543;
  print(sayi);

  int kilo = 83.7.toInt(); //integera donnusturen metot
  print(kilo);

  var sayi1 = 56;
  // sayi1 = "ads"; hata veriyor
  // sayi1 = 56.7; bu da hata veriyor int kabul ediyor

  int numara;
  // print(numara); null safety den dolayı compile error veriyor

  double? s1 =
      null; // ? koymak degerin null olabilecegini dart'a anlatır ve null atamasını kabul eder
  //var değişkebi için geçerli degildir ( var--> variable dan gelir)
  print(s1);
  //print(s1+4); null safety sayesinde hata veriyor

  int hexadecimalSayi = 0xAABBCC;
  print(hexadecimalSayi);

  
}
