import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:gblbahasaapp/constant.dart';

class Learn9 extends StatefulWidget {
  @override
  _Learn9State createState() => _Learn9State();
}

class _Learn9State extends State<Learn9> {
  int _index = 0;

  void playSound(String voices) {
    final player = AudioCache();
    player.play('voices/$voices');
  }

  List<String> images = [
    'assets/images/9. Police.png',
    'assets/images/9. Firefighter.png',
    'assets/images/9. Teacher.png',
    'assets/images/9. Doctor.png',
    'assets/images/9. Waiter.png',
    'assets/images/9. Judge.png',
    'assets/images/9. Garderner.png',
    'assets/images/9. Singer.png',
    'assets/images/9. Painter.png',
    'assets/images/9. Carpenter.png',
  ];

  List<String> melayu = [
    'Polis',
    'Ahli Bomba',
    'Guru',
    'Doktor',
    'Pelayan',
    'Hakim',
    'Pekebun',
    'Penyanyi',
    'Pelukis',
    'Tukang Kayu',
  ];

  List<String> english = [
    'Police',
    'Fire Fighter',
    'Teacher',
    'Doctor',
    'Waiter',
    'Judge',
    'Gardener',
    'Singer',
    'Painter',
    'Carpenter',
  ];

  List<String> voices = [
    'voice901.wav',
    'voice902.wav',
    'voice903.wav',
    'voice904.wav',
    'voice905.wav',
    'voice906.wav',
    'voice907.wav',
    'voice909.wav',
    'voice908.wav',
    'voice910.wav',
  ];

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
                    text: 'Occupations',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0))
              ])),
        ),
        body: Column(
          children: <Widget>[
            Container(
              child: new Text.rich(TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Learn words:\n',
                    style: TextStyle(
                      fontSize: 28.0,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'Swipe right or left to learn new words.\n',
                    //'Tap the card to hear the word pronunciation.',
                    style: TextStyle(
                        fontSize: 18.0,
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

            // Body //
            Container(
              height: 550,
              padding: EdgeInsets.fromLTRB(0, kMainPadding, 0, kMainPadding),
              child: Center(
                child: SizedBox(
                  height: 550, // card height
                  child: PageView.builder(
                    itemCount: 10,
                    controller: PageController(viewportFraction: 0.7),
                    onPageChanged: (int index) =>
                        setState(() => _index = index),
                    itemBuilder: (_, i) {
                      return Transform.scale(
                        scale: i == _index ? 1 : 0.9,
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Container(
                            padding: EdgeInsets.all(kMainPadding),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Text(
                                  "Occupations",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  height: 20,
                                ),
                                Image.asset(
                                  images[i],
                                  height: 200,
                                ),
                                Column(
                                  children: <Widget>[
                                    Text(
                                      melayu[i], //"Card ${i + 1}",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 42,
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.bold,
                                        height: 1,
                                      ),
                                    ),
                                    Text(
                                      english[i],
                                      style: TextStyle(
                                          fontSize: 28.0,
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.bold,
                                          color: kFontColorSecondary),
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.volume_up),
                                      tooltip: 'Increase volume by 10',
                                      iconSize: 50,
                                      onPressed: () {
                                        playSound(voices[i]);
                                        setState(() {});
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
