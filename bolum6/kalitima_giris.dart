void main(List<String> args) {
  User user1 = User();
  var normal1 = NormalUser();
  BasicNormalUser basic1 = BasicNormalUser();
  AdminUser admin1 = AdminUser();

  basic1.girisYap();
  admin1.girisYap();

  // AdminUser user5 = User(); her user admin degildir olmaz

  User user5 = AdminUser();
  User user6 = BasicNormalUser(); //upcasting

  List<User> butunUserlar = [];

  butunUserlar.addAll([user1, normal1, basic1, admin1, user5, user6]);

  print(butunUserlar);

  // user5. diyince toplamkullanıcı metotu gelmiyor cunku declare type user actual type adminuser

  //poliformizm = 
}

void test(User user) {
  user.girisYap();
}

class User {
  String email = "";
  String password = "";

  void girisYap() {
    print("User giriş yapti");
  }

  @override
  String toString() {
    // TODO: implement toString
    return "User toString";
  }
}

class NormalUser extends User {
  void davetEt() {
    print("normal user arkadaşlarini davet etti");
  }

  @override
  void girisYap() {
    print("Normal User giriş yapti");
  }

  @override
  String toString() {
    // TODO: implement toString
    return "NormalUser toString";
  }
}

class BasicNormalUser extends NormalUser {
  void adiniSoyle() {
    print("ben basic normal userim");
  }

  @override
  void girisYap() {
    // TODO: implement girisYap
    print("Basic normal user giriş yaoti");
  }

  @override
  String toString() {
    // TODO: implement toString
    return "BasicNormalUser toString";
  }
}

class AdminUser extends User {
  void toplamKullaniciSayisiniGoster() {
    print("Toplam user sayisi 20");
  }

  @override
  String toString() {
    // TODO: implement toString
    return "AdminUser toString";
  }
}
