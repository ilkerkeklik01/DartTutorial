class MyStack {
  List _listem = [];

  void push(element) {
    _listem.add(element);
  }

  dynamic pop() {
    return _listem.removeLast();
  }
}

class IntMyStack {
  List<int> _listem = [];

  void push(int element) {
    _listem.add(element);
  }

  int pop() {
    return _listem.removeLast();
  }
}

class StringMyStack {
  List<String> _listem = [];

  void push(String element) {
    _listem.add(element);
  }

  String pop() {
    return _listem.removeLast();
  }
}

class GenericStack<T> {
  List<T> _list = List.empty(growable: true);
  
void push(T element) {
    _list.add(element);
  }

  T pop() {
    return _list.removeLast();
  }


}
