import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const accentColour = Color(0xFFEB1455);

const inactiveCardColour = Color(0xFF10142B);
const activeCardColour = Color(0xFF1F2033);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? _selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () => setState(() => _selectedGender = Gender.male),
                    child: ReusableCard(
                      colour: _selectedGender == Gender.male ? activeCardColour : inactiveCardColour,
                      child: IconContent(
                        icon: FontAwesomeIcons.mars,
                        caption: "MALE",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () => setState(() => _selectedGender = Gender.female),
                    child: ReusableCard(
                      colour: _selectedGender == Gender.female ? activeCardColour : inactiveCardColour,
                      child: IconContent(
                        icon: FontAwesomeIcons.venus,
                        caption: "FEMALE",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: ReusableCard()),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusableCard()),
                Expanded(child: ReusableCard()),
              ],
            ),
          ),
          Container(
            color: accentColour,
            height: bottomContainerHeight,
            width: double.infinity,
            margin: EdgeInsets.only(top: 8.0),
          )
        ],
      ),
    );
  }
}

enum Gender { male, female }
