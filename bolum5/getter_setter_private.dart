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
} */
