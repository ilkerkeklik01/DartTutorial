/**
 * Dart dili, null deger almasi mumkun olmayan ama null deger alacakmis gibi belirtilen nullable tiplere non-nullable gibi davranir. Buna type promotion denir.
 * 
 * Dart tip sistemi, degiskenin nerede tanimlandigini ve nerede okundugunu surekli olarak analiz eder. Bir degisken null deger alacak sekilde olusturulmus olabilir, ama okunmadan hemen once null disinda bir deger atanirsa dart bunu tespit edebilir.
 * 
 */

void main(List<String> args) {
  String? mesaj;

  if (DateTime.now().hour < 12) {
    mesaj = "gunaydin";
  } else {
    mesaj = "iyi aksamlar";
  }

  print(mesaj);
  print(mesaj.length);

  // type promotion from base class to derived class
  Object metin = "Bu bir string";

  if (metin is String) 
  print(metin.length);

}
