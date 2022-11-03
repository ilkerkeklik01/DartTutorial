void main(List<String> args) {
  int sayi1 = 9;
  var sayi2 = 7;
  int kucukSayi;

  sayi1 < sayi2 ? kucukSayi = sayi1 : kucukSayi = sayi2;

  print('Küçük sayi: $kucukSayi');

  String? ad = null;
  String? soyad = 'keklik';
  String? mesaj;

  mesaj = ad ?? soyad ; // ad null degilse adı null ise soyadı koy
  print('Merhaba $mesaj');

  

}
