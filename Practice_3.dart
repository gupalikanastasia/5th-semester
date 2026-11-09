class Calc {
  double rangeFrom;
  double rangeTo;
  double step;
  double? _result;

  Calc(this.rangeFrom, this.rangeTo, {this.step = 0.1});

  double? get result => _result;

  void setStep(double value) {
    step = value;
  }

  void runCalc() {
    var x = rangeFrom;
    var sum = 0.0;

    while (x <= rangeTo) {
      final y = _calc(x);
      print('x = ${x.toStringAsFixed(2)}, y = ${y.toStringAsFixed(4)}');
      sum += y;
      x += step;
    }

    _result = sum;
  }

  double _calc(double x) {
    return x + 2 - x * x * x;
  }
}

void main() {
  final processor = Calc(-3, 3);
  processor.setStep(0.5);
  processor.runCalc();
  print('Сума значень функції: ${processor.result}');
}
