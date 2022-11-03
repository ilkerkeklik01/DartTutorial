void main(List<String> args) {
  ucgenBul(kenar1: 2, kenar2: 3, kenar3: 1);
}

//Cevap1
int func1(int s1) {
  int res = 0;
  for (int i = 0; i < s1; i++) {
    if (i % 2 == 0) res += i;
  }

  return res;
}

//Cevap2
double daireAlani(int radius, [double pi = 3.14]) {
  return pi * radius * radius;
}

//Ce  vap3
void ucgenBul({int kenar1 = 1, int kenar2 = 1, int kenar3 = 1}) {
  if (kenar1 == kenar2 && kenar1 == kenar3) {
    print("Eşkenar Üçgen");
  } else if (kenar1 != kenar2 && kenar1 != kenar3 && kenar2 != kenar3) {
    print("Çeşitkenar Üçgen");
  } else {
    print("İkizkenar Üçgen");
  }
}
