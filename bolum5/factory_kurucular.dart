void main(List<String> args) {

//Factory sayesinde kurucu metotların içinde return ifadesi kullanabiliyoruz

  var emre = Ogrenci(1, 'emre');
  var hasan = Ogrenci.adsiz('Hasan');

  var ayse = Ogrenci.factoryKurucusu(-3, 'Ayşe');
  print(ayse);
   


}

int toplam() {
  return 3 + 5;
}

class Ogrenci {
  int id = 0;
  String isim = '';

  Ogrenci(this.id, this.isim) {
    print("Varsayılan kurucu calıstı");
  }

  Ogrenci.adsiz(this.isim) {
    print("Id olmayan kurucu calsıtı");
  }

  factory Ogrenci.factoryKurucusu(int id, String isim) {
    if (id < 0) {
      return Ogrenci(9999, isim);
    } else
      return Ogrenci(id, isim);
  }

  @override
  String toString() {
    // TODO: implement toString
    return super.toString() + "isim: $isim, id: $id";
  }
}//Ogrenci class end
