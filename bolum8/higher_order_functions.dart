/**
 * 
 * Higher order functions: bir fonksiyonu paramtre olarak alan veya geriye fonksiyon döndüren fonksiyonlardır.
 * İkisi aynı anda yapılabilir
 */

void main(List<String> args) {
  List<int> liste = [1, 2, 3];

/*
  liste.forEach((element) {
    print("Elementin iki kati : ${element * 2}");
  });
*/

/*
  liste.forEach(callback); 
  */
  //for each fonksiyonu parametre olarak void döndüren parametre olarak integer bir sayı alan fonksion alır.
  //parameters
  kendiForEachYapim(liste, (int eachElement, int index) {
    print(
        "KendiForEachYapim elementin iki kati : ${eachElement * 2}, index: $index");
  });
}
 
void kendiForEachYapim(List<int> list, void Function(int, int) func) {
  for (int i = 0; i < list.length; i++) {
    func(list[i], i);
  }
}

void callback(int element) {
  print("Callback elementin iki kati: ${element * 2}");
}
