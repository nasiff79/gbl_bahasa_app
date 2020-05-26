import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gblbahasaapp/MainScreen/learn1.dart';
import 'package:gblbahasaapp/constant.dart';

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
              child: new Text(
                'Please select category to learn.',
                style: TextStyle(
                  fontSize: 18.0,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold,
                ),
              ),
              padding: EdgeInsets.only(left: kMainPadding),
              alignment: Alignment.centerLeft,
              height: 50,
            ),

            // S E C T I O N  1 //  // S E C T I O N  1 //  // S E C T I O N  1 //
            Container(
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

            Container(
              padding: EdgeInsets.all(kMainPadding),
              height: 160.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 250,
                    height: 150,
                    child: Card(
                      elevation: 5,
                      child: Column(
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(Icons.speaker_notes),
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
                    width: 250,
                    height: 150,
                    child: Card(
                      elevation: 5,
                      child: Column(
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(Icons.group),
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

                  // CARD 3 // // CARD 3 // // CARD 3 // // CARD 3 //
                  Container(
                    width: 250,
                    height: 150,
                    child: Card(
                      elevation: 5,
                      child: Column(
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(Icons.change_history),
                            title: Text(
                              'Greetings',
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

                  // CARD 4 // // CARD 4 // // CARD 4 // // CARD 4 // // CARD 4 //
                  Container(
                    width: 250,
                    height: 150,
                    child: Card(
                      elevation: 5,
                      child: Column(
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(Icons.work),
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

                  // CARD 5 // // CARD 5 // // CARD 5 // // CARD 5 //
                  Container(
                    width: 250,
                    height: 150,
                    child: Card(
                      elevation: 5,
                      child: Column(
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(Icons.code),
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

            Container(
              padding: EdgeInsets.all(kMainPadding),
              height: 160.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 250,
                    height: 150,
                    child: Card(
                      elevation: 3,
                      child: Column(
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(Icons.category),
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
          ],
        ),
      ),
    );
  }
}
