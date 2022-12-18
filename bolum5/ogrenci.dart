class Ogrenci {
  String? _id;
  int? _not;

  Ogrenci(String id, int not) {
    _setId = id;
    _setNot = not;
  }

  void set _setId(String id) {
    if (int.parse(id) >= 0 && int.parse(id) <= 1000) {
      this._id = id;
      return;
    }
    this._id = "-100";
  }

  void set _setNot(int not) {
    if (not >= 0 && not <= 100) {
      this._not = not;
      return;
    } else {
      this._not = 0;
    }
  }

  String get getId => this._id!;
  int get getNot => this._not!;
}
