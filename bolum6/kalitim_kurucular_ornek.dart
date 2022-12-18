void main(List<String> args) {
  Kisi emre = Kisi("emre", 34);
  Calisan hasan = Calisan("hasan", 23, 1000);
  emre.kendiniTanit();
  hasan.kendiniTanit();
}

class Kisi {
  String isim;
  int yas;

  Kisi(this.isim, this.yas);

  void kendiniTanit() {
    print("Kisi --> Isim: $isim, Yas: $yas");
  }
}

class Calisan extends Kisi {
  int maas;

  Calisan(String isim, int yas, this.maas) : super(isim, yas);

  @override
  void kendiniTanit() {
    // TODO: implement kendiniTanit
    print("Calisan --> Isim: $isim, Yas: $yas, Maas: $maas");
  }
}
