void main(List<String> args) {
  print("Internetten kisi verisi getirilecek");

  kisiyleIlgiliIslemler();

  print("Baska isler yapilacak");

  print("Islem bitti");
}

void kisiyleIlgiliIslemler() async{
   String kisiVerisi = await kisiVerisiniGetir();
  print(kisiVerisi.length);
}

Future<String> kisiVerisiniGetir() {
  return Future<String>.delayed(Duration(seconds: 3), () {
    return "Kisi adi: Emre ve id: 100";
  });

}
