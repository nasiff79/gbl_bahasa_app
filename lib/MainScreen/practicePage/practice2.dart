import 'dart:math';

import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gblbahasaapp/constant.dart';

AudioCache plyr = AudioCache();

// Intro Page
class Practice2Intro extends StatelessWidget {
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
                  text: 'Pronouns',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0))
            ])),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
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
                  MaterialPageRoute(builder: (context) => Practice2()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

//class Practice2 extends StatefulWidget {
//  @override
//  _Practice2State createState() => _Practice2State();
//}
//
//// Main Page
//class _Practice2State extends State<Practice2> {
//  List<ItemModel> items;
//  List<ItemModel> items2;
//  @override
//  void initState() {
//    super.initState();
//    initGame();
//  }
//
//  initGame() {
//    items = [
//      ItemModel(nameBM: 'Saya', value: 'I', nameEN: 'I'),
//      ItemModel(nameBM: 'Kamu', value: 'You', nameEN: 'You'),
//      ItemModel(nameBM: 'Dia', value: 'He/She', nameEN: 'He/She'),
//      ItemModel(nameEN: 'Kami', value: 'We', nameBM: 'We'),
//      ItemModel(nameBM: 'Mereka', value: 'They', nameEN: 'They')
//    ];
//    items2 = List<ItemModel>.from(items);
//    items.shuffle();
//    items2.shuffle();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//        appBar: AppBar(
//          leading: BackButton(
//            onPressed: () {},
//          ),
//          title: new RichText(
//              textAlign: TextAlign.center,
//              text: TextSpan(children: [
//                TextSpan(
//                  text: 'PRACTICE',
//                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
//                ),
//                TextSpan(text: "\n"),
//                TextSpan(
//                    text: 'Pronouns',
//                    style:
//                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0))
//              ])),
//          centerTitle: true,
//          backgroundColor: Colors.deepOrangeAccent,
//        ),
//        body: Column(
//          children: <Widget>[
//            //Instruction
//            Container(
//              child: new Text.rich(TextSpan(
//                children: <TextSpan>[
//                  TextSpan(
//                    text: 'Match the card with their meaning.\n',
//                    style: TextStyle(
//                      fontSize: 22.0,
//                      fontFamily: 'Lato',
//                      fontWeight: FontWeight.bold,
//                    ),
//                  ),
//                  TextSpan(
//                    text: 'Drag the card and place it in the right box.\n',
//                    //'Tap the card to hear the word pronunciation.',
//                    style: TextStyle(
//                        fontSize: 16.0,
//                        fontFamily: 'Lato',
//                        fontWeight: FontWeight.bold,
//                        color: kFontColorSecondary),
//                  ),
//                ],
//              )),
//              padding: EdgeInsets.all(kMainPadding),
//              alignment: Alignment.centerLeft,
//              height: 100,
//            ),
//            Container(
//              padding: EdgeInsets.all(kMainPadding),
//              child: Row(
//                children: <Widget>[
//                  // BM Row
//                  Column(
//                    children: items.map((item) {
//                      return Container(
//                          height: 80,
//                          width: 150,
//                          child: Draggable(
//                            data: item,
//                            childWhenDragging: Container(),
//                            child: Card(
//                                margin: EdgeInsets.all(12),
//                                elevation: 8,
//                                child: Center(
//                                  child: Text(
//                                    item.nameBM,
//                                    style: TextStyle(
//                                        fontSize: 28,
//                                        color: Colors.black,
//                                        fontWeight: FontWeight.bold),
//                                  ),
//                                )),
//                            feedback: Container(
//                              height: 80,
//                              width: 150,
//                              child: Card(
//                                  margin: EdgeInsets.all(12),
//                                  elevation: 8,
//                                  child: Center(
//                                    child: Text(
//                                      item.nameBM,
//                                      style: TextStyle(
//                                          fontSize: 28,
//                                          color: Colors.black,
//                                          fontWeight: FontWeight.bold),
//                                    ),
//                                  )),
//                            ),
//                          ));
//                    }).toList(),
//                  ),
//                  Spacer(),
//                  // English Row
//                  Column(
//                    children: items.map((item) {
//                      return DragTarget<ItemModel>(
//                          onAccept: (receivedItem) {
//                            if (item.value == receivedItem.value) {
//                              setState(() {
//                                items.remove(receivedItem);
//                              });
//                            }
//                          },
//                          onWillAccept: (receivedItem) => true,
//                          builder: (context, acceptedItems, rejectedItems) {
//                            return Container(
//                                height: 80,
//                                width: 150,
//                                child: Container(
//                                    margin: EdgeInsets.all(12),
//                                    decoration: BoxDecoration(
//                                        color: Colors.lightBlueAccent,
//                                        border: Border.all(width: 3)),
//                                    child: Center(
//                                      child: Text(
//                                        item.nameEN,
//                                        style: TextStyle(
//                                            fontSize: 28,
//                                            color: Colors.black,
//                                            fontWeight: FontWeight.bold),
//                                      ),
//                                    )));
//                          });
//                    }).toList(),
//                  ),
//                ],
//              ),
//            )
//          ],
//        ));
//  }
//}
//
//class ItemModel {
//  ItemModel({this.nameBM, this.value, this.nameEN});
//
//  final String nameBM;
//  String value;
//  final String nameEN;
//}
class Practice2 extends StatefulWidget {
  @override
  _Practice2State createState() => _Practice2State();
}

class _Practice2State extends State<Practice2> {
  /// Map to keep track of score
  final Map<String, bool> score = {};

  /// Choices for game
  final Map choices = {
    'Saya': 'I',
    'Kamu': 'You',
    'Dia': 'He/She',
    'Kami': 'We',
    'Mereka': 'They',
  };

  // Random seed to shuffle order of items.
  int seed = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {},
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
                  text: 'Pronouns',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0))
            ])),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Column(
        children: <Widget>[
          //Instruction
          Container(
            child: new Text.rich(TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: 'Match the card with their meaning.\n',
                  style: TextStyle(
                    fontSize: 22.0,
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
            padding: EdgeInsets.all(kMainPadding),
            alignment: Alignment.centerLeft,
            height: 100,
          ),
          // Language
          Container(
            padding: EdgeInsets.all(kMainPadding),
            child: Column(
              children: <Widget>[
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
                        "English             ",
                        style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.bold,
                            color: kFontColorSecondary),
                      ),
                    ),
                  ],
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
            height: 75,
            width: 180,
            margin: EdgeInsets.all(8),
            color: kColorCorrect,
            child: Text('Correct!'),
            alignment: Alignment.center,
          );
        } else {
          return Container(
            height: 75,
            width: 180,
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
      onWillAccept: (data) => data == card,
      onAccept: (data) {
        setState(() {
          score[card] = true;
          plyr.play('correct.wav');
        });
      },
      onLeave: (data) {},
    );
  }

  // Answer True method
  void answerTrue() {
    plyr.play("correct.wav");
    setState(() {
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
                      height: 5,
                    ),
                    RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: kColorAppleGreen2)),
                        child: const Text('Continue'),
                        onPressed: () {
                          Navigator.pop(context);
                        })
                  ],
                ),
              ),
            );
          });
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