void main() {

  double valueFrom = -4.5;
  double valueTo = 6.0;
  double step = 0.5;

  print("Функція: y = x^3 - x^2 - x\n");

  double sum = 0.0;
  int count = 0;

  for (double x = valueFrom; x <= valueTo; x += step) {
    x = double.parse(x.toStringAsFixed(1));

    double y = (x * x * x) - (x * x) - x;
    print("x = $x, y = $y");

    sum += y;
    count++;
  }

  if (count > 0) {
    double average = sum / count;
    print("\nСереднє арифметичне значень функції: $average");
  }
}