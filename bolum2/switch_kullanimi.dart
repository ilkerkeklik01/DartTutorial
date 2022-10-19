void main(List<String> args) {
  String harfNotu = 'asd ';

  switch (harfNotu) {
    case 'AA':
      print("Notunuz 90-100 aralıgındadır");
      break;

    case 'BA':
      print("Notunuz 80-90 aralıgındadır");
      break;

    case 'BB':
      print("Notunuz 70-80 aralıgındadır");
      break;

    case 'CB':
      print("Notunuz 60-70 aralıgındadır");
      break;

    case 'CC':
      print("Notunuz 50-60 aralıgındadır");
      break;

    case 'FF':
      print("Notunuz 50 den düşüktür");
      break;

    default:
      print('Hatalı değer girildi');
      break;
  }

  int yas = 34;

  switch (yas) {
    case 18:
      print('Yasiniz 18');
      break;

    case 22:
      print('Yasiniz 22');
      break;

    case 33:
      print('Yasiniz 33');
      break;

    case 12:
      print('Yasiniz 12');
      break;

    default:
      print("Bilinmeyen deger girdiniz");
      break;


  }
}
