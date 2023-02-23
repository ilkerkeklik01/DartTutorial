void main(List<String> args) {
  Person emre = Person(3, "Emre");
  Ogrenci hasan = Ogrenci(1, "Hasan", 10);
  Person ayse = Ogrenci(8, "Ayse", 8);
  var yunus = Person(6, "Yunus");
  var ali = Ogrenci(7, "Ali", 4);

  //Constructors

  List<Person> tumOgrenciler = [emre, hasan, ayse, yunus, ali];

  var liste1 =
      List<Ogrenci>.filled(5, Ogrenci(0, "", -1)); //growable false by default

  var listFrom = List.from(tumOgrenciler); //growable true by default
  //a list containin all elements

  // * * var listFrom2 = List<Ogrenci>.from(tumOgrenciler);

  //tumOgrencilerin içinde "sadece" Ogrenci nesnesi yok
  // print(listFrom2);  listFrom2 runtime error

  var listOf = List.of(tumOgrenciler);
  //var listOf2 = List<Ogrenci>.of(tumOgrenciler); compile error verir
  //a list from elements (Bunu kullanmak biraz daha güvenli)

/**
 * List<T>.of  kullanmak istiyorsak parametre olarak girdigimiz listenin elemanlarının hepsinin T cinsinden olmalıdır. Yoksa compile error verir güvenlidir
 * List<T>.from burda ona bakmaz ama T cinsinden olmayan eleman varsa kullanırken runtime error verir 
 */

  var listeOf = List<Ogrenci>.of(tumOgrenciler.whereType<Ogrenci>());
  //tumOgrencilerin elemanlarından Ogrenci tipinde olanları dönderen constructordır.

  var listeFrom = List<Ogrenci>.of(tumOgrenciler.whereType<Ogrenci>());

  //length
  var listGenerate = List<Ogrenci>.generate(
      5, (index) => Ogrenci(index, index.toString(), index + 2));
//girdiğin length kadar girdiğin fonksiyona göre bir liste üretir fonksiyon return tipi liste tipidir

  var listUnmodifiable = List.unmodifiable([0, 1, 2]);
 
 // listUnmodifiable.add(2);   runtime error


 
}

class Person {
  int id = 0;
  String isim = "";

  Person(this.id, this.isim);

  @override
  String toString() {
    return "id: $id ve isim: $isim";
  }
}

class Ogrenci extends Person {
  int alinanDersSayisi = 0;

  Ogrenci(int id, String isim, this.alinanDersSayisi) : super(id, isim);

  @override
  String toString() {
    return "id: $id ve isim: $isim ve alinan ders sayisi: $alinanDersSayisi";
  }
}
