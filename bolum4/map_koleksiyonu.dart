import 'dart:math';

/**
 * Map yapısı da set yapısı gibi elemanları sıralı olarak tutmaz
 * Elemanlar key-value ilişkisi olarak saklanır
 * Herhangi bir veir türü kullabilir fakat key değerlerinin unique olması şarttır
 * Dinamik uzunluğa sahiptir 
 */

void main(List<String> args) {
  Map<String, int> alanKodlari = {"ankara": 312, "bursa": 224, "istanbul": 212};

  print(alanKodlari);

  print(alanKodlari["bursa"]);

  Map<String, dynamic> emre = {
    "soyisim": "altunbilek",
    "yas": 34,
    "bekarMi": true
  };

  print(emre["yas"]);

  //boş map oluşturma

  Map<String, dynamic> deneme = Map();
  Map<String, dynamic> deneme2 = {};

  deneme2['yas'] = 52;

  print("****************************");
  for (String each in emre.keys) {
    print(each);
    print(emre[each]);
  }
  print("****************************");

  for (dynamic deger in emre.values) {
    print(deger);
  }

  print("****************************");
  for (var entry in emre.entries) {
    print("Key degeri: ${entry.key} değeri : ${entry.value}");
  }
  print("****************************");
  if (emre.containsKey('yas')) {
    print("Bulunan yas degeri: ${emre['yas']}");
  }
}
