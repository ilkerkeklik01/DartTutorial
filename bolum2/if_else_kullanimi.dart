void main(List<String> args) {
  int sayi1 = 12;
  num sayi2 = 11;
  //var sayi3 = 14;
 
  if (sayi1 > sayi2) {
    print('$sayi1 $sayi2\'den daha büyüktür');
  } else if (sayi1 < sayi2) {
    print("$sayi2 $sayi1'den daha büyüktür");
  } else {
    print("$sayi1 ve $sayi2 birbirine eşittir");
  }
  print('*************************************************');

  int notDegeri = 69;

  if (notDegeri >= 90) {
    print("AA");
  } else if (notDegeri >= 80) {
    print("BA");
  } else if (notDegeri >= 70) {
    print('BB');
  } else {
    print('FF');
  }

  


}
