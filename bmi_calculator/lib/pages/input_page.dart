import 'package:bmi_calculator/bmi_calculator.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/pages/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/bottom_button.dart';
import '../components/reusable_card.dart';
import '../components/icon_content.dart';
import '../components/round_icon_button.dart';
import '../components/value_and_unit.dart';
import '../constants.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? _selectedGender;
  int _height = 180;
  int _mass = 70;

  int _age = 18;

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
                  child: ReusableCard(
                    onPressed: () => setState(() => _selectedGender = Gender.male),
                    colour: _selectedGender == Gender.male ? kActiveCardColour : kInactiveCardColour,
                    child: IconContent(
                      icon: FontAwesomeIcons.mars,
                      caption: "MALE",
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPressed: () => setState(() => _selectedGender = Gender.female),
                    colour: _selectedGender == Gender.female ? kActiveCardColour : kInactiveCardColour,
                    child: IconContent(
                      icon: FontAwesomeIcons.venus,
                      caption: "FEMALE",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  ValueAndUnit(value: _height, unit: 'cm'),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        thumbColor: kRedColour,
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                        overlayColor: kRedColour.withOpacity(0.16),
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFF878993),
                        trackHeight: 1.0),
                    child: Slider(
                      min: 120,
                      max: 220,
                      value: _height.toDouble(),
                      onChanged: (double newValue) => setState(() => _height = newValue.round()),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(children: [
              Expanded(
                child: ReusableCard(
                  child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text('MASS', style: kLabelTextStyle),
                    ValueAndUnit(
                      value: _mass,
                      unit: 'kg',
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundIconButton(
                          icon: FontAwesomeIcons.minus,
                          onPressed: () => setState(() => _mass > 0 ? _mass-- : 0),
                        ),
                        SizedBox(width: 10.0),
                        RoundIconButton(
                          icon: FontAwesomeIcons.plus,
                          onPressed: () => setState(() => _mass++),
                        ),
                      ],
                    ),
                  ]),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text('AGE', style: kLabelTextStyle),
                    ValueAndUnit(value: _age, unit: 'yrs'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundIconButton(
                          icon: FontAwesomeIcons.minus,
                          onPressed: () => setState(() => _age > 0 ? _age-- : 0),
                        ),
                        SizedBox(width: 10.0),
                        RoundIconButton(
                          icon: FontAwesomeIcons.plus,
                          onPressed: () => setState(() => _age++),
                        ),
                      ],
                    ),
                  ]),
                ),
              ),
            ]),
          ),
          BottomButton(
            text: 'CALCULATE',
            onPressed: () {
              BmiCalculator calc = new BmiCalculator(mass: _mass.toDouble(), height: _height.toDouble());
              Navigator.push(context, MaterialPageRoute(builder: ((context) => ResultsPage(bmi: calc.getBmi(), interpretation: calc.getInterpretation(), result: calc.getResult(),))));
            },
          )
        ],
      ),
    );
  }
}

enum Gender { male, female }
