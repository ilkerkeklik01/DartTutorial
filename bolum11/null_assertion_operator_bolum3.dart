/**
  * Eger bir nullable tipin null olmadigindan eminseniz, null assertion operator yani ! kullanabilirsiniz,
  boylece dart o degiskene non-nullable olarak davranir ve sorun kalmaz.
  *

  *Bu isareti kullaninca sunu demis olursunuz : deger null olmayacak bu yuzden bu degeri non-nullable degiskene atabilirsiniz.
  *
  Eger bu dusuncenizde hataliysaniz dart runtimeda hata firlatir.
  Boylece programiniz null hatalarina acilmis olur. Bu yuzden kodunuzun null olmayacagindann yuzde yuz emin degilseniz bunu kullanmayin.

  *Ozetle ! koydugunuzda dart'a sunu dersiniz: Biliyorum bu degisken null olabilir ama eminim ki null deger yok, bu nedenle bunu null deger kabul etmeyen bir degiskene atayabilirsin.

  *Dart ayni scopeda ise o degisken nullable bile olsa null olup olmadigini anlayabilir.
  Farkli scopedaysa yani kapsamdaysa emin olamaz.

  */

int? nullOlabilirAmaDegil = 1;
void main(List<String> args) {
  
  List<int?> nullDegerTutanListe = [2, 3, null];

  int a = nullOlabilirAmaDegil!;
  int b = nullDegerTutanListe.first!;
  int c = nullDonderebilirAmaDondurmeyecek()!.abs();
}

int? nullDonderebilirAmaDondurmeyecek(){
  return 5;
}
