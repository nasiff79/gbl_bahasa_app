import 'package:audioplayers/audio_cache.dart';
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
  // Audio Player
  void playSound(String voices) {
    final player = AudioCache();
    player.play('sound/${quiz.sound}');
  }

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
              height: 280,
              width: 250,
              child: Card(
                elevation: 5,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Ink(
//                      decoration: ShapeDecoration(shadows: [
//                        BoxShadow(
//                          blurRadius: 5,
//                        )
//                      ], color: Colors.white, shape: CircleBorder()),
                      child: IconButton(
                        icon: Icon(
                          FontAwesomeIcons.volumeUp,
                          color: Colors.black,
                        ),
                        iconSize: 140,
                        highlightColor: Colors.white30,
                        onPressed: () {
                          playSound(quiz.sound[questionNumber]);
                          //"images/${quiz.images[questionNumber]}.jpg",
                        },
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.play,
                          size: 20,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Click to play sound',
                          style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),

            // Multiple Choice
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                //button 1
                new MaterialButton(
                  minWidth: 120.0,
                  color: Colors.blueGrey,
                  onPressed: () {
                    if (quiz.choices[questionNumber][0] ==
                        quiz.correctAnswers[questionNumber]) {
                      debugPrint("Correct");
                    } else {
                      debugPrint("Wrong");
                    }
                    updateQuestion();
                  },
                  child: new Text(
                    quiz.choices[questionNumber][0],
                    style: new TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                ),

                //button 2
                new MaterialButton(
                  minWidth: 120.0,
                  color: Colors.blueGrey,
                  onPressed: () {
                    if (quiz.choices[questionNumber][1] ==
                        quiz.correctAnswers[questionNumber]) {
                      debugPrint("Correct");
                    } else {
                      debugPrint("Wrong");
                    }
                    updateQuestion();
                  },
                  child: new Text(
                    quiz.choices[questionNumber][1],
                    style: new TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                ),
              ],
            ),

            new Padding(padding: EdgeInsets.all(10.0)),

            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                //button 3
                new MaterialButton(
                  minWidth: 120.0,
                  color: Colors.blueGrey,
                  onPressed: () {
                    if (quiz.choices[questionNumber][2] ==
                        quiz.correctAnswers[questionNumber]) {
                      debugPrint("Correct");
                    } else {
                      debugPrint("Wrong");
                    }
                    updateQuestion();
                  },
                  child: new Text(
                    quiz.choices[questionNumber][2],
                    style: new TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                ),

                //button 4
                new MaterialButton(
                  minWidth: 120.0,
                  color: Colors.blueGrey,
                  onPressed: () {
                    if (quiz.choices[questionNumber][3] ==
                        quiz.correctAnswers[questionNumber]) {
                      debugPrint("Correct");
                    } else {
                      debugPrint("Wrong");
                    }
                    updateQuestion();
                  },
                  child: new Text(
                    quiz.choices[questionNumber][3],
                    style: new TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                ),
              ],
            ),

            //
          ],
        ));
  }

  void updateQuestion() {
    setState(() {
      if (questionNumber == quiz.correctAnswers.length - 1) {
        Navigator.push(context,
            new MaterialPageRoute(builder: (context) => Practice1End()));
      } else {
        questionNumber++;
      }
    });
  }
}

class Practice1End extends StatelessWidget {
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
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0))
            ])),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Center(
        child: Text("Quiz End"),
      ),
    );
  }
}
