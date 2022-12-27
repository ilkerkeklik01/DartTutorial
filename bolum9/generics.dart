/**
 * Dart optionally type bir dildir. Yani veri tiplerini belirtmek istege baglidir.
 * Surekli kullanilan koleksiyon yapilari (Liste,Set,Map) varsayilan olarak heterojendir. Yani ayni koleksiyon yapisinda farkli turde verileri saklayabilirsiniz. Ama yapmali misiniz ? 
 * 
 * Generic tipler sayesinde bir yapida hangi tur verilerin olacagini soyleriz. Boylece yapilar type-safe olur, compile time da hatali veri girisi tespit edilir ve bize hatamiz soylenir.
 * Boylece runtime da cikabilecek hatalarin onune gecilir
 * 
 * Generic tipler <> icinde belirtilir. List<String> ifadesi bu listede sadece String veriler tutulacagi anlamini tasir. Bu listeye String disinda veri eklenirse daha program calistirilmadan hata aliriz ve duzeltmemiz gerekiz. Boylece daha guvenli kod yazmis oluruz.
 * 
 * Generic`ler dartta bulunan cogu yapida zaten vardir. List, map, set, Future, Stream gibi...
 * Kendi olusturdugumuz siniflarda ve metotlarda genericleri uygulayabiliriz. Boylece hem daha guvenli kod yazmis olursunuz hem de benzer amaclari gerceklestiren kod yapilarini tek bir yapida toplayabilirsiniz.
 * 
 */

void main(List<String> args) {
  List liste = [];
  liste.add("emre");
  liste.add(2);
  liste.add(false);


  /**
   * List<E> ==> Element
   * Map<K,V>  ==> Key  Value
   * R ==> Methodlarin return tipleri icin
   * 
   * Ogrenci<T extends Insan> gelecek veri turu mutlaka insan sinifinin alt sinifi olmali
   *  
   */
}
