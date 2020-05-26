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
              mainAxisSpacing: 25,
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
                // D
                cardSound(text: 'Da', soundNumber: 11),
                cardSound(text: 'Di', soundNumber: 12),
                cardSound(text: 'Du', soundNumber: 13),
                cardSound(text: 'De', soundNumber: 14),
                cardSound(text: 'Do', soundNumber: 15),
                // F
                cardSound(text: 'Fa', soundNumber: 16),
                cardSound(text: 'Fi', soundNumber: 17),
                cardSound(text: 'Fu', soundNumber: 18),
                cardSound(text: 'Fe', soundNumber: 19),
                cardSound(text: 'Fo', soundNumber: 20),
                // G
                cardSound(text: 'Ga', soundNumber: 21),
                cardSound(text: 'Gi', soundNumber: 22),
                cardSound(text: 'Gu', soundNumber: 23),
                cardSound(text: 'Ge', soundNumber: 24),
                cardSound(text: 'Go', soundNumber: 25),
                // H
                cardSound(text: 'Ha', soundNumber: 26),
                cardSound(text: 'Hi', soundNumber: 27),
                cardSound(text: 'Hu', soundNumber: 28),
                cardSound(text: 'He', soundNumber: 29),
                cardSound(text: 'Ho', soundNumber: 30),
                // J
                cardSound(text: 'Ja', soundNumber: 31),
                cardSound(text: 'Ji', soundNumber: 32),
                cardSound(text: 'Ju', soundNumber: 33),
                cardSound(text: 'Je', soundNumber: 34),
                cardSound(text: 'Jo', soundNumber: 35),
                // K
                cardSound(text: 'Ka', soundNumber: 36),
                cardSound(text: 'Ki', soundNumber: 37),
                cardSound(text: 'Ku', soundNumber: 38),
                cardSound(text: 'Ke', soundNumber: 39),
                cardSound(text: 'Ko', soundNumber: 40),
                // L
                cardSound(text: 'La', soundNumber: 41),
                cardSound(text: 'Li', soundNumber: 42),
                cardSound(text: 'Lu', soundNumber: 43),
                cardSound(text: 'Le', soundNumber: 44),
                cardSound(text: 'Lo', soundNumber: 45),
                // M
                cardSound(text: 'Ma', soundNumber: 46),
                cardSound(text: 'Mi', soundNumber: 47),
                cardSound(text: 'Mu', soundNumber: 48),
                cardSound(text: 'Me', soundNumber: 49),
                cardSound(text: 'Mo', soundNumber: 50),
                // N
                cardSound(text: 'Na', soundNumber: 51),
                cardSound(text: 'Ni', soundNumber: 52),
                cardSound(text: 'Nu', soundNumber: 53),
                cardSound(text: 'Ne', soundNumber: 54),
                cardSound(text: 'No', soundNumber: 55),
                // P
                cardSound(text: 'Pa', soundNumber: 56),
                cardSound(text: 'Pi', soundNumber: 57),
                cardSound(text: 'Pu', soundNumber: 58),
                cardSound(text: 'Pe', soundNumber: 59),
                cardSound(text: 'Po', soundNumber: 60),
                // R
                cardSound(text: 'Ra', soundNumber: 61),
                cardSound(text: 'Ri', soundNumber: 62),
                cardSound(text: 'Ru', soundNumber: 63),
                cardSound(text: 'Re', soundNumber: 64),
                cardSound(text: 'Ro', soundNumber: 65),
                // S
                cardSound(text: 'Sa', soundNumber: 66),
                cardSound(text: 'Si', soundNumber: 67),
                cardSound(text: 'Su', soundNumber: 68),
                cardSound(text: 'Se', soundNumber: 69),
                cardSound(text: 'So', soundNumber: 70),
                // T
                cardSound(text: 'Ta', soundNumber: 71),
                cardSound(text: 'Ti', soundNumber: 72),
                cardSound(text: 'Tu', soundNumber: 73),
                cardSound(text: 'Te', soundNumber: 74),
                cardSound(text: 'To', soundNumber: 75),
                // V
                cardSound(text: 'Va', soundNumber: 76),
                cardSound(text: 'Vi', soundNumber: 77),
                cardSound(text: 'Vu', soundNumber: 78),
                cardSound(text: 'Ve', soundNumber: 79),
                cardSound(text: 'Vo', soundNumber: 80),
                // W
                cardSound(text: 'Wa', soundNumber: 81),
                cardSound(text: 'Wi', soundNumber: 82),
                cardSound(text: 'Wu', soundNumber: 83),
                cardSound(text: 'We', soundNumber: 84),
                cardSound(text: 'Wo', soundNumber: 85),
                // Y
                cardSound(text: 'Ya', soundNumber: 86),
                cardSound(text: 'Yi', soundNumber: 87),
                cardSound(text: 'Yu', soundNumber: 88),
                cardSound(text: 'Ye', soundNumber: 89),
                cardSound(text: 'Yo', soundNumber: 90),
                // Z
                cardSound(text: 'Za', soundNumber: 91),
                cardSound(text: 'Zi', soundNumber: 92),
                cardSound(text: 'Zu', soundNumber: 93),
                cardSound(text: 'Ze', soundNumber: 94),
                cardSound(text: 'Zo', soundNumber: 95),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
