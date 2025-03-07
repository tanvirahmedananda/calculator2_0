import 'package:calculator2_0/utils/constants.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String buttonText;
  final double buttonHeight;
  final double buttonWidth;
  final double buttonTextSize;
  final double? buttonShadowWidth;
  final Color buttonColor;
  final Color buttonTextColor;
  final Color? buttonShadowColor;

  const Button(
      {super.key,
      required this.buttonText,
      required this.buttonHeight,
      required this.buttonWidth,
      required this.buttonTextSize,
      this.buttonShadowWidth = 0,
      required this.buttonColor,
      required this.buttonTextColor,
      this.buttonShadowColor = Colors.transparent});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular((mqWidth(buttonWidth, context) / 2)),
          color: buttonColor,
          border:
              Border.all(color: buttonShadowColor!, width: buttonShadowWidth!)),
      height: mqHeight(buttonHeight, context),
      width: mqWidth(buttonWidth, context),
      alignment: Alignment.center,
      child: Text(
        buttonText,
        style: TextStyle(
            color: buttonTextColor, fontWeight: FontWeight.bold, fontSize: 20),
      ),
    );
  }
}
