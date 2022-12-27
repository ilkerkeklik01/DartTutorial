class MyStack {
  List _listem = [];

  push(yeniEleman) {
    _listem.add(yeniEleman);
  }

  pop() {
    return _listem.removeLast();
  }
}

class GenericStack<T> {
  List<T> _list = <T>[];

  void push(T t) {
    _list.add(t);
  }

  T pop() {
    return _list.removeLast();
  }
}

class IntMyStack {
  List<int> _listem = [];

  push(int yeniEleman) {
    _listem.add(yeniEleman);
  }

  int pop() {
    return _listem.removeLast();
  }
}

class StringMyStack {
  List<String> _listem = [];

  push(String yeniEleman) {
    _listem.add(yeniEleman);
  }

  String pop() {
    return _listem.removeLast();
  }
}
