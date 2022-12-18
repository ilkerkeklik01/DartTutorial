import 'dart:math';

class CemberDaire {
  final double _pi = 3.14;
  int _radius = -1;

  CemberDaire(int radius) {
    _setRadius = radius;
  }

  double get area => _pi * pow(_radius, 2);

  double get cevre => 2 * _pi * _radius;

  void set _setRadius(int r) {
    if (r >= 0) {
      _radius = r;
      return;
    }
    _radius = 0;
  }
}
