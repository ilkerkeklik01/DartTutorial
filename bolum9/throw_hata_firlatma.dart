import 'dart:math';

void main(List<String> args) {
  try {
    double deger = kareKokunual(-25);
    print("Deger: ${deger.toStringAsFixed(2)}");
  } on FormatException catch (e) {
    print(e.message);
  } catch (e) {
    print("catch2" + e.toString());
  }
}

double kareKokunual(int i) {
  try {
    if (i < 0) {
      throw FormatException("Sayi negatif olamaz");
      //hata firlatilirsa fonksiyon devam etmez
      print("burada");
    }
    return sqrt(i);
  } on FormatException catch (e) {
    print(e.message + " metot icindeyim");
  } finally {
    return 0; //bunu yapmazsam compile error 
  }
}
