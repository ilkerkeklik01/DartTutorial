/**
 * Lambda: ismi olmayan fonksiyonlardır . Dartta her fonksiyon aslında bir nesnedir.
 */

void main(List<String> args) {
  Function fonksiyon1 = (int a, int b) {
    int toplam = a + b;
    print("Lambda Fonksiyonu toplam: ${a + b}");
  };

  fonksiyon1(2, 7);

  var f2 = (int s) => s * 2;

  var f3 = (int s2) {
    return s2 * 2;
  };

  var sayi = f2(5);
  print(sayi);
  print(f3(6));
}

//Normal bir fonksiyon
void sayilariTopla(int a, int b) {
  int toplam = a + b;
  print(toplam);
}
