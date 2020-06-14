import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gblbahasaapp/constant.dart';

var questionNumber = 0;
var quiz = new Practice1Quiz();

class Practice1Quiz {
  var sound = [
    "card1.wav",
    "card22.wav",
    "card18.wav",
    "card35.wav",
    "voice408.wav",
  ];

  var choices = [
    ["Ba", "Fa", "Pi", "Re"],
    ["Di", "Fe", "Je", "Gi"],
    ["Ju", "Fu", "Bo", "To"],
    ["Jo", "Po", "Wu", "Gu"],
    [
      "BeRi",
      "LaRi",
      "LaMe",
      "KaJi",
    ]
  ];

  var correctAnswers = ["Ba", "Gi", "Fu", "Jo", "LaRi"];
}

class Practice1 extends StatefulWidget {
  @override
  _Practice1State createState() => _Practice1State();
}

class _Practice1State extends State<Practice1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kMainBackgroundColour,
        appBar: AppBar(
          title: new RichText(
              textAlign: TextAlign.center,
              text: TextSpan(children: [
                TextSpan(
                  text: 'PRACTICE',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                ),
                TextSpan(text: "\n"),
                TextSpan(
                    text: 'Pronunciation',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0))
              ])),
          centerTitle: true,
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: Column(
          children: <Widget>[
            Container(
              child: new Text.rich(TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Guess the sound pronunciation.\n',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'Click the sound icon to hear the pronunciation.\n',
                    //'Tap the card to hear the word pronunciation.',
                    style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.bold,
                        color: kFontColorSecondary),
                  ),
                ],
              )),
              padding: EdgeInsets.all(kMainPadding),
              alignment: Alignment.centerLeft,
              height: 100,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 300,
              width: 250,
              child: Card(
                child: Icon(
                  FontAwesomeIcons.volumeUp,
                  size: 100,
                ),
              ),
            )
          ],
        ));
  }
}
