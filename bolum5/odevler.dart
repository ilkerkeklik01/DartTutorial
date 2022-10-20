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

  void alanHesapla() {
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
