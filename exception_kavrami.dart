void main(List<String> args) {
  print("Program basladi.");

  try {
    int sayi = 100 ~/ int.parse("sasd"); //hata firlatir
    print(sayi);
  } on IntegerDivisionByZeroException {
    print("Bolunenin 0 olmasi hatasi");
  } on FormatException catch (exception) {
    print(exception);
  } catch (exception) {
    //exception yakalanirsa calisir
    print("Hata: " + exception.toString());
  } finally {
    //her turlu calisir
    print("Islem bitti");
  }

  print("Program bitti");
}
