import 'dart:io';

void main() {
  double baseValueInput = 50;
  double percentageValueInput = 1;

  double result = percentCalculator(baseValueInput, percentageValueInput);
  print(result);
  // ** print(percentCalculator(baseValueInput, percentageValueInput));
}

double percentCalculator(double baseValue, double percentageValue) {
  double percentage = (baseValue / 100) * percentageValue;
  return percentage;
}

double userInputDouble() {
  String? userInput = stdin.readLineSync();
  if (userInput != null && double.tryParse(userInput) != null) {
    double userInputDouble = double.parse(userInput);
    return userInputDouble;
  }
}
