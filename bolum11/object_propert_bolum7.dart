import 'dart:math';

/**
 * Siniflarimizi olustururken olusturdugumuz degiskenler(property) icin de null safety ozellikleri gecerlidir. Bu ozellikleri ilk defa uyguladigimizda karisik gelebilir.
 * 
 * Cunku bu propertylerin getter ve setter metotlari dogrudan veya dolayli olarak vardir. 
 * 
 * Bundan dolayi da bu degiskenler ayni scope icinde farkli degerler uretebilirler. Siz bu yapilara her erisim yaptiginizda farkli sonuclar alabilirsiniz.
 * 
 * Bunun cozumu ise ilgili veriyi bir degiskende saklayip getter uzerinden degil degisken uzerinden kontrolleri yapmanizdir.
 */

class MetinUretici {
  String? metin = "emre";
}

class RastgeleMetinUretici {
  String? degerUret() {
    if (Random().nextBool()) {
      return "String ifade";
    } else {
      return null;
    }
  }
}

void main(List<String> args) {
  final uretici = RastgeleMetinUretici();

  String? sonuc = uretici.degerUret();

  if (sonuc == null) {
    print("Null deger");
  } else {
    metniYazdir(sonuc);
  }

  MetinUretici m = MetinUretici();

  //metniYazdir(m.metin);
  metniYazdir(m.metin!);

  String? met = m.metin;

  if (met != null) {
    metniYazdir(met);
  }
}

void metniYazdir(String sonuc) {
  print(sonuc);
}
