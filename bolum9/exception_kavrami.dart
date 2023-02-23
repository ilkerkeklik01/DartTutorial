void main(List<String> args) {
  print("Program basladi");

  try {
    int sayi = 100 ~/ int.parse("emre");
    print(sayi);
  } on IntegerDivisionByZeroException {
    print("Bolen 0 olamaz");
  } on FormatException catch (e) {
    print(e);
    print(e.message);
    print(e.source);
  } catch (e) {
    //hata yakalanirsa calisir
    print("Hata cikti");
  } finally {
    //her turlu calisir
    print("Islem bitti");
  }

  print("Program bitti");
}
