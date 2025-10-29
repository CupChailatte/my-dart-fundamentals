import 'dart:io';

List<double> calculationFunctions = [];

double add(double x, double y) {
  return x + y;
}

double subtract(double x, double y) {
  return x - y;
}

double multiply(double x, double y) {
  return x * y;
}

double divide(double x, double y) {
  return x / y;
}

Calculator(double x, double y) {
  var input = stdin.readLineSync();
  double sum = 0;
  print("Enter Calculation");
}

void main() {
  print("Test");
  Calculator(2, 3);
}
