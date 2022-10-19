void main(List<String> args) {
  cevreyiHesapla(5, 5);
  print(alanHesapla(5, 5));


}

void cevreyiHesapla(int en, int boy) {
  print("${2 * en + 2 * boy}");
}

double alanHesapla(int en, int boy) {
  double alan = (en*1.0 * boy);
  return alan;
}
