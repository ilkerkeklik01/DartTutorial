import 'dart:math';

void main(List<String> args) {
  print("${func1(20)}");

  print("Daire alani : ${daireAlanHesapla(4, 3)}");

  ucgeninturu(k3: 7, k1: 7);
}

//Cevap1
int func1(int num) {
  int sum = 0;
  for (int i = 0; i < num; i++) {
    if (i % 2 == 0) sum += i;
  }
  return sum;
}

//Cevap2
double daireAlanHesapla(int radius, [double pi = 3.14]) {
  return pi * pow(radius, 2);
}

//Cevap3
void ucgeninturu({int k1 = 1, int k2 = 1, int k3 = 1}) {
  if (k1 == k2 && k1 == k3)
    print("eşkenar üçgen");
  else if (k1 != k2 && k2 != k3 && k1 != k3)
    print("Çeşitkenar üçgen");
  else
    print("ikizkenar üçgen");
}
