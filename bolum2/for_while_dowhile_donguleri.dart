void main(List<String> args) {
  //for dongusu

  for (int i = 0; i <= 9; i++) {
    print(i);
  }

  List isimListesi = ["emre", "hasan", "ali"];

  for (String gecici in isimListesi) {
    print(gecici);
  }

  //while dongusu
  int sayac = 0;

  while (sayac < 3) {
    print("sayac: $sayac");
    sayac++;
  }

  //do while dongusu
  int sayac2 = 5;
  do {
    print("okunan sayac degeri $sayac2");
    sayac2++;
  } while (sayac2 < 5);

//break ve continue yi biliyorsun

  
}
