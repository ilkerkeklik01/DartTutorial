void main(List<String> args) {
  var listem = <String>[];

  //Dart dilinde set ve map yapıları curly bracket ile belirtilir
  //Siz parantezlerin arasına bir değer geçerseniz sistem bunun set oldugunu anlar
  //key-value şeklinde entry geçerseniz map oldugunu anlar
  //BOŞ BIRAKIRSANIZ MAP olarak tanımlar
  var mySet = {"emre"};
  var myMap = <String, dynamic>{"yas": 32};

  var tekSayilar = [1, 3, 5];
  var ciftSayilar = [2, 4, 6];

  var sonListe = [];
  //var sonListe = [tekSayilar, ciftSayilar];
  //böyle  yaparsen sonListe liste tutan bir listedir, int değerlerini değil

  sonListe.addAll(tekSayilar);
  sonListe.addAll(ciftSayilar);
  print("sonListe");
  print(sonListe);

  //spreads operator
  var sonListe2 = [...tekSayilar, ...ciftSayilar];
  print("sonListe2");
  print(sonListe2);

  var map1 = {"ad": "ilker"};
  var map2 = {"yas": 20};

  var sonMap = {...map1, ...map2};
  print("sonMap");
  print(sonMap);

  var set1 = {"emre"};
  var set2 = {"ayse"};
  var set3 = {"fatma"};
  var set4 = {"emre"};

  var sonSet = {...set1, ...set2, ...set3, ...set4};

  print("sonSet");
  print(sonSet);
}


/*
void main(List<String> args) {
  var listem = <String>[];

  var mySet = <String>{
    "emre"
  }; //bos bırakırsam map sanar ama içini tek degerle doldurunca set oldugunu anlıyor
  
  var myMap = <String, dynamic>{'yas': 34};

  var tekSayilar = [1, 3, 5];
  var ciftSayilar = [2, 4, 6];

  //spreads operator
  var sonListe = [...tekSayilar, ...ciftSayilar];

  /*
  sonListe.addAll(tekSayilar);
  sonListe.addAll(ciftSayilar);
  print(sonListe);
  */
  print(sonListe);

  var map1 = {'ad': 'emre'};
  var map2 = {'yas': 32};

  var sonMap = {...map1, ...map2};

  print(sonMap);

  var set1 = {"emre"};
  var set2 = {"ayse"};
  var set3 = {"fatma"};
  var set4 = {"emre"};

  var sonSet = {...set1, ...set2, ...set3, ...set4};
  print(sonSet);

  
}
*/
