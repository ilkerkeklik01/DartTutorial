main(List<String> args) {
  const Student emre = Student(5, "emre");
  final Student emre2 = const Student(5, "emre");
  var emre3 = const Student(5, "emre");
  //emre3 = Student(5,"emre"); yapabiliyorum ve eşit olmuyor artık (var ile declare edildigi için )
  if (emre2 == emre3)
    print("eşit");
  else
    print("eşit değil");
}

class Student {
  final int id;
  final String isim;
  //final yazmazsan hata veriyor
  const Student(this.id, this.isim);
}
