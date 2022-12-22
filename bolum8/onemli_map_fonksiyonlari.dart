import 'dart:math';

void main(List<String> args) {
  Map<String, dynamic> map = Map();
  var map2 = <String, dynamic>{};

  map["id"] = 5;
  map["isim"] = "emre";
  map["renk"] = "yesil";

  var yeniMap = Map.from({"deger": "yeni"}); //Map<dynamic,dynamic> donderir
  yeniMap[false] = 2;

  var mapFromEntries = Map.fromEntries(
      map.entries); //parametredeki entrylerin turunde map donderir
  print(mapFromEntries);

  var list = [1, 2, 3, 4, 5];
  var mapFromIterable = Map.fromIterable(list,
      key: (each) {
        return 'k$each';
      },
      value: (element) => element * 10);

  print(mapFromIterable);
  //super bir fonksiyon

  // Map.of(other) Creates a [LinkedHashMap] with the same keys and values as [other].


//map.update eger key varsa update et yoksa ister olustur ister olusturma <3

  //key         eski value => bununla degistir
  map.update("id", (value) => value * 3);

  print(map);

  //eger bu id degerinde bir entry yoksa fonskiyonu deger olarak ata
  map.update("yeni_id", (value) => value * 3, ifAbsent: () => 20);
  //eger id diye bir key yoksa olustur ve valuesine 20 ata
  print(map);

//eger yoksa boyle bir alan olustur varsa hicbir sey yapma
  //key           //value
  map.putIfAbsent("soyisim", () => "altunbilek");
  print(map);

   map.putIfAbsent("renk", () => "yazmicak kiii");
  print(map);

}
