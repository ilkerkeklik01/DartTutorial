import 'dart:ffi';

void main(List<String> args) {
  var str = "emre";
  str = "altunbilek";

  final String str2 = "ilker";
  //str2 = "keklik"; //The final variable can be set only once

  const String str3 = "cisem";
  //str3 = "diker"; //Constant variables can't be assigned a value.

  final tarih = DateTime.now(); //runtime anınnda değerimiz geliyorsa final kullanıyoruz
  //const tarih2 = DateTime.now();  //compile anında bellege yazılır
  //ama datetime runtime da belli olucagı için atayamıyoruz

  final liste = [1, 2, 3];
  final liste2 = [1, 2, 3];

  liste.add(4);
  liste2.add(4);

  //liste = [34, 3]; diyemeyiz (bunlar pointer gibi çalışıyo)

  if (liste == liste2)
    print("eşit");
  else
    print("eşit degil"); //eşit değil


//canonicalized 
  const list = [1, 2];
  const list2 = [1, 2];

  if (list == list2)
    print("eşit"); //eşit
  else
    print("eşit degil");

//  list.add(2);  diyemiyoruz compile error vermiyor ama runtime hatası veriyor
//  list.add(2);


}
