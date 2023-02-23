void main(List<String> args) {
  Map<String, dynamic> map = Map();
  var map2 = <String, dynamic>{};

  map["id"] = 5;
  map["isim"] = "emre";
  map["renk"] = "yeşil";

  //Constructors

  var yeniMap = Map.from({"deger": 1, "sonuc": false});

  var mapFromEntries = Map.fromEntries(map.entries);

  var set = {1, 2, 3, 4};

  //**   Map.fromIterable */

//Iterable bir yapıdaki her element için key ve value degerlerini return eden "key" ve "value" fonksiyonlarını çağırarak bu key ve value çiftleriyle bir Map yapısı dönderir
  var mapFromIterable = Map.fromIterable(set, key: (element) {
    return element;
  }, value: (element) {
    switch (element) {
      case 1:
        return "birinci";
        break;
      case 2:
        return "ikinci";
        break;
      case 3:
        return "üçüncü";
        break;
      case 4:
        return "dördüncü";
        break;
    }
    return false;
  });

  /**   Map.of */ //şu of ile from arasındaki farkı bir türlü kavrayamadım
  // .of kullanmak daha guvenli cunku key value tipleri uyumsuzsa compile anında hata verir güvenlidir.

  /** .update  */

  print(map);

  map.update("isim", (value) => value.toString() + " altunbilek");

  print(map);

  map.update("yaş", (value) => value.toString() + "yas",
      ifAbsent: () => 34.toString());

  print(map);

  /** .putIfAbsent  */

  map.putIfAbsent("dil", () {
    return "Dart";
  });

  print(map);
}
