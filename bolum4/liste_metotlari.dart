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
