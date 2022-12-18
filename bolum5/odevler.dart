import 'dart:math';

import 'ogrenci.dart';
import 'cember_daire.dart';

/**
 * Soru 1: CemberDaire isimli sinifi olusturun. Bu sinifin yaricap alan kurucusu olsun. Ayrica cevre ve alanini hesaplayan metotlar olmali (pi sayisini 3.14 aliniz)
 * 
 * 
 * Soru 2: Ogrenci isimli sinifi olusturun. Bu sinifta ogrencinin id si  ve not degeri tutulmali. 100 elemanli bir listede id ve not degerlerini rastgele olusturarak bu ogrencileri saklayin ve bu ogrencileri yazdiran metotu yazin
 * 
 */

void main(List<String> args) {
  var cember1 = CemberDaire(1);
  print(cember1.area);
  print(cember1.cevre);

  List<Ogrenci> ogrenciler = List.filled(100, Ogrenci("-150", -1));

  for (int i = 0; i < ogrenciler.length; i++) {
    ogrenciler[i] =
        Ogrenci(Random().nextInt(1000).toString(), Random().nextInt(101));
  }
  int a = 0;
  for (Ogrenci each in ogrenciler) {
    print("Ogrenci id: ${each.getId}, Notu: ${each.getNot}");
    a++;
  }
  print(a);

  print("Ogrencilerin not ortalamasi: ${ogrencilerinOrt(ogrenciler)}");
}

double ogrencilerinOrt(List<Ogrenci> list) {
  int sum = 0;
  for (Ogrenci each in list) {
    sum += each.getNot;
  }
  return sum / list.length;
}










/*
import 'dart:math';

final double pi = 3.14;
void main(List<String> args) {
  CemberDaire d1 = CemberDaire(-1);
  CemberDaire d2 = CemberDaire(5);

  d1.cevreHesapla();
  d1.alanHesapla();
  d2.cevreHesapla();
  d2.alanHesapla();

  List<Ogrenci> tumOgrenciler = List.filled(5, Ogrenci(), growable: false);

  ogrenciListesiniDoldur(tumOgrenciler);

  ogrencileriYazdir(tumOgrenciler);

  print(
      "Ogrencilerin not ortalamalsı: ${ogrencilerinOrtalamasi(tumOgrenciler)}");
}

double ogrencilerinOrtalamasi(List<Ogrenci> ogrenciler) {
  double total = 0;
  for (Ogrenci each in ogrenciler) {
    total += (each.not! * 1.0);
  }
  return total / ogrenciler.length;
}

void ogrenciListesiniDoldur(List<Ogrenci> tumOgrenciler) {
  for (int i = 0; i < tumOgrenciler.length; i++) {
    tumOgrenciler[i] =
        Ogrenci(id: Random().nextInt(1000), not: Random().nextInt(100));
  }
}

void ogrencileriYazdir(List<Ogrenci> ogrenciler) {
  for (Ogrenci each in ogrenciler) {
    print(each);
  }
}

class CemberDaire {
  int? radius;

  CemberDaire(int radius) {
    _setRadius = radius;
  }

  void set _setRadius(int radius) {
    if (radius > 0) {
      this.radius = radius;
      return;
    }
    this.radius = 1;
  }

  void cevreHesapla() {
    print("Çemberin çevresi: ${2 * pi * radius!}");
  }

  void alanHesapla() { //dsad
    print("Dairenin alanı: ${pi * radius! * radius!}");
  }
}

class Ogrenci {
  int? id;
  int? not;

  Ogrenci({this.id = 1, this.not = 0});

  @override
  String toString() {
    // TODO: implement toString
    return "Ogrenci id: ${this.id}, Ogrenci not: ${this.not}";
  }
}
*/