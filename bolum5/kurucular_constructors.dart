/**
 * Farklı türlerde constructor oluşturabilirz
 * 1-Default : Sınıf adının yanina () dediğimizde çalışan ve de sınıf adıyla aynı olan metottur. Ogrenci ogr = Ogrenci(); dediğimizde aslında default constructor çalışır. Default constructor sınıfın içinde eğer elle belirtilmezse Ogrenci(){} şeklinde tanımlı boş bir metottor.
 * Istersek bunu çeşitli durumlar için kullanabiliriz. Bu metot her nesne üretiminde ilk çalışan metottur.
 * Kurucu metotların geri dönüş tipi olmaz.
 * 
 * 2- Paramtreli Constructor: Aslında default constructorın parametre almış haline denir. Ogrenci emre = Ogrenci("emre");
 * 
 * Dart dilinde method overloading olmadığı için sadece ya default yapıcı yada parametreli yapıcı kullanılabilir.
 * 
 * 3-Named(isimlendirilmiş) : Sınıf içerisinde                                      
 *  SinifAdi.methodAdi(){
 *    //statements
 *  
 *  }
 * İstediğin sayıda named constructor kullanabilirsin
 * 
 */

void main(List<String> args) {
  /*
  Araba honda = Araba();
  honda.marka = "Honda";
  honda.modelYili = 2020;
  honda.otomatikMi = true;
  honda.bilgileriSoyle();

  var renoult = Araba();
  renoult.bilgileriSoyle();
*/
  Araba honda = Araba(2020, "honda", true);

  var renoult = Araba(2013, "reno", false);

  var bmw = Araba(2021, "BMW", true);
  bmw.bilgileriSoyle();
  bmw.yasHesapla();

  var citroen = Araba.Markasiz(2018, true);

  var toyota = Araba.Modelsiz("toyota", false);

  citroen.bilgileriSoyle();
  citroen.yasHesapla();
  toyota.bilgileriSoyle();
  // toyota.yasHesapla(); yasHesapla metotunda null u kontrol etmek gerekir yoksa hata verir
  

}

class Araba {
  int? modelYili;
  String? marka;
  bool? otomatikMi;

/*
  Araba() {
    print("Kurucu metot tetiklendi!");
  } 
  */

/*
  Araba(int modelYili, String marka, bool otomatikMi) {
    this.modelYili = modelYili;
    this.marka = marka;
    this.otomatikMi = otomatikMi;
  }
*/
  //***************************************** */
  Araba(this.modelYili, this.marka, this.otomatikMi) {}

  //Named Constructor
  Araba.Markasiz(this.modelYili, this.otomatikMi) {}

  Araba.Modelsiz(this.marka, this.otomatikMi);

  void bilgileriSoyle() {
    print(
        "Araba'nin model yili: ${modelYili}, markasi: ${marka}, otomatik mi: ${otomatikMi}");
  }

  void yasHesapla() {
    print("Arabanin yasi ${2022 - this.modelYili!}");
  }
}

/*
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
*/
