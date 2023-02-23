/**
 * Set Koleksiyon Yapısı
 * List den en önemli farkı elemanları sıralı olarak tutmaz
 * Bu durumdan dolayı listlerde oldugu gibi indexleri kullanamayız
 * 
 * Bir diğer farkı ise bir elemandan sadece bir tane olur (unique)
 * 
 * index olmadan elemanları kontrol etmek için contains methodu kullanabilir.
 * Onun dışında listelerdeki metotlar set için de geçerlidir
 */

void main(List<String> args) {
//set yapısının oluşturulması
  Set<String> isimler = Set();
//    var isimler = Set(); şeklinde de tanımlayabilirim

  isimler.add("emre");
  isimler.add("hasan");
  isimler.add("ali");
  isimler.add("emre");
  isimler.add("emre");
  isimler.add("fatma");

  for (String each in isimler) {
    print(each);
  }
  //emre sadece bir kez alındı
  print(isimler); //curly bracket arasında gösteriliyor
  //her ne kadar burada sıralı çıksada buna güvenmemeliyiz

  // isimler[0]; kullanılamaz çünkü set yapısında indeksleme yoktur

  if (isimler.contains("emre")) {
    print("emre var");
    // some statements
  }
  if (isimler.contains("ilker")) {
    print("ilker var");
  } else {
    print("ilker yok");
  }

  bool sonuc = isimler.remove("emre");
  print("Emre silindi mi: $sonuc");
  sonuc = isimler.remove("ilker");
  print("ilker silindi mi: $sonuc");

  print(isimler);

  print("*********************");

  //Seti oluştururken var olan elemanları eklemek
  Set<int> numaralar = Set.from([1, 2, 2, 3, 4, 5, 5, 5]);
  List<int> ciftSayilar = [0, 2, 4, 6, 8, 10, 8, 6, 4, 2, 0];
  Set<int> num2 = Set.from(ciftSayilar);

  print(numaralar);

  numaralar.clear();
  numaralar.addAll(ciftSayilar);
//clear demeseydim diğerlerine ekleme yapacaktı
  print(numaralar);
  print(num2);
}

/*
//set yapilari elemanları sıralı tutmaz
//her eleman birbirinden farklı olmak zorundadır
//index olmadan elemanları kontrol etmek için contains methodu kullanabiliriz
//bunların dışında listelerdeki metotlar set koleksiyon yapısı için de geçerlidir

void main(List<String> args) {
  Set<String> isimler = Set();
  // var isimler = Set(); şeklinde de tanımlayabilirdim
  

  isimler.add("Ilker");
  isimler.add("Emre");
  isimler.add("Ali");
  isimler.add("Ilker");
  isimler.add("Ilker");
  isimler.add("Fatma");

  for (String each in isimler) {
    print(each);
  }
  //her zaman sıralı çıkmayaiblir
  print(isimler.length);

/*
  if (isimler.contains("Emre")) {
    isimler.remove("Emre");
  }
  print(isimler);
  */
  bool sonuc = isimler.remove("Emre");
  print(sonuc);
  bool sonuc2 = isimler.remove("samet");
  print(sonuc2);
  print(isimler);

  Set<int> numaralar = Set.from([
    1,
    2,
    4,
    2,
    53,
    5,
    24,
    4,
    21,
    1,
    1,
    1,
    4,
    33,
    4
  ]); // [] gordugunde aklına set gelmeli
  print(numaralar);

  List<int> ciftSayilar = [0, 2, 4, 6, 8, 10, 8, 6, 4, 2, 0];

  numaralar.clear();
  numaralar.addAll(ciftSayilar);

  print("add all dan sonra numaralar $numaralar");
}
*/
