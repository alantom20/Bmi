import 'package:flutter/material.dart';
import 'package:bmi_calculator_flutter/constants.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({this.colour = kActiveCardColour, this.cardChild, this.onPress});

  final Color colour;
  final Widget? cardChild;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}
