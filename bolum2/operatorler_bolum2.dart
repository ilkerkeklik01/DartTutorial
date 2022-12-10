

void main(List<String> args) {
//Arttirma azaltma operatorleri

  int s1 = 2;

  print(s1++);
  print(++s1);

//İşlem önceliği

  int s2 = 10;
  int s3 = 5;

  int sonuc = 0;

  sonuc = (s2 + s3 * 3 - s3) - s2 * 5 + s2;
  print(sonuc);

  print((s2 * s3 + 4 / 2) + s2++ * s3 + (++s2));
  

}
