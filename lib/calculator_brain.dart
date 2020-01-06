import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  double _bmi;
  CalculatorBrain({this.height, this.weight });

  // bmi = weight(kg) / height^2(cm)
  String calculateBMI() {
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    String toReturn = '';
    if(_bmi >= 25) {
      toReturn = 'Overwheight';
    } else if(_bmi < 25 && _bmi > 18.5) {
      toReturn = 'Normal';
    } else {
      toReturn = 'Underweight';
    }
    return toReturn;
  }

  String getInterpretation() {
    String toReturn = '';
    if(_bmi >= 25) {
      toReturn = 'Maybe exercise more will be good to you.';
    } else if(_bmi > 18.5) {
      toReturn = 'You are in a normal. Keep with the good job.';
    } else {
      toReturn = 'Probably you cold try to eat a little bit more.';
    }
    return toReturn;
  }
}