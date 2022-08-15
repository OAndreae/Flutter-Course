import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  final void Function() onPressed;
  final String text;

  const BottomButton({required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        child: Text(
          text,
          style: kBottomButtonTextStyle,
        ),
        color: kRedColour,
        height: kBottomContainerHeight,
        width: double.infinity,
        margin: EdgeInsets.only(top: 8.0),
        padding: EdgeInsets.only(bottom: 20.0),
      ),
    );
  }
}
