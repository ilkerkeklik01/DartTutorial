/**
 * Soru
 * Bir fonksiyon yazin ve bu fonksiyon aldigi id parametresine gore bir kullanici getirsin. Bu islem 2 saniye sonunda sonuclanacaktir ve getirilen kisi bilgisi map olarak alinacaktir. Bu map yapisinda username ve id bilgisi olmasi yeterlidir.
 * 
 * Getirilen kisi bilgisindeki username degerini kullanarak kisinin kurslarini getiren bir fonksiyon yazin.
 * Bu fonksiyon 4 saniye surecektir ve username degerine ait olan kurslari icinde kursun adlari olan bir liste olarak donderecektir.
 * 
 * 
 * Son olarak da kurslar listesindeki ilk elemani parametre olarak alan ve bu kursa ait bir yorumu donduren bir fonksiyon yazin. Bu fonksiyon 1 saniye surecektir.
 * 
 * 
 */

void main(List<String> args) {
  print("Basladi");

  Future<Map<String, dynamic>> sonuc1 = kullaniciVer(5);

  sonuc1.then((Map<String, dynamic> value) {
    print("Kullanici: $value");
    kurslariGetir(value["username"]).then((List<String> value) {
      print(value);

      try {
        yorumuGetir(value.first)
            .then((String value) => print(value))
            .catchError(() => print("Yorum getirilemiyor"));
      } catch (e) {
        print(e);
      }

    });
  });

  print("Bitti");
}

Future<Map<String, dynamic>> kullaniciVer(int id) {
  return Future<Map<String, dynamic>>.delayed(Duration(seconds: 2), (() {
    switch (id) {
      case 1:
        return {"username": "Ilker", "id": 1358};

      case 2:
        return {"username": "Cisem", "id": 2026};

      case 3:
        return {"username": "Burkay", "id": 42};

      case 4:
        return {"username": "Cinar", "id": 15};

      default:
        return {"username": "noName", "id": 0};
    }
  }));
}

Future<List<String>> kurslariGetir(String username) {
  return Future<List<String>>.delayed(Duration(seconds: 4), () {
    switch (username) {
      case "Ilker":
        return List.of(
            ["Systems Programming", "Electrinics", "Analysis of Algorithms"]);

      case "Cisem":
        return List.of(["Gelisim Psikolojisi", "Danismanlik", "Sanat Tarihi"]);

      case "Burkay":
        return List.of(["Matematik", "Edebiyat", "Cografya"]);
      case "Cinar":
        return List.of(["If clauses", "Comparisons", "Past Perfect Tense"]);
      default:
        return List.empty(growable: true);
    }
  });
}

Future<String> yorumuGetir(String firstCourseName) {
  return Future<String>.delayed(Duration(seconds: 1), () {
    switch (firstCourseName) {
      case "Systems Programming":
        return "It is a very difficult and critical Computer Science Course";

      case "Gelisim Psikolojisi":
        return "Psikolojik danismanligin olmazsa olmazi";
      case "Matematik":
        return "Matematik yapamayan universiteye gidemez";
      case "If clauses":
        return "Ingilizcenin eglenceli ve kolay bir konusu";

      default:
        return "Olmayan dersin yorumunu yapamicam :(";
    }
  });
}
