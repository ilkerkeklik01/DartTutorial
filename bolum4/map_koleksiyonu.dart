import 'dart:math';

/**
 * Map yapısı da set gibi sırasız bir şekilde elemanları saklayan bir koleksiyon ögesidir.
 * Bu yapıyı listelerden ve setten ayıran özellik ise elemanları key-value olarak saklamasıdır
 * Herhangi bir veri türü kullanılabilir ama burada önemli olan key değerlerinin unique olması gerektiğidir.
 * Sabit uzunlukta değildir, dinamiktir.
 */

void main(List<String> args) {
  //Süslü parantezleri görünce aklımıza map yapısı gelmeli
  Map<String, int> alanKodlari = {"Ankara": 312, "Bursa": 224, "Istanbul": 212};

  print(alanKodlari);
  print(alanKodlari["Bursa"]);

  Map<String, dynamic> ilker = {"soyad": "Keklik", "yas": 20, "bekarMi": false};

  print(ilker['yas']);

  //Map yapıları böyle de oluşturulabilir
  Map<String, dynamic> deneme = Map();
  Map<String, dynamic> deneme2 = {};

  deneme2["yas"] = 55; //atama böyle yapılır

  for (String eachKey in ilker.keys) {
    print("Key: " + eachKey + "--> " + ilker[eachKey].toString());
  }

  print("**********************");

  for (dynamic eachValue in ilker.values) {
    print(eachValue);
  }

  print("**********************");

  for (var eachEntry in ilker.entries) {
    print("Key : ${eachEntry.key} value :  ${eachEntry.value}");
  }

  if (ilker.containsKey('yas')) print("Bulunan yas degeri ${ilker["yas"]}");

   
}






/*
import 'dart:math';

/**
 * Map yapısı da set yapısı gibi elemanları sıralı olarak tutmaz
 * Elemanlar key-value ilişkisi olarak saklanır
 * Herhangi bir veri türü kullabilir fakat key değerlerinin unique olması şarttır
 * Dinamik uzunluğa sahiptir 
 */

void main(List<String> args) {
  Map<String, int> alanKodlari = {"ankara": 312, "bursa": 224, "istanbul": 212};
  // {} görünce aklına map gelsin
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
*/