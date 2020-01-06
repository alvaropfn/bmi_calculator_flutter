import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class IconContent extends StatelessWidget {
  final gender;
  final genderIcon;

  IconContent({
    this.gender,
    this.genderIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Icon(
          genderIcon,
          size: 80,
          color: Color(0xFFFFFFFF),
        ),
        SizedBox(
          height: 24,
          child: Text(
            gender,
            style: kLabelTextStyle
          )
        ),
      ],
    );
  }
}
