import 'package:flutter/material.dart';

class ContainerConfig extends ChangeNotifier {
  double _width = 100;
  double _height = 100;
  double _radius = 30;

  double get width => _width;
  double get height => _height;
  double get radius => _radius;

  set width(double value) {
    _width = value;
    notifyListeners();
  }

  set height(double value) {
    _height = value;
    notifyListeners();
  }

  set radius(double value) {
    _radius = value;
    notifyListeners();
  }
}