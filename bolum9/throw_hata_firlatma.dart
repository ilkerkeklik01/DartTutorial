import 'dart:math';

void main(List<String> args) {
  try {
    double deger = kareKokunuAl(-20);
    print("Deger: ${deger.toStringAsFixed(2)}");
  } on FormatException catch (e) {
    print(e.message);
  } catch (e) {
    print(e);
  }
}

double kareKokunuAl(int i) {
  try {
    if (i < 0) {
      throw FormatException("Sayi negatif olamaz");
    }
    return sqrt(i);
  } on FormatException catch (E) {
    print(E.message + "(metot icindeyim)");
  } finally {
    return 0;
  }
}
