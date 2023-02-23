/**
 * Dart varsayilan olarak hicbir degiskene null deger atanmasina izin vermez. Buna dart non-nullable type denir. Bir degisken tanimplayip uygun veriyi atamazsaniz size uyari verecektir. Bu uyarida degiskene ilk degeri atamaniz istenecektir. Boylece program calisirken hicbir nun-nullable degisken null degeri gostermez (null sound)
 * 
 * Bunu istemiyorsaniz veri tipinin sonuna ? koyarsiniz. Boylece degiskende null deger saklanabilir. Bunlar da aslinda yeni bir veri tipidir. ? koyarak nullable type olusturmus olursunuz.
 * 
 */

void main(List<String> args) {
  //nullable
  int? a;
  a = null;

  print("a degiskeninin degeri $a");

  //print(a + 2);
}
