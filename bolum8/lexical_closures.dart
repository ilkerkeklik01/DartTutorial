/**
 * Closure ozel bir fonksiyondur, closure ile bir ust kapsamdaki degiskenlerin degerlerini degistirebiliriz.
 */

//lexical variable scope
void main(List<String> args) {
  var mainDegiskeni = 1;

  void a() {
    var aDegiskeni = 2;

    void b() {
      var bDegiskeni = 3;
      print(aDegiskeni);
      print(bDegiskeni);
    }
  }

  var dondurulenFonksiyon = topla(3); //3 eleman degiskenine atanir

  var sonuc = dondurulenFonksiyon(5); //5 deger degiskenine atanir

  print(sonuc);
}

Function topla(int eleman) {
  return (int deger) => deger * eleman;
}
