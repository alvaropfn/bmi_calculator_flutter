import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

import '../components/reusable_card.dart';
import '../components/botton_button.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({@required this.bmiResul, this.interpretation, this.resultText });

  final String bmiResul;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text('Your Results',
              style: kTitleTextStyle, 
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kcolorPrimary,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(resultText,
                    style: kResultTextStyle,
                  ),
                  Text(bmiResul,
                  style: kBMITextStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(interpretation,
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}