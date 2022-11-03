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
