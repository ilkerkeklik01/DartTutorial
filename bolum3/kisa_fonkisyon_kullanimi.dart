import 'dart:math';

void main(List<String> args) {
  sayilariTopla();
  print(sayilariCikar(15, 4));
  print("Carpim: " + sayilariCarp(2, 3).toString());
  print("Max sayi: " + maxOlanSayi(12, 7).toString());
  print("Max sayi2: " + maxOlanSayi2(15, 23).toString());
}

void sayilariTopla() {
  int sayi1 = 10, sayi2 = 5;
  print("Toplam: ${sayi1 + sayi2}");
}

int sayilariCikar(int s1, int s2) {
  return s1 - s2;
}

int sayilariCarp(int s1, int s2) => (s1 * s2);
//Kısa gösterim               Fat Arrow

int maxOlanSayi(int s1, int s2) {
  if (s1 > s2)
    return s1;
  else
   return s2;
}

int maxOlanSayi2(int s1, int s2) => s1 > s2 ? s1 : s2;
//bu şekilde de kullabilir
