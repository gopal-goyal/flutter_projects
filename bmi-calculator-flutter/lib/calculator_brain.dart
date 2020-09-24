import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.weight,this.height});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI(){
    _bmi = weight/ pow(height/100, 2);
    return _bmi.toStringAsFixed(2);
  }
  String getResult(){
    if(_bmi >= 25){
      return 'Overweight';
    } else if (_bmi > 18.5){
       return 'Normal';
    } else{
       return 'Underweight';
    }
  }
  String getInterpretation(){
    if(_bmi >= 25){
      return 'You have a higher than a normal body weight. Try to exercise';
    }else if (_bmi > 18){
      return 'You have a normal body weight. Good going!';
    }else{
      return 'You have a lower than a normal body weight. Try to eat more';
    }
  }
}