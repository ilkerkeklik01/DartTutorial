//Nesneye Yönelimli Programlamaya giriş

/**
 * Sınıf: Kendi veri türlerimiz veya soyut olan taslaklara denir.Kendi içinde değişkenlere ve metotlara sahiptir
 * Istediğimiz bir nesnenin veya varlığın bilgisayar dillerinde tanımıdır
 * 
 * Nesne : Olusturulan soyut ve taslak olan sınıflardan üretilen örneklere denir.
 * Nesnelere sınıfın sahip olduğu değerlere ulaşmak için kullandığımız referanslardır diyebiliriz
 * 
 * Sınıf eğer bir uzaktan kumandalı araba ise nesne onu kontrol ettiğimiz kumandadır.
 */

void main(List<String> args) {
  Ogrenci emre = Ogrenci();
  emre.ogrAd = "Emre Altunbilek";
  emre.ogrNo = 292;
  emre.aktifMi = true;

  Ogrenci hasan = Ogrenci();
  Ogrenci ayse = Ogrenci();

  var kemal = Ogrenci();
  dynamic yunus = Ogrenci();

  
}

class Ogrenci {
  //instance variables
  int ogrNo = 1;
  String ogrAd = "";
  bool aktifMi = true;

  void dersCalis() {
    print("Ogrenci ders calisiyor");
  }
}









/*
void main(List<String> args) {
  Ogrenci emre = Ogrenci();
  emre.aktifMi = true;
  emre.ogrIsim = "Emre Altunbilek";
  emre.ogrNo = 532;

  Ogrenci hasan = Ogrenci();
  var kemal = Ogrenci();
  
  dynamic yunus = Ogrenci();
  
  
}

class Ogrenci {
  //instance variables
  String ogrIsim = '';
  int? ogrNo;
  bool? aktifMi;

  void dersCalis() {
    print("Ogrenci ders calisiyor");
  }
}
*/