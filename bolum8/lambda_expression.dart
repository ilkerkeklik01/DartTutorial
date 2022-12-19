/**
 * Lambda : ismi olmayan fonksiyonlardir. Dartta her fonksiyon aslinda bir nesnedir
 * 
 */

//fonksiyonlari bir degiskene atayabiliriz ve kullanmak icin parantezleri de kullanmaliyiz
void main(List<String> args) {
  Function func1 = (int a, int b) {
    int toplam = a + b;
    print(toplam);
  };
  String isim = "emre";

  print(func1);
  func1; // hicbise yapmiyo
  //func1();  hata veriyor
  func1(2, 7);

  var f2 = (int s) => 2 * s;
  //bunlar ayni seyler
  var f3 = (int s2) {
    return s2;
  };

  var sayi = f2(2);
  print(sayi);
  print(f3(6));
}

//Normal Bir Fonksiyon
void sayilariTopla(int a, int b) {
  int toplam = a + b;
  print(toplam);
}
