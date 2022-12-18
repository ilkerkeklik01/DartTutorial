/**
 * Sınıflarımızda nesne üretmeden bazı değişkenlere veya metotlara erişmek isteyeibliriz.Burada karşımıza static kavramı cıkar
 * 
 * Static kullanarak nesne degil, değişken ve metotlar oluşturulabilir
 * Bir sınıfta tanımlananan metot ve değişkenlere erişmek için mutlaka o sınıftan nesne üretip onun üzerinden erişmemiz gerekmekteydi. Ama biz bunları static olarak tanımlarsak artık nesne üretmeden bu değerlere erişebilir ve kullanabiliriz. Artık onlar nesnelerin değil sınıfın metot ve değişkenleridir
 * 
 * 
 *  Ayrıca static değişkenler kullanılana kadar deger almazlar, bellekte yer ayrılmaz 
 * static methodların içinde this anahtar kelimesi yer almaz
 * 
 * static metotlar içinden nesneye özgü alanlar erişilemezken,nesneye özgü metot içinden static değerlere ve metotlara erişilebilir
 */

void main(List<String> args) {
  Matematik m1 = Matematik(50, 20);
  m1.topla();
  m1.cikar();

  print(Matematik.PI);
  Matematik.sinifAdiniSoyle();

  Matematik m2 = Matematik(10, 3);
  m2.topla();
  m2.cikar();

  print(Matematik.toplamIslemSayisi);
}

class Matematik {
  //instance variables
  int birinciSayi = 0;
  int ikinciSayi = 0;
  static int toplamIslemSayisi = 0;

  //class Variable
  static final double PI = 3.14;
  static void sinifAdiniSoyle() {
    // topla(); instance members cannot be accesed from a static method
    print("Sinif adi: Matematik");
  }

  Matematik(this.birinciSayi, this.ikinciSayi);

  void topla() {
    print("Toplam: " + (birinciSayi + ikinciSayi).toString());
    toplamIslemSayisi++;
    PI; // static members can be accesed from a non-static method
  }

  void cikar() {
    print("Fark: " + (birinciSayi - ikinciSayi).toString());
    toplamIslemSayisi++;
  }
}
