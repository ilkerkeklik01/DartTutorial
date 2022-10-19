class Musteri {
  int? _musteriNo;

  /* Musteri(int musteriNo) {
    this.musteriNo = musteriNo;
  } */

  //Musteri(this._musteriNo);

  Musteri(int musteriNo) {
    _musteriNoKontrol(musteriNo);
  }

  void set musteriNoAta(int no) {
    if (no > 0) {
      this._musteriNo = no;
    } else {
      this._musteriNo = 999;
    }
  }

  int get musteriNoSoyle {
    return _musteriNo!;
  }

  int get musteriNoSoyle2 => _musteriNo!;  

  void _musteriNoKontrol(int no) {
    if (no > 0) {
      this._musteriNo = no;
    } else {
      this._musteriNo = 999;
    }
  }

  void musteriNoGoster() {
    print("Musteri no: $_musteriNo");
  }
}
