void main(List<String> args) {
  cevreyiHesapla(5, 5);
  print(alanHesapla(5, 5));
  print("hacim ${hacimHesapla(10, 1, 1)}");
}

void cevreyiHesapla(int en, int boy) {
  print("${2 * en + 2 * boy}");
}

double alanHesapla(int en, int boy) {
  double alan = (en * 1.0 * boy);
  return alan;
}

double hacimHesapla(int en, int boy, int genislik) {
  return en * boy * genislik * 1.0;
}
