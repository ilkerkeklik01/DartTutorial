import 'dart:math';

/**
 * Soru1--> 3 tane double değişken olusturup bunların ortalamasını yazdıran program yazınız
 * Soru2--> Kenarlarını girdiğiniz üçgenin çeşidini yazdıran program yazınız
 * Soru3--> Vize ve final notlarını alıp dersi geçip geçmediğini gösteren program yazınız
 * (geçme notu alt değeri 50 vizenin %40 finalin %60 ıalınır)
 * 
 * Soru4--> Kendi adınızı ekrana bastıran uygulamayı tüm döngülerle yapınız
 * 
 * Soru5-->1 den 100 e kadar olan ve 15 ile tam bölünebilen sayıların karelerini ekrana yazdırınız.
 * Soru6-->Tanımlanan int bir sayının faktöriyelini bulan uygualamayı yazınız.
 * 
 */

void main(List<String> args) {
  //cozum1();
  //cozum2();
  //cozum3();
  //cozum4();
  //cozum5();
  //cozum6();
  print(cozum6_2(6));
}

int cozum6_2(int n) {
  if (n == 0) return 1;

  return n * cozum6_2(n - 1);
}

void cozum6() {
  int num = 4;
  int fun = 1;

  for (int i = num; i > 1; i--) {
    fun *= i;
  }
  print(fun);
}

void cozum5() {
  for (int i = 1; i < 100; i++) {
    if (i % 15 == 0) print(pow(i, 2));
  }
}

void cozum4() {
  print("for döngüsü");
  for (int i = 0; i <= 4; i++) {
    print("İlker Keklik1");
  }
  print("while döngüsü");
  int c = 0;
  while (c < 5) {
    print("İlker Keklik2");
    c++;
  }

  print("do while dongusu");
  c = 0;
  do {
    print("İlker Keklik3");
    c++;
  } while (c < 5);
}

void cozum3() {
  int vizeNotu = 60;
  int finalnotu = 40;

  double not = vizeNotu * 40 / 100 + finalnotu * 60 / 100;

  print("Not: $not");
  if (not >= 50) {
    print("Geçti");
  } else
    print("Kaldı");
}

void cozum2() {
  int k1 = 3;
  int k2 = 3;
  int k3 = 3;

  if (k1 == k2 && k2 == k3) {
    print("Eşkenar Üçgen");
  } else if (k1 != k2 && k1 != k3 && k2 != k3) {
    print("Çeşitkenar Üçgen");
  } else
    print("İkizkenar üçgen");
}

void cozum1() {
  double d1 = 2;
  double d2 = 5;
  double d3 = 7;

  double ort = (d1 + d2 + d3) / 3;
  print("Ortalama : $ort");
}






/*
import 'dart:math';
main(List<String> args) {
//Cevap 1

  double s1 = 4.2;
  double s2 = 3.1;
  double s3 = 7.4;

  double ort = s1 + s2 + s3;
  ort /= 3;

  print("ortalama: $ort");

  print("***************************************");

  //Cevap 2

  int kenar1 = 4, kenar2 = 4, kenar3 = 4;

  if (kenar1 == kenar2 && kenar1 == kenar3) {
    print("eşkenar üçgen");
  } else if (kenar1 != kenar2 && kenar1 != kenar3 && kenar2 != kenar3) {
    print("çeşitkenar üçgen");
  } else {
    print("ikizkenar üçgen");
  }
  print("***************************************");

  //Cevap 3

  int vizeNotu = 40, finalNotu = 50;
  double a = (vizeNotu * 2 / 5 + finalNotu * 3 / 5);
  print(a);
  print(a >= 50 ? "Geçti" : "Kaldı");

  print("***************************************");

  //Cevap 4
  print("for loop");
  for (int i = 0; i < 5; i++) {
    print("ilker");
  }
  int i = 0;
  print("while loop");
  while (i < 5) {
    print("ilker");
    i++;
  }
  i = 0;
  print("do while loop");
  do {
    print("ilker");
    i++;
  } while (i < 5);

  print("***************************************");

  //Cevap 5

  for (int i = 1; i < 100; i++) {
    if (i % 15 == 0) {
      print(pow(i, 2));
    }
  }

  print("***************************************");

  //Cevap 6

  int x = 6;
  int result = 1;
  for (int i = 1; i <= x; i++) {
    result *= i;
  }
  print(result);

  print("***************************************");
}
*/