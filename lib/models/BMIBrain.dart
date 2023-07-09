import 'dart:math';

import 'package:flutter/cupertino.dart';

class BMIBrain {
  final int height;
  final int weight;
  late double _bmi;

  String gender;

  BMIBrain(
      {required this.height, required this.weight, required this.gender}); //
  // BMIBrain({required this.height, required this.weight,required this._gender});

  String CalculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return "Overweight";
    } else if (_bmi > 18.5) {
      return "Normal ";
    } else {
      return "Underweight";
      // $gender
    }
  }

  String getAdvise() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.  💪🚴';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight.';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more. 🍲🍎';
    }
  }

  String getgender() {
    return gender;
  }
}
