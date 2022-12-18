import 'dart:math';

class VeriTabaniIslemleri {
  String _kullaniciAdi = "emre";
  String _sifre = "123456";

  //bu kurucuyu olusturdugumuzda default olarak gelen constructor devre disi kaliyor lazimsa elle yazmamiz gerek
  VeriTabaniIslemleri.loginWithNameAndPassword(
      this._kullaniciAdi, this._sifre) {}

  VeriTabaniIslemleri() {}


  bool baglan() {
    if (_internetVarMi()) {
      if (_kullaniciAdi == "emre" && _sifre == "123456") {
        return true;
      }
      return false;
    }

    return false;
  }

  bool _internetVarMi() {
    return Random().nextBool();
  }
}
