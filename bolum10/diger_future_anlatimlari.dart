void main(List<String> args) async {
  print("Program basladi");

  //Future 0 saniyelik olsa bile ilk once senkron calisacak kodlar calisir ardindan asenkron kisma gecis yapilir
  Future.delayed(Duration(seconds: 0), () => print("0 saniyelik islem"));

  //.delayed kullanarak Duration girmek zorunda degilsin
  //icerdeki fonksiyonin kendi icindeki islem suresi bitince asenkron yapi calisir.
  //sistemi zorlayacak kodlari buraya yazabilirsin.  burasi ayri bir bolmede islenecek
  Future<int> toplam = Future(() {
    int toplam = 0;
    for (int i = 0; i < 1000000000; i++) {
      toplam += i;
    }
    throw Exception("Toplam Hesaplanamadi");
    return toplam;
  });

  toplam
      .then((int value) => print(value))
      .catchError((error) => print(error))
      .whenComplete(() => print("Toplama islemi sona erdi"));
  ;

  /** Async awaitlerde hata ayiklamak icin try catch yapisi kullanilabilir
   * 
   * try{
   *  print(await toplam);
   * }catch(e){
   * print(e);
   * }
   * 
   * 
   * 
   */

  var f2 = Future.value("ilker");
  var f3 = Future.error("hata ile biten future");

  f2.then((value) => print(value));
  // print(await f2);
  f3.catchError((hata) => print(hata));

  print("Program bitti");
}
