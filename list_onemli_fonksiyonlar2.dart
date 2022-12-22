import 'list_onemli_fonksiyonlar.dart';

void main(List<String> args) {
  Person emre = Person(3, "emre");
  Ogrenci hasan = Ogrenci(1, "hasan", 10);
  Person ayse = Ogrenci(8, "ayse", 8);
  var yunus = Person(6, "yunus");
  var ali = Ogrenci(7, "ali", 4);

  List<Person> tumOgrenciler = [emre, hasan, ayse, yunus, ali];
  tumOgrenciler.add(yunus);
  tumOgrenciler.addAll(
      {ayse, ali}); //Iterable bir listenin  hepsini ekleme  mesela set yapisi

  print(tumOgrenciler);
  //any yazdiginiz testi gecen eleman var mi yok mu
  //higher order bir fonksiyondur
  bool sonuc = tumOgrenciler.any((Person element) => element.id == 2);
  print(sonuc);
  //bu super bir seymis

  Map<int, Person> myMap = tumOgrenciler
      .asMap(); //var olan listeyi map (unmodifiable) yapisina donusturur
  //key degerleri integer atanir ve 0 dan artarak gider value degerleri listenin icerigidir.
  print(myMap[2]?.isim);

/**
 *tumOgrenciler.clear();  //tum listeyi sifirlar
  print(tumOgrenciler); 
 */

  print("emre adi altinda biri var mi: ${tumOgrenciler.contains(emre)}");

  bool sonucEvery = tumOgrenciler.every((element) => element.isim.length > 0);
  //butun elemanlarin isim degerinin uzunlugu mutlaka 0 karakterden buyum mu
  //any de sadece bir tanesi dogruysa true donduruyordu burda hepsinin dogru olmasi lazim
  print(sonuc);

  var bulunan = tumOgrenciler.firstWhere((element) => element.id > 5);
  //verdigin bool donduren fonksiyona gore bulunan ilk true ifadesindeki elemani donderir
  //ayse vermesini bekliyorum
  print(bulunan); //ayse

  tumOgrenciler.insert(1,
      emre); //girilen indexe verilen elemani ekler ve onun yerindeki eleman dahil her seyi saga kaydirir.
  print(tumOgrenciler);
  //insertAll da o indexe girilen iterable i ekler digerlerini kaydirir gibi dusun

//butun listeyi gezer ve her elemani verilen fonskiyona gore donusturur. ardindan bir iterable in icine atar ve bu iterable i dondurur.
  var dondurulenIterable = tumOgrenciler.map((e) => "${e.isim}");
//hepsini stringe donusturdum
  print(dondurulenIterable);
  //Iterable pek isimize yaramayacagi icin bunu baska bir yapiya donusturmeliyiz
  var yeniList = dondurulenIterable.toList();
  print(yeniList);

  var yeniSet = dondurulenIterable.toSet();
  print(yeniSet);

  /*
  tumOgrenciler.sort((ogr1, ogr2) {
    if (ogr1.id < ogr2.id)
      return -1;
    else if (ogr1.id == ogr2.id)
      return 0;
    else
      return 1;
  });
*/
  tumOgrenciler.sort((ogr1, ogr2) => ogr1.id.compareTo(ogr2.id));
  print(tumOgrenciler.map((e) => "${e.isim}"));

  //icerdeki fonskiyona(COMPARATOR) gore siralama yapar ogr1.id ogr2.id den kucukse compare to negatif donderir ve ogr1 ogr2 den once gelir.
  //geriye bir sey dondermez, ana kaynakta degisim yapar
}
