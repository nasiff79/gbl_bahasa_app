import 'package:flutter/material.dart';
import 'package:gblbahasaapp/constant.dart';

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

class Practice2 extends StatefulWidget {
  @override
  _Practice2State createState() => _Practice2State();
}

// Main Page
class _Practice2State extends State<Practice2> {
  List<ItemModel> items;
  List<ItemModel> items2;
  @override
  void initState() {
    super.initState();
    initGame();
  }

  initGame() {
    items = [
      ItemModel(nameBM: 'Saya', nameEN: 'I'),
      ItemModel(nameBM: 'Kamu', nameEN: 'You'),
      ItemModel(nameBM: 'Dia', nameEN: 'He/She'),
      ItemModel(nameEN: 'Kami', nameBM: 'We'),
      ItemModel(nameBM: 'Mereka', nameEN: 'They')
    ];
    items2 = List<ItemModel>.from(items);
    items.shuffle();
    items2.shuffle();
  }

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
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0))
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
            Container(
              padding: EdgeInsets.all(kMainPadding),
              child: Row(
                children: <Widget>[
                  Column(
                    children: items.map((item) {
                      return Container(child: Text(item.nameBM));
                    }).toList(),
                  ),
                  Spacer(),
                  // English Row
                  Column(
                    children: items.map((item) {
                      return Container(child: Text(item.nameEN));
                    }).toList(),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}

class ItemModel {
  ItemModel({this.nameBM, this.nameEN});

  final String nameBM;
  final String nameEN;
}
