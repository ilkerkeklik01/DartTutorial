//set yapilari elemanları sıralı tutmaz
//her eleman birbirinden farklı olmak zorundadır
//index olmadan elemanları kontrol etmek için contains methodu kullanabiliriz
//bunların dışında listelerdeki metotlar set koleksiyon yapısı için de geçerlidir

void main(List<String> args) {
  Set<String> isimler = Set();
  // var isimler = Set(); şeklinde de tanımlayabilirdim

  isimler.add("Ilker");
  isimler.add("Emre");
  isimler.add("Ali");
  isimler.add("Ilker");
  isimler.add("Ilker");
  isimler.add("Fatma");

  for (String each in isimler) {
    print(each);
  }
  //her zaman sıralı çıkmayaiblir
  print(isimler.length);

/*
  if (isimler.contains("Emre")) {
    isimler.remove("Emre");
  }
  print(isimler);
  */
  bool sonuc = isimler.remove("Emre");
  print(sonuc);
  bool sonuc2 = isimler.remove("samet");
  print(sonuc2);
  print(isimler);

  Set<int> numaralar =
      Set.from([1, 2, 4, 2, 53, 5, 24, 4, 21, 1, 1, 1, 4, 33, 4]);
  print(numaralar);

  List<int> ciftSayilar = [0, 2, 4, 6, 8, 10, 8, 6, 4, 2, 0];

  numaralar.clear();
  numaralar.addAll(ciftSayilar);

  print("add all dan sonra numaralar $numaralar");

  
}
