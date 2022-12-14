void main(List<String> args) {
  int sayi = 4;

// sabit uzunluku liste(dizi) ataması
  List<int> sayilar = List.filled(5, 2, growable: false);
  //growable: false yazmazsak varsayılan olarak false dur

  sayilar[0] = 4;
  sayilar[1] = 1;
  sayilar[2] = 9;

  print(sayilar); //köşeli parantez görünce aklına liste gelsin

  print(sayilar.length);
  // sayilar.length = 10; hata

  List<String> isimler = List.filled(2, "");
  isimler[0] = 5.toString();
  isimler[1] = "Emre";
  print(isimler);

  //hiçbir şey yazmazsak <dynamic> olur
  List karisik = List.filled(5, 0);
  karisik[0] = "emre";
  karisik[1] = 8;
  karisik[2] = false;
  print(karisik);

  //liste elemanlarını gezmek

  for (int i = 0; i < sayilar.length; i++) {
    sayilar[i] += 4;
    print(sayilar[i]);
  }

  //for each yapısı

  for (int each in sayilar) {
    print("For each dongusu: $each");
  }
  
}

/*
void main(List<String> args) {
  int sayi = 5;

  List<int> sayilar = List.filled(5, 1, growable: false);
  sayilar[0] = 4;
  sayilar[1] = 2;
  sayilar[2] = 9;
  print(sayilar);
  print("sayilarin lengthi ${sayilar.length}");
  //sayilar.length = 10; runtime error verir
  //print(sayilar[9]); RangeError (index): Invalid value: Not in inclusive range 0..4: 9

  //sayilar.remove(2); sabit boyutlu dizilerde çalışmaz

  List<String> isimler = List.filled(2, "", growable: false);
  //isimler[0] = 5; compilation error
  isimler[0] = 5.toString();
  isimler[1] = 'Ilker';
  print(isimler);

  
  List<dynamic> karisik = List.filled(growable: false, 5, 0); //dynamic list
  karisik[0] = 'keklik';
  karisik[1] = 5;
  karisik[2] = false;
  print(karisik);

  //Liste elemanlarını gezmek

  for (int i = 0; i < sayilar.length; i++) {
    sayilar[i] += 5;
    print(sayilar[i]);
  }
  print("******************************************");
  for (int temp in sayilar) {
    print(temp);
  }
}//main func end
*/
