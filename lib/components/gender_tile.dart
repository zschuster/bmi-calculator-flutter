import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

enum Gender { male, female }

class GenderTile extends StatelessWidget {
  GenderTile({@required this.icon, @required this.gender, this.color});

  final IconData icon;
  final String gender;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: kIconSize,
        ),
        SizedBox(
          height: kSizedBoxHeight,
        ),
        Text(
          gender,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
