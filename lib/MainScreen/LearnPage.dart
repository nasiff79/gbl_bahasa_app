import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gblbahasaapp/MainScreen/learnPage/learn1.dart';
import 'package:gblbahasaapp/MainScreen/learnPage/learn10.dart';
import 'package:gblbahasaapp/MainScreen/learnPage/learn2.dart';
import 'package:gblbahasaapp/MainScreen/learnPage/learn3.dart';
import 'package:gblbahasaapp/MainScreen/learnPage/learn4.dart';
import 'package:gblbahasaapp/MainScreen/learnPage/learn5.dart';
import 'package:gblbahasaapp/MainScreen/learnPage/learn6.dart';
import 'package:gblbahasaapp/MainScreen/learnPage/learn7.dart';
import 'package:gblbahasaapp/MainScreen/learnPage/learn8.dart';
import 'package:gblbahasaapp/MainScreen/learnPage/learn9.dart';
import 'package:gblbahasaapp/constant.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LearnPage extends StatefulWidget {
  @override
  _LearnPageState createState() => _LearnPageState();
}

class _LearnPageState extends State<LearnPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        backgroundColor: kMainBackgroundColour,
        appBar: new AppBar(
          flexibleSpace: kColorAppBarLearn,
          title: new Text(
            'Learn',
            style: TextStyle(
              fontSize: 30.0,
              fontFamily: 'Lato',
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: <Widget>[
            Container(
              child: new Text.rich(TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: "Select topic to learn.\n",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: "Swipe left/right to view more.",
                    //'Tap the card to hear the word pronunciation.',
                    style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.bold,
                        color: kFontColorSecondary),
                  ),
                ],
              )),
              padding: EdgeInsets.fromLTRB(16, 4, 16, 16),
              alignment: Alignment.centerLeft,
              height: 65,
            ),

            // S E C T I O N  1 //  // S E C T I O N  1 //  // S E C T I O N  1 //
            Container(
              height: 30,
              padding: EdgeInsets.only(left: kMainPadding),
              child: Text(
                'Section 1: Sound',
                style: TextStyle(
                  fontSize: 28.0,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // CARD 1
            Container(
              padding: EdgeInsets.fromLTRB(16, 8, 16, 16),
              height: 153.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 230,
                    height: 150,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      elevation: 5,
                      child: Column(
                        children: <Widget>[
                          const ListTile(
                            leading: Text(
                              "🗣",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 36),
                            ),
                            title: Text(
                              'Pronunciation',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          ButtonBar(
                            children: <Widget>[
                              RaisedButton(
                                child: Text('Learn'),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Learn1()),
                                  );
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // S E C T I O N 2 // // S E C T I O N 2 //  // S E C T I O N 2 //
            Container(
              padding: EdgeInsets.only(left: kMainPadding),
              child: Text(
                'Section 2: Grammar',
                style: TextStyle(
                  fontSize: 28.0,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(kMainPadding),
              height: 160.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  //CARD 2 // // CARD 2 // // CARD 2 // // CARD 2 //
                  Container(
                    width: 230,
                    height: 150,
                    child: Card(
                      color: Colors.lightBlueAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      elevation: 5,
                      child: Column(
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(
                              Icons.group,
                              size: 40,
                              color: Colors.black,
                            ),
                            title: Text(
                              'Pronouns',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          ButtonBar(
                            children: <Widget>[
                              RaisedButton(
                                child: Text('Learn'),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Learn2()),
                                  );
                                },
                                color: Colors.white,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),

                  // CARD 3 // // CARD 3 // // CARD 3 // // CARD 3 //
                  Container(
                    width: 230,
                    height: 150,
                    child: Card(
                      color: Colors.greenAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      elevation: 5,
                      child: Column(
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(
                              MdiIcons.heart,
                              size: 36,
                            ),
                            title: Text(
                              'Adjectives',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          ButtonBar(
                            children: <Widget>[
                              RaisedButton(
                                child: Text('Learn'),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Learn3()),
                                  );
                                },
                                color: Colors.white,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),

                  // CARD 4 // // CARD 4 // // CARD 4 // // CARD 4 // // CARD 4 //
                  Container(
                    width: 230,
                    height: 150,
                    child: Card(
                      color: Color(0xFFF17EA7),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      elevation: 5,
                      child: Column(
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(
                              Icons.work,
                              size: 36,
                            ),
                            title: Text(
                              'Verbs',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          ButtonBar(
                            children: <Widget>[
                              RaisedButton(
                                child: Text('Learn'),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Learn4()),
                                  );
                                },
                                color: Colors.white,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),

                  // CARD 5 // // CARD 5 // // CARD 5 // // CARD 5 //
                  Container(
                    width: 230,
                    height: 150,
                    child: Card(
                      color: Color(0xFFF3F070),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      elevation: 5,
                      child: Column(
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(
                              MdiIcons.linkVariant,
                              size: 36,
                            ),
                            title: Text(
                              'Conjunction',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          ButtonBar(
                            children: <Widget>[
                              RaisedButton(
                                child: Text('Learn'),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Learn5()),
                                  );
                                },
                                color: Colors.white,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // S E C T I O N  3 // // S E C T I O N  3 // // S E C T I O N  3 //
            Container(
              padding: EdgeInsets.only(left: kMainPadding),
              child: Text(
                'Section 3: Vocabulary',
                style: TextStyle(
                  fontSize: 28.0,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // CARD 6 // // CARD 6 // // CARD 6 // // CARD 6 //
            Container(
              padding: EdgeInsets.all(kMainPadding),
              height: 160.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 230,
                    height: 150,
                    child: Card(
                      color: Color(0xFFC86FE0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      elevation: 5,
                      child: Column(
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(
                              Icons.category,
                              size: 36,
                            ),
                            title: Text(
                              'Colors and Shapes',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          ButtonBar(
                            children: <Widget>[
                              RaisedButton(
                                child: Text('Learn'),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Learn6()),
                                  );
                                },
                                color: Colors.white,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),

                  // CARD 7 // CARD 7 // CARD 7 // CARD 7 //
                  Container(
                    width: 230,
                    height: 150,
                    child: Card(
                      color: Color(0xFFF49999),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      elevation: 5,
                      child: Column(
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(
                              Icons.fastfood,
                              size: 36,
                            ),
                            title: Text(
                              'Food and Beverages',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          ButtonBar(
                            children: <Widget>[
                              RaisedButton(
                                child: Text('Learn'),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Learn7()),
                                  );
                                },
                                color: Colors.white,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),

                  // CARD 8 // CARD 8 // CARD 8 //  CARD 8 //
                  Container(
                    width: 230,
                    height: 150,
                    child: Card(
                      color: Color(0xffD0C4C0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      elevation: 5,
                      child: Column(
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(
                              MdiIcons.cow,
                              size: 36,
                            ),
                            title: Text(
                              'Animals',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          ButtonBar(
                            children: <Widget>[
                              RaisedButton(
                                child: Text('Learn'),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Learn8()),
                                  );
                                },
                                color: Colors.white,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),

                  // CARD 9 // CARD 9 // CARD 9 // CARD 9 //
                  Container(
                    width: 230,
                    height: 150,
                    child: Card(
                      color: Color(0xFF9FDFE7),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      elevation: 5,
                      child: Column(
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(
                              MdiIcons.accountHardHat,
                              size: 36,
                            ),
                            title: Text(
                              'Occupations',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          ButtonBar(
                            children: <Widget>[
                              RaisedButton(
                                child: Text('Learn'),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Learn9()),
                                  );
                                },
                                color: Colors.white,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),

                  // CARD 10 // CARD 10 // CARD 10 // CARD 10
                  Container(
                    width: 230,
                    height: 150,
                    child: Card(
                      color: Color(0xFFCCF7B6),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      elevation: 5,
                      child: Column(
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(
                              MdiIcons.officeBuilding,
                              size: 36,
                            ),
                            title: Text(
                              'Places',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          ButtonBar(
                            children: <Widget>[
                              RaisedButton(
                                child: Text('Learn'),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Learn10()),
                                  );
                                },
                                color: Colors.white,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
