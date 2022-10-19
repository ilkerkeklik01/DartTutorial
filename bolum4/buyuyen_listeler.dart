void main(List<String> args) {
  List<int?> sayilar = [];
  //sayilar[0] =1; Runtime error
  //RangeError (index): Invalid value: Valid value range is empty: 0
  //bu yöntem sabit uzunluklu listelerde çalışır dinamikte çalışmaz
  sayilar.add(1);
  sayilar.add(2);
  sayilar.add(3);
  sayilar.add(4);
  print(sayilar);
  print(sayilar.length);
  // sayilar.length = 100; HATA VERİYOR
  sayilar.length =
      100; //List<int?> yaptıktan sonra düzeldi çünkü artık içinde null deger tutabiliyor
  print(sayilar.length);

  print("***********************************************");

  List<int> sayilar2 = [1, 2, 3];
  sayilar2.add(7);
  print(sayilar2);

  print("***********************************************");
  List<int> sayilar3 = List.filled(10, 10, growable: true);
  sayilar3.add(32);
  print(sayilar3.length);
  print(sayilar3);

  print("***********************************************");

  List<int> sayilar4 = List.empty(growable: true);
  List<int> sayilar5 = [];  //sayilar4 and sayilar5 are equal
}
