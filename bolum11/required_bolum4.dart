/**
 * Darttaki isimlendirilmis parametreler varsayilan olarak opsiyoneldir, tanimlamasi kullaniciya baglidir. Bu yuzden kullanici tarafindan atanmazlarsa null deger alirlar ki bu kabul edilmez. Bu yuzden parametrelerin veri tiplerini tanimlarken String?, int?, gibi nullable tiplerle belirtmeliyiz.
 * 
 * Bunun disinda tum parametrelere varsayilan degerler atanarak da sorun cozulebilir.
 * 
 * Son cozum ise required kullanarak bu parametrelerin mutlaka girilmesi saglanabilir.
 * 
 *  
 */

int ucSayiyiTopla({required int ilk,required int ikinci,required int ucuncu}) {
  return ilk + ikinci + ucuncu;
}

void main(List<String> args) {
  final toplam = ucSayiyiTopla(ilk: 1, ikinci: 2, ucuncu: 5);
  //final toplam2 = ucSayiyiTopla(ilk: 1, ikinci: 2);
}
