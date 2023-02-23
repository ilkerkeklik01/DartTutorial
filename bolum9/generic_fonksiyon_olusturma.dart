void main(List<String> args) {
  double doubleOrtalama = ortalamaBul<double>(1.7, 4);
  double intOrtalama = ortalamaBul<int>(1, 4);
  print(doubleOrtalama);
  print(intOrtalama);
}

double ortalamaBul<T extends num>(T s1, T s2) {
  return (s1 + s2) / 2;
}
