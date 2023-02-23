/**
 * 
 * Generic tipleri belirtirken de nullable ve non-nullable kavramlari gecerlidir.
 * 
 * Burda onemli olan ? ni nereye koydugunuzdur
 * 
 * Liste null olabilir diyorsak List<String>?, listenin bazi elemanlari null olabilir diyorsak List<String?>
 * diye belirtebiliriz.
 * 
 */

void main(List<String> args) {
  List<String> stringListesi = ["emre", "hasan", "ali"];
  List<String>? nullOlabilecekStringListesi;
  List<String?> nullOlabilecekStringleriTutanListe = ["emre", null, "hasan"];

  print("String listesi $stringListesi");
  print("null Olabilecek String Listesi $nullOlabilecekStringListesi");
  print("null Olabilecek Stringleri Tutan Liste $nullOlabilecekStringleriTutanListe");


}
