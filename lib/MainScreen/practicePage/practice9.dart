import 'dart:async';

import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gblbahasaapp/constant.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

var questionNumber = 0;
int score = 0;
var quiz = new Practice9Quiz();
AudioCache plyr = AudioCache();

class Practice9Quiz {
  var image = [
    "9.Firefighter.png",
    "9.Teacher.png",
    "9.Waiter.png",
    "9.Singer.png",
    "9.Painter.png"
  ];
  var imageText = ["Fire Fighter", "Teacher", "Waiter", "Singer", "Painter"];

  var sound = [
    "voice902.wav",
    "voice903.wav",
    "voice905.wav",
    "voice909.wav",
    "voice908.wav",
  ];

  var choices = [
    ["Tukang Kayu", "Polis", "Ahli Bomba", "Pelukis"],
    ["Pelayan", "Guru", "Doktor", "Hakim"],
    ["Tukang Kebun", "Pelayan", "Pelukis", "Polis"],
    ["Penyanyi", "Doktor", "Tukang Kebun", "Hakim"],
    [
      "Polis",
      "Hakim",
      "Tukang Kebun",
      "Pelukis",
    ]
  ];

  var correctAnswers = ["Ahli Bomba", "Guru", "Pelayan", "Penyanyi", "Pelukis"];
}

double percent = questionNumber / quiz.correctAnswers.length;

// Intro Page
class Practice9Intro extends StatelessWidget {
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
                  text: 'Occupations',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0))
            ])),
        centerTitle: true,
        flexibleSpace: kColorAppBarPractice,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(4),
              child: Text(
                "Multiple Choice Quiz",
                style: TextStyle(
                  fontSize: 36.0,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 5,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                  shape: BoxShape.rectangle),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
              child: Text(
                "This game is a multiple choices question with four answer choices. "
                "You need to answer correctly to proceed to the next question.\n",
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              height: 45,
              width: 180,
              child: RaisedButton(
                color: Colors.lightBlueAccent,
                elevation: 7,
                highlightColor: Colors.grey,
                child: Text(
                  "Start Game",
                  style: TextStyle(
                    fontSize: 22.0,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Practice9()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Quiz Page
class Practice9 extends StatefulWidget {
  @override
  _Practice9State createState() => _Practice9State();
}

class _Practice9State extends State<Practice9> {
  int timer = 30;
  String showtimer = "30";
  bool canceltimer = false;
  // Audio Player
  void playSound(String voices) {
    final player = AudioCache();
    player.play('voices/${quiz.sound[questionNumber]}');
  }

  @override
  void initState() {
    starttimer();
    super.initState();
  }

  void starttimer() async {
    const onesec = Duration(seconds: 1);
    Timer.periodic(onesec, (Timer t) {
      if (mounted) {
        setState(() {
          if (timer < 1) {
            t.cancel();
            answerFalse();
          } else if (canceltimer == true) {
            t.cancel();
          } else {
            timer = timer - 1;
          }
          showtimer = timer.toString();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
          backgroundColor: kMainBackgroundColour,
          appBar: AppBar(
            leading: BackButton(
              onPressed: () {
                resetQuiz();
              },
            ),
            title: new RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: [
                  TextSpan(
                    text: 'PRACTICE',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  TextSpan(text: "\n"),
                  TextSpan(
                      text: 'Occupations',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 25.0))
                ])),
            centerTitle: true,
            flexibleSpace: kColorAppBarPractice,
          ),
          body: Column(
            children: <Widget>[
              //Indicator
              Container(
                padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                child: LinearPercentIndicator(
                  width: 395.0,
                  lineHeight: 8.0,
                  percent: percent,
                  backgroundColor: Color(0xffFFCBC2),
                  progressColor: kColorMainPractice,
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(8, 4, 16, 0),
                alignment: Alignment.centerRight,
                child: Text(
                  "${(percent * 100).toStringAsFixed(0)}" + "% Completed",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: kFontColorSecondary,
                      fontSize: 16),
                ),
              ),
              // Instruction
              Container(
                child: new Text.rich(TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: kTextInstruction1,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: kTextInstruction2,
                      //'Tap the card to hear the word pronunciation.',
                      style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.bold,
                          color: kFontColorSecondary),
                    ),
                  ],
                )),
                padding: EdgeInsets.fromLTRB(16, 4, 16, 0),
                alignment: Alignment.centerLeft,
                height: 50,
              ),
              // Timer and Score
              Container(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 40,
                      width: 120,
                      child: Card(
                        color: kTimerColor,
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "⏱️ Time : " + showtimer + "s",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.bold,
                                  color: kFontColorSecondary),
                            ),
                          ],
                        ),
                      ),
                    ),

                    //Main Card
                    Container(
                      height: 40,
                      width: 120,
                      child: Card(
                        color: kScoreColor,
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "⭐ Score : " + score.toString(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.bold,
                                  color: kFontColorSecondary),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),

              //Main card
              Container(
                height: 310,
                width: 240,
                child: Card(
                  elevation: 5,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Question ${questionNumber + 1} of ${quiz.correctAnswers.length}",
                        style: new TextStyle(
                            fontSize: 18.0,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.bold,
                            color: kFontColorSecondary),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Image.asset(
                          "assets/images/${quiz.image[questionNumber]}",
                          height: 150,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        quiz.imageText[questionNumber],
                        style: TextStyle(
                            fontSize: 40.0,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 30,
                        width: 100,
                        child: RaisedButton(
                          color: kColorMainPractice,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.redAccent)),
                          child: Text(
                            "💡Hint  ",
                            style: TextStyle(
                                fontSize: 18.0,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                            textAlign: TextAlign.left,
                          ),
                          onPressed: () {
                            playSound(quiz.sound[questionNumber]);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 0,
              ),
              Container(
                padding: EdgeInsets.only(left: 36),
                alignment: Alignment.centerLeft,
                height: 50,
                child: Text(
                  'Choose the correct answer:',
                  style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.bold,
                      color: kFontColorSecondary),
                ),
              ),

              // Multiple Choice
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  //button 1
                  Container(
                    width: 170,
                    child: new MaterialButton(
                      elevation: 7,
                      minWidth: 150.0,
                      height: 70,
                      color: Colors.white,
                      splashColor: Colors.lightBlueAccent,
                      onPressed: () {
                        if (quiz.choices[questionNumber][0] ==
                            quiz.correctAnswers[questionNumber]) {
                          debugPrint("Correct");
                          print(percent);
                          answerTrue();
                        } else {
                          debugPrint("Wrong");
                          answerFalse();
                        }
                      },
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: new Text(
                          quiz.choices[questionNumber][0],
                          style: new TextStyle(
                              fontSize: 36,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),

                  //button 2
                  Container(
                    width: 170,
                    child: new MaterialButton(
                      elevation: 7,
                      minWidth: 150.0,
                      height: 70,
                      color: Colors.white,
                      splashColor: Colors.lightBlueAccent,
                      onPressed: () {
                        if (quiz.choices[questionNumber][1] ==
                            quiz.correctAnswers[questionNumber]) {
                          debugPrint("Correct");
                          answerTrue();
                        } else {
                          debugPrint("Wrong");
                          answerFalse();
                        }
                      },
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: new Text(
                          quiz.choices[questionNumber][1],
                          style: new TextStyle(
                              fontSize: 36,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 24,
              ),

              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  //button 3
                  Container(
                    width: 170,
                    child: new MaterialButton(
                      elevation: 7,
                      minWidth: 150.0,
                      height: 70,
                      color: Colors.white,
                      splashColor: Colors.lightBlueAccent,
                      onPressed: () {
                        if (quiz.choices[questionNumber][2] ==
                            quiz.correctAnswers[questionNumber]) {
                          debugPrint("Correct");
                          answerTrue();
                        } else {
                          debugPrint("Wrong");
                          answerFalse();
                        }
                      },
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: new Text(
                          quiz.choices[questionNumber][2],
                          style: new TextStyle(
                              fontSize: 36,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),

                  //button 4
                  Container(
                    width: 170,
                    child: new MaterialButton(
                      elevation: 7,
                      minWidth: 150.0,
                      height: 70,
                      color: Colors.white,
                      splashColor: Colors.lightBlueAccent,
                      onPressed: () {
                        if (quiz.choices[questionNumber][3] ==
                            quiz.correctAnswers[questionNumber]) {
                          debugPrint("Correct");
                          answerTrue();
                        } else {
                          debugPrint("Wrong");
                          answerFalse();
                        }
                      },
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: new Text(
                          quiz.choices[questionNumber][3],
                          style: new TextStyle(
                              fontSize: 36,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          )),
    );
  }

  // True method
  void answerTrue() {
    plyr.play("correct.wav");
    score += 1;
    // progress indicator
    if (percent == 1) {
      percent += 0;
    } else {
      percent += 0.2;
    }
    setState(() {
      canceltimer = true;
      showModalBottomSheet(
          isDismissible: false,
          context: context,
          builder: (BuildContext context) {
            return Container(
              height: 120,
              color: kColorCorrect,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "You are correct",
                      style: TextStyle(
                          fontSize: 22.0,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.bold,
                          color: kColorAppleGreen2),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: kColorAppleGreen2)),
                          child: const Text(
                            'Continue',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w800),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                            updateQuestion();
                          }),
                    )
                  ],
                ),
              ),
            );
          });
    });
  }

  // False method
  void answerFalse() {
    plyr.play("wrong.wav");
    //Progress Bar
    if (percent == 1) {
      percent += 0;
    } else {
      percent += 0.2;
    }
    setState(() {
      canceltimer = true;
      showModalBottomSheet(
          isDismissible: false,
          context: context,
          builder: (BuildContext context) {
            return Container(
              height: 120,
              color: kColorWrong,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      timer == 0 ? "Time's up" : "Wrong Answer",
                      style: TextStyle(
                          fontSize: 22.0,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.bold,
                          color: kColorBitterSweet2),
                    ),
                    Text(
                      "Correct Answer : " +
                          quiz.correctAnswers[questionNumber].toString(),
                      style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.bold,
                          color: kColorBitterSweet2),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.red)),
                        child: const Text(
                          'Continue',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w800),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                          Timer(Duration(milliseconds: 300), updateQuestion);
                        },
                      ),
                    )
                  ],
                ),
              ),
            );
          });
    });
  }

  // Reset method
  void resetQuiz() {
    setState(() {
      canceltimer = false;
      Navigator.pop(context);
      score = 0;
      percent = 0;
      questionNumber = 0;
    });
  }

  // Update method
  void updateQuestion() {
    canceltimer = false;
    timer = 30;
    setState(() {
      if (questionNumber == quiz.correctAnswers.length - 1) {
        canceltimer = true;
        Navigator.push(context,
            new MaterialPageRoute(builder: (context) => Practice1End()));
      } else {
        questionNumber++;
        starttimer();
      }
    });
  }
}

// Game Over
class Practice1End extends StatefulWidget {
  @override
  _Practice1EndState createState() => _Practice1EndState();
}

class _Practice1EndState extends State<Practice1End> {
  String message;

  @override
  void initState() {
    if (score == 5) {
      message = "🌟 🌟 🌟 🌟 🌟\n\n"
              "Excellent! " +
          "You scored $score.";
    } else if (score == 4) {
      message = "🌟 🌟 🌟 🌟\n\n"
              "Well done! " +
          "You scored $score.";
    } else if (score == 3) {
      message = "🌟 🌟 🌟\n\n"
              "Good job! " +
          "You scored $score.";
    } else if (score == 2) {
      message = "🌟 🌟\n\n"
              "Nice try, " +
          "you scored $score.";
    } else {
      message = "🌟\n\n"
              "Learn more, " +
          "you scored $score.";
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: kMainBackgroundColour,
        appBar: AppBar(
          leading: BackButton(
            onPressed: () {
              score = 0;
              percent = 0;
              Navigator.pop(context);
              Navigator.pop(context);
              questionNumber = 0;
            },
          ),
          title: new RichText(
              textAlign: TextAlign.center,
              text: TextSpan(children: [
                TextSpan(
                  text: 'PRACTICE',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                ),
                TextSpan(text: "\n"),
                TextSpan(
                    text: 'Adjectives',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0))
              ])),
          centerTitle: true,
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text(
                  "Quiz End",
                  style: TextStyle(
                    fontSize: 40.0,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Rewards :",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text(
                  score == 5
                      ? "🎂"
                      : score == 4
                          ? "🍨"
                          : score == 3 ? "🍩" : score == 2 ? "🍭" : "🍬",
                  style: TextStyle(fontSize: 120),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Text(
                  message,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 50,
                width: 180,
                child: RaisedButton(
                  color: kColorMainPractice,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.redAccent)),
                  child: Text(
                    "Play Again",
                    style: TextStyle(
                        fontSize: 22.0,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                    score = 0;
                    percent = 0;
                    questionNumber = 0;
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 180,
                child: RaisedButton(
                  color: kColorMainPractice,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.redAccent)),
                  child: Text(
                    "Exit",
                    style: TextStyle(
                        fontSize: 22.0,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  onPressed: () {
                    score = 0;
                    percent = 0;
                    questionNumber = 0;
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
