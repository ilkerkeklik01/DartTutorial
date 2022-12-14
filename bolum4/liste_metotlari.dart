void main(List<String> args) {
  List<int> sayilar = [10, 8, 4, 11, 2];

  if (sayilar.isNotEmpty) {
    print(sayilar.first);
    print(sayilar.last);
  }
  print("bos mu " + sayilar.isEmpty.toString());

  print("eleman sayisi: ${sayilar.length}");
  print("ters sirada ${sayilar.reversed}");
  print(sayilar);
  //sayilar.reversed kalıcı olarak ana yapıyı bozmaz
  sayilar.add(23);

  sayilar.removeAt(5); //5. index yani 6. elemandaki 23 ü çıkardı
  sayilar.remove(10); // ilk gördüğü 10 elemanını çıkardı

  print(sayilar);

  sayilar.clear();
  print(sayilar);

  sayilar.add(7);
  sayilar.add(3);
  sayilar.add(2);
  sayilar.add(1);
  sayilar.add(12);

  print(sayilar.contains(3));
  print(sayilar.contains(6));

  print(sayilar.elementAt(1));

  print(sayilar.indexOf(3));

  print(sayilar);
  sayilar.shuffle(); //yapıda kalıcı değişim yapar

  print(sayilar);
}



/*
void main(List<String> args) {
  List<int> sayilar = [2, 52, 42, 2, 45, 17];

  if (sayilar.isNotEmpty) {
    print(sayilar.first);
    print(sayilar.last);
  }
  print(sayilar.isEmpty);

  print("Eleman sayisi: " + sayilar.length.toString());

  print("Ters sırada ${sayilar.reversed}");// ana dizide değişiklik yapmaz
  print(sayilar);

  sayilar.add(12);
  sayilar.remove(45); //sırayla gördüğü ilk 45 i listeden siler
  sayilar.removeAt(0);
  print(sayilar);

  //sayilar.clear();

  if (sayilar.contains(9)) {
    print("Listede 9 var");
  } else {
    print("Listede 9 yok");
  }

  print(sayilar.elementAt(1));
  print(sayilar.indexOf(42));
  sayilar.shuffle();//ana dizide değişiklik yapar
  print(sayilar);
  
}
*/