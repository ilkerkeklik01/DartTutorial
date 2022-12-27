void main(List<String> args) {
  //Eger try catch kullanmadan Student constructorunun icinde if else statementlari ile yas 0 dan kucukse dersek illaki yasa bir sey atamamiz gerekir sonuc olarak nesne hatali olsa bile olusur
  //fakat su an yanlis deger girersek nesne olusmaz NULL kalir
  //emre nesnesine try catch bloklari disinda erismek istiyorsak disarida declare etmeliyiz

  Student? emre = null;
  try {
    emre = Student(-5);
    print(emre.yas);
  } on AgeException catch (e) {
    print(e.mesaj);
  } finally {
    print("Program bitti");
  }
}

class AgeException implements Exception {
  String mesaj;

  AgeException([this.mesaj = "Age Exception"]);

  @override
  String toString() {
    // TODO: implement toString
    return "Hatanin to String metotu";
  }
}

class Student {
  int yas = 0;
  Student(int yas) {
    if (yas < 0) {
      throw AgeException("The age of the student cannot be negative");
    } else {
      this.yas = yas;
    }
  }
}
