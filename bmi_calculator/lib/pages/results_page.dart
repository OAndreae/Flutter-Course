import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  final String result;
  final String bmi;
  final String interpretation;

  const ResultsPage({required this.result, required this.bmi, required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR RESULTS'),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Expanded(
          child: Text(
            'Your Results',
            style: kTitleTextStyle,
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          flex: 5,
          child: ReusableCard(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  result.toUpperCase(),
                  style: kBmiTextStyle.copyWith(color: Color(0xFF48D08B)),
                ),
                Text(
                  bmi,
                  style: TextStyle(fontSize: 100.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  interpretation,
                  style: TextStyle(fontSize: 20.0),
                ),
              ],
            ),
          ),
        ),
        BottomButton(onPressed: (() => Navigator.pop(context)), text: 'RE-CALCULATE')
      ]),
    );
  }
}
