import 'dart:math';

/**
 * Abstract(Soyut) sınıf : Sınıflar arasında soyutlama yapmak için kullanılır
 * Abstract sınıflardan nesne üretilemez, abstract sınıflarda normal ve abstract metotlar olabilir
 * abstract methodlar alt sınıflarca override edilmek zorundadır.Aksi takdirde o sınıflar da abstract olmalıdır
 * 
 * Bir sınıfta bir tane abstract metot varsa o sınıf mutlaka abstract sınıf olmalıdır
 *
 */

void main(List<String> args) {
  GeometrikSekil gs = Kare(7);
  gs.kendiniTanit();

  Dikdortgen dikdortgen = Dikdortgen(3, 5);
  dikdortgen.kendiniTanit();
  Cember cember = Cember(5);
  cember.kendiniTanit();
}

abstract class GeometrikSekil {
  double alanHesapla();
  double cevreHesapla();

  void selamla() {
    print("Ben geometrik şekil sinifindanim");
  }

  void kendiniTanit();
}

class Dikdortgen extends GeometrikSekil {
  double kenar1;
  double kenar2;

  Dikdortgen(this.kenar1, this.kenar2);

  @override
  double alanHesapla() {
    return kenar1 * kenar2;
  }

  @override
  double cevreHesapla() {
    return (kenar1 + kenar2) * 2;
  }

  @override
  void kendiniTanit() {
    String str =
        "Ben Dikdörtgen nesnesiyim. Kenar1: $kenar1, Kenar2: $kenar2 ve Alan: ${alanHesapla()}, Cevre: ${cevreHesapla()}";
    print(str);
  }
}

class Kare extends Dikdortgen {
  Kare(double kenar1) : super(kenar1, kenar1);

  @override
  void kendiniTanit() {
    super.kendiniTanit();
    print("Ayrica ben Kareyim");
  }
}

class Cember extends GeometrikSekil {
  double radius;
  static final double pi = 3.14;
  Cember(this.radius);

  @override
  double alanHesapla() {
    return pi * pow(radius, 2);
  }

  @override
  double cevreHesapla() {
    return 2 * pi * radius;
  }

  @override
  void kendiniTanit() {
    print(
        "Ben bir Cemberim. Yaricap: $radius ve Alan: ${alanHesapla()}, Cevre: ${cevreHesapla()}");
  }
}
