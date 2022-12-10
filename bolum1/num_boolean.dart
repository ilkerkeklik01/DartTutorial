void main(List<String> args) {
  int yas = 20;
  print(yas);
  yas = 34;
  print(yas);

  num yil = 1988;
  print(yil);

  double sayi = 52;

  print(sayi);

  int kilo = (85.6).toInt();

  print(kilo);

  var num1 = 56;
  //num1 = "merhaba";  // yapamam cunku program num1 i artik integer olarak biliyor

/*
  int num2;
  print(num2);  // NULL Safety yuzunden yazdiramiyorum
*/

  double? num2; // ? num2 null olabilir haberin olsun diyor

  print(num2);

  //  var? h ;   // bu durum var icin gecerli degildir

  //print(num2 + 4);   //ama sistem bunu kabul etmez

  int hexadecimalSayi = 0xAABBCC;
  print(hexadecimalSayi);

  

}


/*
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
*/