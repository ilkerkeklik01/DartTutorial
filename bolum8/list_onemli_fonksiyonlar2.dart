void main(List<String> args) {
  Person emre = Person(3, "Emre");
  Ogrenci hasan = Ogrenci(1, "Hasan", 10);
  Person ayse = Ogrenci(8, "Ayse", 8);
  var yunus = Person(6, "Yunus");
  var ali = Ogrenci(7, "Ali", 4);

  List<Person> tumOgrenciler = [emre, hasan, ayse, yunus, ali];

  tumOgrenciler.add(yunus);
  tumOgrenciler
      .addAll([ayse, ali]); //Iterable yani  Set yapısı bile gönderebiliyırum

//   .any
//tumOgrencilerde yazdıgım testi geçebilen bir eleman var mı
  bool sonuc = tumOgrenciler.any((Person element) => element.id == 1);
  print("sonuc: $sonuc");

//  .asMap

  Map<int, Person> yeniMap = tumOgrenciler.asMap();

  print(yeniMap[0]!.isim);

  print(tumOgrenciler.contains(Person(3, "Emre")));
  //var olmasına ragmen false diyor nedenini biliyon

  //     .every
  //condition functioni her eleman için kontrol eder. True cıkması için hepsi için fonksiyon true olmalı
  bool sonuc2 = tumOgrenciler.every((Person element) => element.id >= 4);
  print("sonuc2 : $sonuc2");

  //   .firstWhere
  //condition functionunu saglayan ilk elemanı donderir
  var bulunan = tumOgrenciler.firstWhere((element) => element.id >= 4);
  print(bulunan);

  //  ****    .map
  //listemin her bir elemanını başka bir yapıya dönüştürerek Iterable oluşturur. Bu ornekte Person'ı String'e
  var yeniIterable = tumOgrenciler.map((Person e) => "${e.isim}");
  print(yeniIterable);
  //Iterable kullanışlı değil () içerisinde yazdırıyor
  //bunu listeye dönüştürmeliyim
  yeniIterable = yeniIterable.toList();
  //tek satırda yap

  var yeniList = tumOgrenciler.map((Person e) => "${e.isim}").toList();
  print(yeniList);
  // [] içersinde yazdırıyor.

//tekrar eden elemanları görmek istemiyorsam .toSet() diyerek Set yapısına da dönüştürebilirim.

//   .sort
  //sorting condition function
  tumOgrenciler.sort((Person a, Person b) => a.id >= b.id ? 1 : 0);
  print(tumOgrenciler);
// ***Ana kaynak değişir
}

class Person {
  int id = 0;
  String isim = "";

  Person(this.id, this.isim);

  @override
  String toString() {
    return "id: $id ve isim: $isim\n";
  }
}

class Ogrenci extends Person {
  int alinanDersSayisi = 0;

  Ogrenci(int id, String isim, this.alinanDersSayisi) : super(id, isim);

  @override
  String toString() {
    return "id: $id ve isim: $isim ve alinan ders sayisi: $alinanDersSayisi\n";
  }
}
