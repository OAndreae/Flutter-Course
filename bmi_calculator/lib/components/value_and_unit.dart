import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class ValueAndUnit extends StatelessWidget {
  final String unit;
  final int value;

  const ValueAndUnit({required this.value, required this.unit});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Text(
          value.toString(),
          style: kNumberTextStyle,
        ),
        Text(
          unit,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}

