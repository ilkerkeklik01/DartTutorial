/**
 * Closure özel bir fonksiyondur, closure ile bir üst kapsamdaki değişkenlerin değerlerini değiştirebiliriz. 
 */

//lexical variable scope
void main(List<String> args) {
  var mainDegiskeni = 1;

  void a() {
    var aDegiskeni = 2;

    void b() {
      var bDegiskeni = 3;
      print(aDegiskeni);
      print(mainDegiskeni);
    }
  }

  //topla fonksiyonu bir fonksiyon dönderip bunu i değişkenine atıyor ve i bir fonkrsiyon
  var i = topla(4);
  print(i);

  //k değişkeni i fonskyionunun return ettiği integer değeridir
  var k = i(5);
  print(k);


}

//Bu fonksiyon başka bir fonksiyonu return etti
Function topla(int eleman) {
  return (int deger) => deger * eleman;
}
