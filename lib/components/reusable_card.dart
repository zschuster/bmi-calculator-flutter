import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.color, this.cardChild, this.onTap});

  final Color color;
  final Widget cardChild;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        child: cardChild,
        decoration: BoxDecoration(
          color: this.color,
          borderRadius: BorderRadius.circular(kDecorationBorderRadius),
        ),
        margin: EdgeInsets.all(kContainerMargin),
      ),
    );
  }
}
