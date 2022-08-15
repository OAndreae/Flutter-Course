import 'package:flutter/material.dart';
import '../constants.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget? child;
  final void Function()? onPressed;

  const ReusableCard({this.onPressed, this.colour = kCardBackgroundColour, this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: child,
        margin: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }
}
