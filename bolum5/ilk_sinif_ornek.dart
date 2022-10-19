void main(List<String> args) {
  Ogrenci emre = Ogrenci();
  emre.aktifMi = true;
  emre.ogrIsim = "Emre Altunbilek";
  emre.ogrNo = 532;

  Ogrenci hasan = Ogrenci();
  var kemal = Ogrenci();
  
  dynamic yunus = Ogrenci();
  
  
}

class Ogrenci {
  //instance variables
  String ogrIsim = '';
  int? ogrNo;
  bool? aktifMi;

  void dersCalis() {
    print("Ogrenci ders calisiyor");
  }
}
