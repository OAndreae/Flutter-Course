import 'dart:math';

class BmiCalculator {
  final double mass;
  final double height;

  BmiCalculator({required this.mass, required this.height});

  double calculateBmi() {
    return mass / pow(height / 100, 2);
  }

  String getBmi() => calculateBmi().toStringAsFixed(1);

  String getResult() {
    double bmi = calculateBmi();
    if (bmi < 18.5)
      return 'Underweight';
    else if (bmi <= 25)
      return 'Normal';
    else
      return 'Overweight';
  }

  String getInterpretation() {
    double bmi = calculateBmi();
    if (bmi < 18.5)
      return 'You should probably eat more.';
    else if (bmi <= 25)
      return 'You\'re normal. Keep the current diet.';
    else
      return 'You\'re overweight. Eat less and more healthily.';
  }
}
