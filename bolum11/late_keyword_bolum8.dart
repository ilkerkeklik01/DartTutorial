/**
 * Bazen degiskenler veya propertyler non-nullable olmalidir ama ilk deger atamasi hemen gerceklesmeyecektir. Bu durumlarda late anahtar kelimesi kullanilir.
 * 
 * Bir degiskenin onune late yazdiginizda Dart'a sunlari soylemis olursunuz:
 * 1- Bu degiskene bir deger atama.
 * 2- Degeri sonradan atayacaksin.
 * 3- Bana guven, bu degeri sen okumadan once initialize edecegim.
 * 
 * Eger degiskene deger atamadan okumaya calisirsaniz hata alirsiniz.
 */

class Yemek {
  late final String tanim;
  late final int fiyat;

  Yemek(int fiyat) {
    this.fiyat = fiyat;
  }

  void setTanim(String tanim) {
    this.tanim = tanim;
  }
}

void main(List<String> args) {
  final yemegim = Yemek(100);

  try {
    print(yemegim.tanim);
  } catch (E) {
    print(E);
  }
  yemegim.setTanim("kuru fasulye");
  print(yemegim.tanim);

  try {
    yemegim.setTanim("kuru fasulye");
    print(yemegim.tanim);
  } catch (E) {
    print(E);
  }
}
