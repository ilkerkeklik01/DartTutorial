void main(List<String> args) {
  print("toplam : ${sayilariTopla(1, 2, 3)}");
  print("\n");

  print("toplam2 : ${sayilariTopla2(1, 2)}");
  print("toplam2 : ${sayilariTopla2(1)}");
  print("toplam2 : ${sayilariTopla2(1, 2, 3)}");

  print("\ntoplam3 : ${sayilariTopla3(7, s3: 1, s1: 4)}");

  print("\nHacim: ${hacimHesapla(en: 2, boy: 3)}");
}

//required parameter
int sayilariTopla(int s1, int s2, int s3) {
  return s1 + s2 + s3;
}

//Optional parameter              //eğer girilmezse 0 atasın
int sayilariTopla2(int s1, [int s2 = 0, int s3 = 0]) {
  return s1 + s2 + s3;
}

//Optional Named        (sayi4 mutlaka verilmeli diğerlerinin girilmesi ve sırası opsiyonel)
int sayilariTopla3(int sayi4, {int s1 = 0, int s2 = 0, int s3 = 0}) {
  return sayi4 + s1 + s2 + s3;
}
//Optional Named and Optional Parameter cannot use in the same function

int hacimHesapla({en=1, boy=1, yukseklik=1}) => (en * boy * yukseklik);



/*
void main(List<String> args) {
  int toplam = sayilariTopla(1, 2);
  print("Toplam: $toplam");

  int toplam2 = sayilariTopla2(7, s2: 4, s3: 2);
  print("Toplam2: $toplam2");

  print("Hacim: " + hacimHesapla(en: 20, yukseklik: 2).toString());

  
}

//func with optional parameters
//s3 veya s2 girilmezse 0 atar
int sayilariTopla(int s1, [int s2 = 0, int s3 = 0]) {
  return s1 + s2 + s3;
}

//optional named
//s4 mutlaka verilmeli
//digerlerinin sırasını kendin belirtebilirsin ve istersen yazmayabilirsin
int sayilariTopla2(int s4, {int s1 = 0, int s2 = 0, int s3 = 0}) =>
    s4 + s1 + s2 + s3;

//bir fonksiyonda hem {} ile optional name özelliği
//hem [] ile optional parameter özelliği kullanılamaz

int hacimHesapla({int en = 1, int boy = 1, int yukseklik = 1}) {
  return en * boy * yukseklik;
}
*/