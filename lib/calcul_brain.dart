import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return "Overweight";
    } else if (_bmi == 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String getInterp() {
    if (_bmi >= 24) {
      return "You have a higher than normal bode weight. try to exercise more.";
    } else if (_bmi == 18.5) {
      return "You have a normal bode weight. Good job!";
    } else {
      return "You have a lower than normal body weight. You can eat a bit more.";
    }
  }
}
