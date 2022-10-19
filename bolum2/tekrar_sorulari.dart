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
