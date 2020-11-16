import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:gblbahasaapp/constant.dart';

class Learn3 extends StatefulWidget {
  @override
  _Learn3State createState() => _Learn3State();
}

class _Learn3State extends State<Learn3> {
  int _index = 0;

  void playSound(String voices) {
    final player = AudioCache();
    player.play('voices/$voices');
  }

  List<String> images = [
    'assets/images/big.png',
    'assets/images/Tinggi.png',
    'assets/images/Bersih.png',
    'assets/images/Laju.png',
    'assets/images/Baru.png',
  ];

  List<String> images2 = [
    'assets/images/small.png',
    'assets/images/Rendah.png',
    'assets/images/Kotor.png',
    'assets/images/Lambat.png',
    'assets/images/Lama.png',
  ];

  List<String> melayu = [
    'Besar',
    'Tinggi',
    'Bersih',
    'Laju',
    'Baru',
  ];

  List<String> melayu2 = [
    'Kecil',
    'Rendah',
    'Kotor',
    'Lambat',
    'Lama',
  ];

  List<String> english = [
    'Big',
    'Tall',
    'Clean',
    'Fast',
    'New',
  ];

  List<String> english2 = [
    'Small',
    'Short',
    'Dirty',
    'Slow',
    'Old',
  ];

  List<String> voices = [
    'voice301.wav',
    'voice303.wav',
    'voice305.wav',
    'voice307.wav',
    'voice309.wav',
  ];

  List<String> voices2 = [
    'voice302.wav',
    'voice304.wav',
    'voice306.wav',
    'voice308.wav',
    'voice310.wav',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kMainBackgroundColour,
        appBar: AppBar(
          flexibleSpace: kColorAppBarLearn,
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
                    text: 'Adjectives',
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
              padding: EdgeInsets.fromLTRB(0, kMainPadding, 0, 0),
              child: Center(
                child: SizedBox(
                  height: 570, // card height
                  child: PageView.builder(
                    itemCount: 5,
                    controller: PageController(viewportFraction: 0.77),
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
                            padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Text(
                                  "Adjectives",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                //Main content
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    //context1
                                    Container(
                                      width: 120,
                                      child: Column(
                                        children: <Widget>[
                                          Image.asset(
                                            images[i],
                                            height: 250,
                                          ),
                                          Container(
                                            height: 60,
                                            child: FittedBox(
                                              fit: BoxFit.fitWidth,
                                              child: Text(
                                                melayu[i], //"Card ${i + 1}",
                                                style: TextStyle(
                                                  fontSize: 48,
                                                  fontFamily: 'Lato',
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                          FittedBox(
                                            fit: BoxFit.fitWidth,
                                            child: Text(
                                              english[i],
                                              style: TextStyle(
                                                  fontSize: 32.0,
                                                  fontFamily: 'Lato',
                                                  fontWeight: FontWeight.bold,
                                                  color: kFontColorSecondary),
                                            ),
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
                                    ),

                                    Container(
                                      width: 1,
                                      height: 400,
                                      color: Colors.grey,
                                    ),
                                    //context2
                                    Container(
                                      width: 120,
                                      child: Column(
                                        children: <Widget>[
                                          Image.asset(
                                            images2[i],
                                            height: 250,
                                          ),
                                          Container(
                                            height: 60,
                                            child: FittedBox(
                                              fit: BoxFit.fitWidth,
                                              child: Text(
                                                melayu2[i], //"Card ${i + 1}",
                                                style: TextStyle(
                                                  fontSize: 48,
                                                  fontFamily: 'Lato',
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                          FittedBox(
                                            fit: BoxFit.fitWidth,
                                            child: Text(
                                              english2[i],
                                              style: TextStyle(
                                                  fontSize: 32.0,
                                                  fontFamily: 'Lato',
                                                  fontWeight: FontWeight.bold,
                                                  color: kFontColorSecondary),
                                            ),
                                          ),
                                          IconButton(
                                            icon: Icon(Icons.volume_up),
                                            tooltip: 'Increase volume by 10',
                                            iconSize: 50,
                                            onPressed: () {
                                              playSound(voices2[i]);
                                              setState(() {});
                                            },
                                          ),
                                        ],
                                      ),
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
