import 'package:flutter/material.dart';
import '../constants.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String caption;

  const IconContent({required this.icon, this.caption = ""});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: kIconSize,
        ),
        SizedBox(height: 15.0),
        Text(
          caption,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
