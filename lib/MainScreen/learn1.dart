import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:gblbahasaapp/constant.dart';

class Learn1 extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('sound/card$soundNumber.wav');
  }

  Card cardSound({String text, int soundNumber}) {
    return Card(
      elevation: 4,
      child: InkWell(
        onTap: () {
          playSound(soundNumber);
        },
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainBackgroundColour,
      appBar: AppBar(
        centerTitle: true,
        title: new RichText(
            textAlign: TextAlign.center,
            text: TextSpan(children: [
              TextSpan(
                text: 'LEARN',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              TextSpan(text: "\n"),
              TextSpan(
                  text: 'Pronunciation',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0))
            ])),
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: new Text(
              'Tap the card to hear the pronunciation sound.',
              style: TextStyle(
                fontSize: 15.0,
                fontFamily: 'Lato',
                fontWeight: FontWeight.bold,
              ),
            ),
            padding: EdgeInsets.only(left: kMainPadding),
            alignment: Alignment.centerLeft,
            height: 50,
          ),
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.all(kMainPadding),
              // Create a grid with 2 columns. If you change the scrollDirection to
              // horizontal, this produces 2 rows.
              crossAxisCount: 5,
              crossAxisSpacing: 5,
              mainAxisSpacing: 20,
              // Generate 100 widgets that display their index in the List.
              children: <Widget>[
                cardSound(text: 'Ba', soundNumber: 1),
                cardSound(text: 'Bi', soundNumber: 2),
                cardSound(text: 'Bu', soundNumber: 3),
                cardSound(text: 'Be', soundNumber: 4),
                cardSound(text: 'Bo', soundNumber: 5),
                // C
                cardSound(text: 'Ca', soundNumber: 6),
                cardSound(text: 'Ci', soundNumber: 7),
                cardSound(text: 'Cu', soundNumber: 8),
                cardSound(text: 'Ce', soundNumber: 9),
                cardSound(text: 'Co', soundNumber: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
