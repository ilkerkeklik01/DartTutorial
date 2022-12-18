class Musteri {
  int? _musteriNo;

/*
  Musteri(int musteriNo) {
    this._musteriNo = musteriNo;
  }
  */

  Musteri(int musteriNo) {
    _musteriNoKontrol(musteriNo);
  }

//getter metot

  String get musteriNoSoyle {
    return "getter Musteri no: $_musteriNo ";
  }

  String get musteriNoSoyle2 => "getter Musteri no: $_musteriNo ";


  void _musteriNoKontrol(int no) {
    if (no > 300) {
      _musteriNo = no;
    } else {
      return;
    }
  }

//Setter metot
  void set musteriNoAta(int no) {
    if (no > 300) {
      _musteriNo = no;
    } else {
      return;
    }
  }

  void bilgileriYazdir() {
    print("Musteri No: $_musteriNo");
  }
}
