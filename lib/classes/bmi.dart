import 'dart:math';

class BMI {
  final String gender;
  final double height;
  final int weight;
  final int age;

  BMI(this.gender, this.height, this.weight, this.age);

  double calcBMI() {
    return weight / pow(height / 100, 2).toDouble();
  }

  String judgment() {
    double bmi = calcBMI();

    if (bmi < 18.5) {
      return '低体重(痩せ型)';
    }

    if (18.5 <= bmi && bmi < 25.0) {
      return '普通体重';
    }

    if (25.0 <= bmi && bmi < 30.0) {
      return '肥満(1度)';
    }

    if (30.0 <= bmi && bmi < 35.0) {
      return '肥満(2度)';
    }

    if (35.0 <= bmi && bmi < 40.0) {
      return '肥満(3度)';
    }

    return '肥満(4度)';
  }
}


