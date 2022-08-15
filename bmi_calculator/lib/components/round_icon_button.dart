import 'package:flutter/material.dart';


class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final void Function() onPressed;

  const RoundIconButton({required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      onPressed: onPressed,
      shape: CircleBorder(side: BorderSide.none),
      fillColor: Color(0xFF3F3F4D),
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      child: Icon(icon),
    );
  }
}