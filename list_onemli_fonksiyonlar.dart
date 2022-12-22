void main(List<String> args) {
  Person emre = Person(3, "emre");
  Ogrenci hasan = Ogrenci(1, "hasan", 10);
  Person ayse = Ogrenci(8, "ayse", 8);
  var yunus = Person(6, "yunus");
  var ali = Ogrenci(7, "ali", 4);



//Constructors of List class

  List<Person> tumOgrenciler = [emre, hasan, ayse, yunus, ali];

  var liste1 = List<Ogrenci>.filled(5, Ogrenci(0, "", 0));

  /**
   * var listeFrom = List<Ogrenci>.from(tumOgrenciler); 
   */

  //buraya bir set yapisi veya bir liste yapisi gonderebiliriz
  //dikkat edersen burada List<Ogrenci> olmasina ragmen icinde ogrenci olmayan ifadeler var.
  //kullanimi kabul ediyor compile error vermiyor ama runtime error veriyor

  var listeFrom =
      List<Ogrenci>.from(tumOgrenciler.whereType<Ogrenci>()); //yapilabilir
  print(listeFrom); //ayse de var cunku ayse nin actual type i ogrenci

  var listeOf = List<Ogrenci>.of([
    hasan,
    ali
  ]); //buraya bir set yapisi veya bir liste yapisi gonderebiliriz
  //dikkat ederseniz burada ogrenci olmayan nesneleri kabul etmiyor.

  //Yani List.of kullanmak bir nevi daha guvenli diyebiliriz

  var listeOf2 = List<Ogrenci>.of(tumOgrenciler.whereType<Ogrenci>());
//List.of un whereType<T> fonksiyonuyla kullanimi bu sekildedir
//bu kullanim tumOgrenciler listesinin Ogrenci turunde olan elemanlarindan yeni bir liste olusturur


//Higher order function
//generate adindaki fonskiyon baska bir fonksiyonu parametre olarak alir
  var listGenerate =
      List<Ogrenci>.generate(5, (index) => 
      Ogrenci(index, "$index", index * 2)
      
      );

      /**
       var listGenerate = List<Ogrenci>.generate(5, (index) {
    return Ogrenci(index, "$index", index * 2);
  });
   */

  print(listGenerate);



  var degistirilemez = List.unmodifiable([0, 1, 2]);
  // degistirilemez.add(5); hata verir
  // degistirilemez.remove(2); hata verir

  
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
    return "id: $id, isim: $isim, ve alinan ders: $alinanDersSayisi\n";
  }
}
