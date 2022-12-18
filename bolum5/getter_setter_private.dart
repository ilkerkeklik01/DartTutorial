import 'Veri_Tabani_Islemleri.dart';
import 'musteri.dart';

/**
 * private degisken ve fonnksiyonlar : Bir siniftaki degisken ve metotlari bazen erisime kapatmak isteyebiliriz. bu durumlarda _ isareti ile bunlari saklariz 
 * 
 * getter metotlar : sinif degiskenlerini okumak icin kullanilan ozel fonksiyonlardir.
 * Bu metotlarin amaci ozellikle private yani  dis dunyanin erisimine kapatilmis degiskenlerin gerekli oldugunda okunmasini saglamaktir
 * 
 * setter metotlar: sinif degiskenlerine veri atamak icin kullanilir. Bu metotlarin amaci ozellikle private yani dis dunyanin erisimine kapatilan degiskenlere veri atamaktir, ayrica veri atamasi yapilirken gerekli olan kontrollerin yapilmasi icin kullanilir.
 */

void main(List<String> args) {
  var db = VeriTabaniIslemleri();

  var db2 = VeriTabaniIslemleri.loginWithNameAndPassword("emre2", "123");

  bool sonuc = db.baglan();

  if (sonuc) {
    print("baglandim");
  } else
    print("baglanamadim");

//db. dedigimde _kullaniciAdi ve _sifre yi goremiyorum cunku private olarak tanimladim ve farkli dosyadan import ettim
//eger VeriTabaniIslemleri sinifini main fonksiyonumla ayni dosya icerisine yazsaydim erisebilirdim.

// _internetVarMi fonskiyonuna da buradan erisemiyorum

  Musteri m1 = Musteri(150);
  m1.bilgileriYazdir();
  m1.musteriNoAta = 350; //setter metotlarin kullanimi bu sekilde parantezler yok
  m1.bilgileriYazdir();
  print(m1.musteriNoSoyle);  //getter metotlarin kullanimi parantezler yoik
  print(m1.musteriNoSoyle2);  //getter metotlarin kullanimi parantezler yoik
}







/*
import 'Veri_Tabani_Islemleri.dart';
import 'musteri.dart'; //buraları import etmemiz gerekiyor

void main(List<String> args) {
  Musteri m1 = Musteri(123);
  Musteri m2 = Musteri(-232);

  m1.musteriNoGoster();
  m2.musteriNoGoster();

  m2.musteriNoAta =
      1; //setterlarda atama yaparken fonksiyon gibi parantezlere gerek yok
  m2.musteriNoGoster();
  print("m2 musteri no soyle ${m2.musteriNoSoyle}");

  VeriTabaniIslemleri db = VeriTabaniIslemleri();

  bool sonuc = db.baglan();

  VeriTabaniIslemleri db2 =
      VeriTabaniIslemleri.loginWithNameAndPassword("ilker", "123");

  if (sonuc) {
    print("Baglandı");
  } else {
    print("Baglanamadı");
  }
}

/* class VeriTabaniIslemleri {
  String _kullaniciAdi = 'emre'; //değişkenin isminin başına _ koyarak private yaparız
  //Ama hala main classta bu degerlere erişip değiştirebiliyorum çünkü aynı dosyanın içerisindeler
  String _sifre = "123456";

  bool baglan() {
    if (_kullaniciAdi == 'emre' && _sifre == "123456") {
      return true;
    }
    return false;
  }
} 
*/
*/
