void main(List<String> args) {
  //Firebase e geçmek istedigim an sağ tarafı FireBaseDB ile değiştirmem yeterli olacak
  //iyi kod boyle yazılır
  VeriTabani veriTabani = OracleDB();

  veriTabani.userDelete();
  veriTabani.userSave();

  //Boyle iç içe anlaşılır basit değiştirilebilir yapılar kullan sürekli
  //çünkü müşterin senden daha sonra farklı farklı işlevler isteyecektir emin ol
}

void userGuncelle(VeriTabani db) {
  db.userUpdate();
}

abstract class VeriTabani {
  void userSave();
  void userUpdate();
  void userDelete();
}

class OracleDB extends VeriTabani {
  @override
  void userDelete() {
    print("OracleDB-User deleted");
  }

  @override
  void userSave() {
    print("OracleDB-User saved");
  }

  @override
  void userUpdate() {
    print("OracleDB-User updated");
  }
}

class FireBaseDB extends VeriTabani {
  @override
  void userDelete() {
    print("FireBaseDB-User deleted");
  }

  @override
  void userSave() {
    print("FireBaseDB-User saved");
  }

  @override
  void userUpdate() {
    print("FireBaseDB-User updated");
  }
}
