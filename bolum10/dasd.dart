void main(List<String> args) {
  List liwst = List.empty(growable: true);

  try {
    print(liwst.first);
  } catch (E) {
    print(E);
  }
}
