void main(List<String> args) {
  print(ortalamaBul<double>(5, 5.4));
  print(ortalamaBul<int>(3, 2));
  print(ortalamaBul<double>(5.3, 5.4));
}

double ortalamaBul<T extends num>(T s1, T s2) {
  return (s1 + s2) / 2;
}
