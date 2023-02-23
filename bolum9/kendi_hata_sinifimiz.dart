void main(List<String> args) {
  try {
    Ogrenci emre = Ogrenci(-5);
    print(emre.yas);
  } on AgeException catch (e) {
    print(e.message);
  } finally {
    print("Program bitti");
  }
}

class AgeException implements Exception {
  String message;

  AgeException([this.message = "Age Exception"]) {}

  @override
  String toString() {
    // TODO: implement toString
    return "Hatanin toString metotu calisti";
  }
}

class Ogrenci {
  int yas = 0;

  Ogrenci(int yas) {
    if (yas < 0) {
      throw AgeException("Age Exception: Yas $yas olamaz.");
    } else
      this.yas = yas;
  }
}
