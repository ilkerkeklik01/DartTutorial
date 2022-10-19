void main(List<String> args) {
  int toplam = sayilariTopla(1, 2);
  print("Toplam: $toplam");

  int toplam2 = sayilariTopla2(7, s2: 4, s3: 2);
  print("Toplam2: $toplam2");

  print("Hacim: " + hacimHesapla(en:20,yukseklik: 2).toString());
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

int hacimHesapla({int en=1,int boy=1,int yukseklik=1}) {
  return en * boy * yukseklik;
}
