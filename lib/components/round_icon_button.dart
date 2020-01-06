import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';


class RoundIconButton extends StatelessWidget {

  RoundIconButton({@required this.icon, this.onPressed});

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon,
      color: Colors.white,
      ),
      shape: CircleBorder(),
      fillColor: kColorDescent,
      elevation: 6,
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      onPressed: onPressed,
    );
  }
}