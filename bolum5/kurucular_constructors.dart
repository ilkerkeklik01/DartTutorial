void main(List<String> args) {
  Araba araba1 = Araba("Honda", 2013, false);

  araba1.bilgileriSoyle();
  araba1.yasHesapla();

  var citroen = Araba.markasizKurucu(false, 2008);
  var suzuki = Araba.modelYiliOlmayan(true, "Suzuki");
  suzuki.yasHesapla();
}

class Araba {
  int? modelYili;
  String? marka;
  bool? otomatikMi;

/*
  Araba(){

  }
  */

  //Şimdilik birden fazla constructor olusturamıyorum

  Araba(String marka, int modelYili, bool otomatikMi) {
    this.marka = marka;
    this.modelYili = modelYili;
    this.otomatikMi = otomatikMi;
  }
  
  Araba.markasizKurucu(this.otomatikMi, this.modelYili);


  Araba.modelYiliOlmayan(bool otomatikMi, String marka) {
    this.marka = marka;
    this.otomatikMi = otomatikMi;
  }

  void bilgileriSoyle() {
    print(
        "Aracın markası: $marka, aracın model yılı: $modelYili, arac otomatik mi: $otomatikMi");
  }

  void yasHesapla() {
    if (this.modelYili == null) {
      modelYili = 5000;
    }

    print(
        "Arabanın yasi: ${2022 - (this.modelYili)!}"); //null olmicak rahat ol diyorum arkadaşa
  }
}
