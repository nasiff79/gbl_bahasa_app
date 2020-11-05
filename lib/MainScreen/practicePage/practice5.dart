import 'dart:async';
import 'dart:math';

import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gblbahasaapp/constant.dart';

AudioCache plyr = AudioCache();

// Intro Page
class Practice5Intro extends StatelessWidget {
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
                  text: 'Conjunction',
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
                "Drag and Drop Game",
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
                "Drag and drop the card onto the box with their respective meaning. "
                "You need to answer correctly to finish the game.\n",
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400),
              ),
            ),
            RaisedButton(
              color: Colors.lightBlueAccent,
              elevation: 5,
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
                  MaterialPageRoute(builder: (context) => Practice5()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Practice5 extends StatefulWidget {
  @override
  _Practice5State createState() => _Practice5State();
}

class _Practice5State extends State<Practice5> {
  int timer = 60;
  String showtimer = "60";
  bool canceltimer = false;
  int point = 0;

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
            answerTrue();
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

  /// Map to keep track of score
  final Map<String, bool> score = {};

  /// Choices for game
  final Map choices = {
    'Dan': 'And',
    'Atau': 'Or',
    'Untuk': 'For',
    'Tapi': 'But',
    'Kerana': 'Because',
    'Jika': 'If',
  };

  // Random seed to shuffle order of items.
  int seed = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              TextSpan(text: "\n"),
              TextSpan(
                  text: 'Conjunction',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0))
            ])),
        centerTitle: true,
        flexibleSpace: kColorAppBarPractice,
      ),
      body: Column(
        children: <Widget>[
          //Instruction
          Container(
            child: new Text.rich(TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: 'Match the card with the meaning.\n',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: 'Drag the card and place it in the right box.\n',
                  //'Tap the card to hear the word pronunciation.',
                  style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.bold,
                      color: kFontColorSecondary),
                ),
              ],
            )),
            padding: EdgeInsets.fromLTRB(16, 16, 16, 4),
            alignment: Alignment.centerLeft,
            height: 60,
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
                          "⭐ Score : " +
                              point.toString() +
                              " / " +
                              choices.length.toString(),
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

          // Body
          Container(
            padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
            child: Column(
              children: <Widget>[
                // Language
                Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        " Bahasa Malaysia",
                        style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.bold,
                            color: kFontColorSecondary),
                      ),
                    ),
                    Spacer(),
                    Container(
                      child: Text(
                        "English          ",
                        style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.bold,
                            color: kFontColorSecondary),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: choices.keys.map((card) {
                          return Draggable<String>(
                            data: card,
                            child: DragCard(
                                card: score[card] == true ? '✅' : card),
                            feedback: DragCard(card: card),
                            childWhenDragging: Container(
                              height: 80,
                              width: 150,
                            ),
                          );
                        }).toList()),
                    Container(
                      color: Colors.black,
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: choices.keys
                          .map((card) => _buildDragTarget(card))
                          .toList()
                            ..shuffle(Random(seed)),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Drag target method
  Widget _buildDragTarget(card) {
    return DragTarget<String>(
      builder: (BuildContext context, List<String> incoming, List rejected) {
        if (score[card] == true) {
          return Container(
            height: 63,
            width: 150,
            margin: EdgeInsets.all(8),
            color: kColorCorrect,
            child: Text(
              'Correct!',
              style: TextStyle(
                  fontSize: 28,
                  color: kColorAppleGreen2,
                  fontWeight: FontWeight.bold),
            ),
            alignment: Alignment.center,
          );
        } else {
          return Container(
            height: 63,
            width: 150,
            margin: EdgeInsets.all(8),
            color: Color(0xFFE0DEDE),
            child: Center(
                child: Text(
              choices[card],
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            )),
          );
        }
      },
      onWillAccept: (data) {
        return data == card;
      },
      onAccept: (data) {
        setState(() {
          score[card] = true;
          plyr.play('correct.wav');
          point += 1;
        });
        if (score.length == 6) {
          answerTrue();
        }
      },
      onLeave: (data) {
        setState(() {});
      },
    );
  }

  // Answer True method
  void answerTrue() {
//    plyr.play("correct.wav");
    setState(() {
      canceltimer = true;
      showModalBottomSheet(
          isDismissible: false,
          context: context,
          builder: (BuildContext context) {
            return Container(
              height: 220,
              color: timer == 0 ? kColorWrong : kColorCorrect,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      timer == 0
                          ? "Time's up"
                          : "Game Finished in " +
                              (60 - timer).toString() +
                              " seconds.",
                      style: TextStyle(
                          fontSize: 22.0,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.bold,
                          color: timer == 0
                              ? kColorBitterSweet2
                              : kColorAppleGreen2),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Rewards :",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      timer > 40
                          ? "🌟 🌟 🌟 🌟 🌟"
                          : timer > 30
                              ? "🌟 🌟 🌟 🌟"
                              : timer > 15
                                  ? "🌟 🌟 🌟"
                                  : timer > 0 ? "🌟 🌟" : "🌟",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30.0,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    //button play again
                    RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(
                                color: timer == 0
                                    ? kColorBitterSweet2
                                    : kColorAppleGreen2)),
                        child: const Text(
                          'Play again.',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.pop(context);
                        }),
                    SizedBox(
                      height: 5,
                    ),
                    // button exit
                    RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(
                                color: timer == 0
                                    ? kColorBitterSweet2
                                    : kColorAppleGreen2)),
                        child: const Text(
                          'Main Menu.',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.pop(context);
                          Navigator.pop(context);
                        })
                  ],
                ),
              ),
            );
          });
    });
  }

  void resetQuiz() {
    setState(() {
      canceltimer = false;
      Navigator.pop(context);
      point = 0;
    });
  }
}

//Card class
class DragCard extends StatelessWidget {
  DragCard({Key key, this.card}) : super(key: key);

  final String card;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 150,
      child: Card(
        margin: EdgeInsets.all(12),
        elevation: 8,
        child: Center(
          child: Text(
            card,
            style: TextStyle(
                fontSize: 28, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
