import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'constants.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0C22),
          scaffoldBackgroundColor: Color(0xFF0A0C22),
          sliderTheme: SliderThemeData(
              thumbColor: kSliderThumbColor,
              activeTrackColor: kSliderActiveColor,
              inactiveTrackColor: kSliderInactiveColor,
              overlayColor: kSliderOverlayColor,
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 25))),
      home: InputPage(),
    );
  }
}
