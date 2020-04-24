import 'dart:math';

class CalculatorBrain {

  CalculatorBrain({this.height, this.weight});

  // height in inches, weight in lbs
  final int height;
  final int weight;

  // I am not a doctor!
  Map<String, String> _interpretationMap = {
    'Underweight': 'You are underweight. Try to eat in a caloric surplus.',
    'Normal': 'You are a healthy weight!',
    'Overweight': 'You are overweight. Consider talking to a nutritionist.',
    'Obese': 'You are obese. Consider light exercise and a nutritionist.'
  };

  double _bmi;
  String _result;

  String calculateBMI() {
    _bmi = 703 * weight / pow(height, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 30) {
      _result = 'Obese';
    } else if (_bmi >= 25) {
      _result = 'Overweight';
    } else if (_bmi >= 18.5) {
      _result =  'Normal';
    } else {
      _result = 'Underweight';
    }
    return _result;
  }

  String getInterpretation() {
    return _interpretationMap[_result];
  }

}