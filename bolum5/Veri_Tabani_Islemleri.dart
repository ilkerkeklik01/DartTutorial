import 'dart:math';

class VeriTabaniIslemleri {
  String _kullaniciAdi = 'emre';
  String _sifre = "123456";

  VeriTabaniIslemleri();    

  VeriTabaniIslemleri.loginWithNameAndPassword(
      String kullaniciAdi, String sifre) {

        

      }

  bool baglan() {
    if (_internetVarMi()) {
      if (_kullaniciAdi == 'emre' && _sifre == "123456") {
        return true;
      }
      return false;
    }
    print("internet yok");
    return false;
  }

  bool _internetVarMi() {
    if (Random().nextBool()) {
      return true;
    }
    return false;
  }
}
