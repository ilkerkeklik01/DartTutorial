/**
 * Dart dili, eger ayni scope icinde null check yapiyorsa nullable degiskenlere non-nullable gibi davranir.
 * 
 * Farkli bir yontem hata firlatmak olabilir. Eger deger null ise hata firlatirsak return ifadesi calismayacak ve fonksiyonumuz null deger dondurmeyecektir.
 * 
 */

int karakterSayisiniBul(String? metin) {
  if (metin != null) {
    return metin.length;
  }
  throw Exception("Metin null");
  //return 0;
}

void main(List<String> args) {
  try {
    print(karakterSayisiniBul(null));
  } catch (e) {
    print(e);
  }
}
