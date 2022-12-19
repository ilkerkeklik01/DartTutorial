/**
 * Higher order functions : bir fonksiyonu parametre olarak alan veya geriye fonksiyon donduren fonksiyonlardir.
 * Tabi ikisi ayni anda da yapilabilir.
 */

void main(List<String> args) {
  List<int> liste = [1, 2, 3];

  // liste.forEach((element) {
  //   print("Element: $element");
  // });

  liste.forEach(callback);
  //forEach bir fonksiyon ve baska bir fonksiyonu parametre olarak aldi

  kendiForEachYapim(liste, (int deger,int index) {
    print("kendi for each degerim: $deger, index: $index");
  });
}

void kendiForEachYapim(List<int> list, Function callback) {
  int a = 0;
  for (int i in list) {
    callback(i, a++);
  }
}

void callback(int element) {
  print("Element: $element");
}
