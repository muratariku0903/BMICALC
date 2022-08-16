import 'package:flutter/material.dart';
import 'package:sample_app_04/main.dart';
import '../classes/bmi.dart';

class ResultPage extends StatelessWidget {
  BMI? bmi;

  ResultPage(Key? key, gender, height, weight, age) : super(key: key) {
    bmi = BMI(gender, height, weight, age);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('CALC RESULT'),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                bmi!.judgment(),
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),
              ),
              Text(
                bmi!.calcBMI().toStringAsFixed(3),
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.red,
        child: TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text(
            'BACK!',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

