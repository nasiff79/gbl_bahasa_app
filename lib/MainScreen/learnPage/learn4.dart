import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:gblbahasaapp/constant.dart';

class Learn4 extends StatefulWidget {
  @override
  _Learn4State createState() => _Learn4State();
}

class _Learn4State extends State<Learn4> {
  int _index = 0;

  void playSound(String voices) {
    final player = AudioCache();
    player.play('voices/$voices');
  }

  List<String> images = [
    'assets/images/4. Speaking - male.png',
    'assets/images/4. Writing.png',
    'assets/images/4. Sleeping.png',
    'assets/images/4. Giving.png',
    'assets/images/4. Bring.png',
    'assets/images/4. Go.png',
    'assets/images/4. Walking.png',
    'assets/images/4. Running.png',
    'assets/images/4. Eating.png',
    'assets/images/4. Drinking.png',
  ];

  List<String> melayu = [
    'Cakap',
    'Tulis',
    'Tidur',
    'Beri',
    'Bawa',
    'Pergi',
    'Jalan',
    'Lari',
    'Makan',
    'Minum',
  ];

  List<String> english = [
    'Speak',
    'Write',
    'Sleep',
    'Give',
    'Bring',
    'Go',
    'Walk',
    'Run',
    'Eat',
    'Drink',
  ];

  List<String> voices = [
    'voice401.wav',
    'voice402.wav',
    'voice403.wav',
    'voice404.wav',
    'voice405.wav',
    'voice406.wav',
    'voice407.wav',
    'voice408.wav',
    'voice409.wav',
    'voice410.wav',
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
                    text: 'Verbs',
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
                                  "Verbs",
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
                                  height: 250,
                                ),
                                Column(
                                  children: <Widget>[
                                    Text(
                                      melayu[i], //"Card ${i + 1}",
                                      style: TextStyle(
                                        fontSize: 60,
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      english[i],
                                      style: TextStyle(
                                          fontSize: 32.0,
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
