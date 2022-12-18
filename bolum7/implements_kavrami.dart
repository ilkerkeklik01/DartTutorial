/**
 * Dart dilinde interface kavrami yoktur, ama sınıfları implements anahtar kelimesi ile interface gibi kullanabilirz.
 * Interfaceler sayesinde ortak özellikleri olan ancak kalıtımsal olarak alakalı olmayan sınıfları bir çatı altında toplayabiliriz.
 * 
 * Interface olarak kullanılan sınıfların metotları bu sınıfları implemente eden sınıflar tarafından yapılmak zorundadır.
 * Interfaceler sayesinde dart dilinde olmayan coklu kalıtım saglanabilir. Bir sınıf birden fazla sınıfı implemente edebilir.
 * 
 */

void main(List<String> args) {}

abstract class Hayvan {
  void somutMetot() {
    print("metotun tanimi");
  }
}

abstract class Ucabilenler {
  void fly();
  void test() {
    print("test");
  }
}

abstract class Havlayabilenler {
  void bark();
}

abstract class Kosabilenler {
  void run();
}

class Kopek extends Hayvan implements Kosabilenler, Havlayabilenler {
  @override
  void bark() {
    // TODO: implement bark
  }

  @override
  void run() {
    // TODO: implement run
  }
}

class Kus extends Hayvan implements Ucabilenler {
  @override
  void fly() {
    // TODO: implement fly
  }

  @override
  void test() {
    // TODO: implement test
  }
}
