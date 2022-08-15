import 'package:flutter/material.dart';

import 'pages/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
          primaryColor: Color(0xff0a0e21),
          scaffoldBackgroundColor: Color(0xFF0B0D22),
          colorScheme: ColorScheme.dark().copyWith(
            secondary: Color(0xffe83d66),
            surface: Color(0xFF0B0D22),
          )),
      home: InputPage(),
    );
  }
}
