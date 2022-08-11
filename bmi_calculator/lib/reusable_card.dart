import 'package:flutter/material.dart';

const cardBackgroundColour = Color(0xFF1F2033);

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget? child;

  const ReusableCard({this.colour = cardBackgroundColour, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
    );
  }
}
