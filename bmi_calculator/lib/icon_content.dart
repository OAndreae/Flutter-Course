import 'package:flutter/material.dart';

const iconSize = 80.0;
const captionStyle = TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Color(0xFF8E8F99));

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
          size: iconSize,
        ),
        SizedBox(height: 15.0),
        Text(
          caption,
          style: captionStyle,
        )
      ],
    );
  }
}
