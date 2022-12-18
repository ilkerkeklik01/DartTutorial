

void main(List<String> args) {
  //var emre = Asker();
  Er hasan = Er("hasan", 32);
  hasan.selamla(); //dynamic binding
  hasan.memleketDegistir("asd");
  print(hasan.memleket);
}

class Asker {
  String ad = "Varsayilan";
  int yas = 0;
  String memleket = "Ankara";
  Asker(this.ad, this.yas) {
    print("Asker sinifinin kurucusu çalişti");
  }
  void selamla() {
    print("Merhaba benim adim $ad, yasim $yas");
  }
}

class Er extends Asker {
  Er(String ad, int yas) : super(ad, yas) {
    //her zaman görünmeyen bir super vardır : super() seklinde

    print("Er sinifinin kurucusu çalişti");
  }
  void memleketDegistir(String str) {
    super.memleket = str;
  }

  @override
  void selamla() {
    print("Er sinifinden selamlar");
  }
}
