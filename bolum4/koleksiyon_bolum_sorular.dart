import 'dart:io';
import 'dart:math';

/**
 * 1- Şehirleri tutan bir liste oluşturun, 4 tane il ekleyip sırasıyla yazdırın
 * 
 * 2- Keyleri String , değerleri dynamic olan bir map oluşturun. Bu map yapısında 
 * bilgisayarınızın işlemci çekirdek sayısını, ram miktarını ve ssd olup olmadıgı
 * bilgisini tutun ve ekrana yazdırın
 * 
 * 3-Her bir elemanında keyleri string, value leri dynamic map olan bir liste oluşturun. Bu listedeki her bir eleman il adını, ilçe sayısını, plaka kodunu tutsun. Sonrasında bu listeyi okunaklı bir şekilde yazdırın.
 *Örnek listenin 1. elemanında bulunan il ankara,plaka kodu: 06, ilçe sayısı:10
 * 
 * 4-5 elemanlı iki farklı liste oluşturun. Elemanlar 0-50 ye rastgele şekilde oluşturulsun bu elemanları tek bir listeye aktarın 
 * Oluşan son listenin elemanlarının karelerini tutan set yapısını olusturup ekrana yazdırın
 * 
 * 
 * 5-Kullanıcıdan aldığınız integer pozitif sayıları bir listede tutun, kullanıcı 0 değerini girdiğinde girilen sayıların ortalamasını ekrana yazdırın
 */

void main(List<String> args) {
  //func1();
  //func2();
  //func3();
  //func4();
  func5();
}

/**
 * * 5-Kullanıcıdan aldığınız integer pozitif sayıları bir listede tutun, kullanıcı 0 değerini girdiğinde girilen sayıların ortalamasını ekrana yazdırın
 */

void func5() {
  int input = 0;
  List<int> myList = [];

  while (true) {
    print("Ortalamasi alinmasi icin sayi giriniz(ort almak icin 0 gir):");
    input = int.parse(stdin.readLineSync()!);

    if (input != 0)
      myList.add(input);
    else {
      break;
    }
  }
  int total = 0;
  for (int each in myList) total += each;

  print("Girilen sayilar");
  print(myList);
  print("Girilen sayilarin ortalamasi: ${total / myList.length}");
}

/**
 * 4-
 * 5 elemanlı iki farklı liste oluşturun. Elemanlar 0-50 ye rastgele şekilde oluşturulsun bu elemanları tek bir listeye aktarın 
 * Oluşan son listenin elemanlarının karelerini tutan set yapısını olusturup ekrana yazdırın
 */

void func4() {
  List<int> liste1 = List.filled(5, 0);
  List<int> liste2 = List.filled(5, 0);

  for (int i = 0; i < 5; i++) {
    liste1[i] = Random().nextInt(51);
    liste2[i] = Random().nextInt(51);
  }
  var list = [...liste1, ...liste2];

  var set = <int>{};

  for (int each in list) {
    set.add(each * each);
  }
  print(set);
}

/**
 * 3-Her bir elemanında keyleri string, value leri dynamic map olan bir liste oluşturun. Bu listedeki her bir eleman il adını, ilçe sayısını, plaka kodunu tutsun. Sonrasında bu listeyi okunaklı bir şekilde yazdırın.
 *Örnek listenin 1. elemanında bulunan il ankara,plaka kodu: 06, ilçe sayısı:10
 */
void func3() {
  List<Map> myMaps = List.empty(growable: true);

  myMaps.add({"İl": "Ankara", "Plaka Kodu": "06", "İlce Sayisi": 10});
  myMaps.add({"İl": "Adana", "Plaka Kodu": "01", "İlce Sayisi": 8});
  myMaps.add({"İl": "Balikesir", "Plaka Kodu": "10", "İlce Sayisi": 6});
  myMaps.add({"İl": "Bursa", "Plaka Kodu": "16", "İlce Sayisi": 7});
  myMaps.add({"İl": "Istanbul", "Plaka Kodu": "34", "İlce Sayisi": 23});

  for (int i = 0; i < myMaps.length; i++) {
    String str = "Listenin ${i + 1}. elemaninda bulunan il: " +
        "${myMaps[i]["İl"]}, plaka kodu: ${myMaps[i]["Plaka Kodu"]}, " +
        "ilce sayisi: ${myMaps[i]["İlce Sayisi"]}";
    print(str);
  }
}

/*
*2- Keyleri String , değerleri dynamic olan bir map oluşturun. Bu map yapısında 
 * bilgisayarınızın işlemci çekirdek sayısını, ram miktarını ve ssd olup olmadıgı
 * bilgisini tutun ve ekrana yazdırın */
void func2() {
  var myMap = <String, dynamic>{};
  myMap["Cekirdek Sayisi"] = 16;
  myMap["Ram Miktari"] = "16 GB";
  myMap["SSD"] = true;

  for (var eachEntry in myMap.entries) {
    print("Key: " + eachEntry.key + " Value: " + eachEntry.value.toString());
  }
}

/**
 * 1- Şehirleri tutan bir liste oluşturun, 4 tane il ekleyip sırasıyla yazdırın
 */
void func1() {
  List<String> sehirler = List.empty(growable: true);
  sehirler.add("Ankara");
  sehirler.add("İstanbul");
  sehirler.add("Adana");
  sehirler.add("Bursa");
  for (String each in sehirler) {
    print(each);
  }
}








/*
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
*/