import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR RESULTS'),
      ),
      body: Center(
        child: Text(
          'Good God! You\'re obese.',
          style: kNumberTextStyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
