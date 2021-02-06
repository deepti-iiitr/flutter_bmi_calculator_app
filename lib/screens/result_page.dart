import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/Bottom_button.dart';

const TitleTextStlyle = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
);

const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);

const resultTextStyle = TextStyle(
  color: Color(0XFF24D876),
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
);

const BMITextStyle = TextStyle(
  fontSize: 100.0,
  fontWeight: FontWeight.bold,
);
const BodyTextStyle = TextStyle(
  fontSize: 22.0,
);

class ResultPage extends StatelessWidget {
  ResultPage({this.bmiResult, this.interpretation, this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'YOUR RESULT',
                style: TitleTextStlyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: activeCardColor,
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultText.toUpperCase(), style: resultTextStyle),
                  Text(
                    bmiResult,
                    style: BMITextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: BodyTextStyle,
                  )
                ],
              ),
            ),
          ),
          Bottom_Button(
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
