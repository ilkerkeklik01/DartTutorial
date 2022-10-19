import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  //cevap1();
  //cevap2();
  //cevap3();
  //cevap4();
  cevap5();
}
//Cevap 1

void cevap1() {
  var sehirler = <String>[];
  sehirler.add("Adana");
  sehirler.add("İstanbul");
  sehirler.add("Bursa");
  sehirler.add("Samsun");

  int i = 0;
  while (true) {
    if (i == sehirler.length) {
      break;
    } else {
      print(sehirler[i]);
      i++;
    }
  }
}

//Cevap 2

void cevap2() {
  var myMap = <String, dynamic>{
    'Cekirdek sayisi': 16,
    'Ram miktari': '16GB',
    'haveSSD': true
  };

  for (var entry in myMap.entries) {
    print("Key: ${entry.key}  Value: ${entry.value}");
  }
}

//Cevap 3
void cevap3() {
  List<Map<String, dynamic>> mapListesi = <Map<String, dynamic>>[];

  Map<String, dynamic> eklenecekSehir1 = Map<String, dynamic>();
  Map<String, dynamic> eklenecekSehir2 = <String, dynamic>{};
  var eklenecekSehir3 = <String, dynamic>{};

  eklenecekSehir1['il adi'] = "Ankara";
  eklenecekSehir1['plaka kodu'] = '06';
  eklenecekSehir1['ilçe sayisi'] = 10;

  eklenecekSehir2['il adi'] = "Bursa";
  eklenecekSehir2['plaka kodu'] = '16';
  eklenecekSehir2['ilçe sayisi'] = 6;

  eklenecekSehir3['il adi'] = "İstanbul";
  eklenecekSehir3['plaka kodu'] = '34';
  eklenecekSehir3['ilçe sayisi'] = 16;

  mapListesi.add(eklenecekSehir1);
  mapListesi.add(eklenecekSehir2);
  mapListesi.add(eklenecekSehir3);

  mapListesi.add({'il adi': 'İzmir', 'plaka kodu': '35', 'ilçe sayisi': 8});

  /**
   *  
    print(mapListesi);
    print(mapListesi[1]['il adi']);
   */

  for (int i = 0; i < mapListesi.length; i++) {
    var oAnkiMap = mapListesi[i];
    print(
        "${i + 1}. şehrin adı: ${oAnkiMap['il adi']}, ilce sayisi: ${oAnkiMap['ilçe sayisi']}, plaka kodu: ${oAnkiMap['plaka kodu']}");
  }
}

//Cevap 4
void cevap4() {
  List<int> list1 = List.filled(5, 0);
  var list2 = List<int>.filled(5, 0);

  for (int i = 0; i < list2.length; i++) {
    list1[i] = Random().nextInt(50);
    list2[i] = Random().nextInt(50);
  }
  print(list1);
  print(list2);

  var sonListe = List.from(list1);
  sonListe = [...list1, ...list2];
  print(sonListe);

  for (int i = 0; i < sonListe.length; i++) {
    sonListe[i] *= sonListe[i];
  }

  Set<int> mySet = Set.from(sonListe);

  print(mySet);
}

//Cevap 5
void cevap5() {
  print("Ortalamasını almak için sayılar girin");
  print("Bitirmek istediginizde -1 girin");
  print("-->");
  int num = 0;
  var listem = <int>[];
  while (num != -1) {
    num = int.parse(stdin.readLineSync()!);
    if (num != -1) listem.add(num);
  }

  int total = 0;
  double ort;
  for (int each in listem) {
    total += each;
  }
  ort = total / listem.length;
  print("Girdiginiz sayilarin ortalaması: $ort");
}
