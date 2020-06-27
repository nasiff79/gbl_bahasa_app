import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:gblbahasaapp/constant.dart';

class Learn7 extends StatefulWidget {
  @override
  _Learn7State createState() => _Learn7State();
}

class _Learn7State extends State<Learn7> {
  int _index = 0;

  void playSound(String voices) {
    final player = AudioCache();
    player.play('voices/$voices');
  }

  List<String> images = [
    'assets/images/7.Bread.png',
    'assets/images/7.Cake.png',
    'assets/images/7.Cheese.png',
    'assets/images/7.Chicken.png',
    'assets/images/7.Meat.png',
    'assets/images/7.Soup.png',
    'assets/images/7.Tea.png',
    'assets/images/7.Coffee.png',
    'assets/images/7.Milk.png',
    'assets/images/7.Egg.png',
  ];

  List<String> melayu = [
    'Roti',
    'Kek',
    'Keju',
    'Ayam',
    'Daging',
    'Sup',
    'Teh',
    'Kopi',
    'Susu',
    'Telur',
  ];

  List<String> english = [
    'Bread',
    'Cake',
    'Cheese',
    'Chicken',
    'Meat',
    'Soup',
    'Tea',
    'Coffee',
    'Milk',
    'Egg',
  ];

  List<String> voices = [
    'voice701.wav',
    'voice702.wav',
    'voice703.wav',
    'voice704.wav',
    'voice705.wav',
    'voice706.wav',
    'voice707.wav',
    'voice708.wav',
    'voice709.wav',
    'voice710.wav',
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
                    text: 'Foods and Beverages',
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
                                  "Foods and Beverages",
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
