import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gblbahasaapp/MainScreen/practicePage/practice1.dart';
import 'package:gblbahasaapp/MainScreen/practicePage/practice2.dart';
import 'package:gblbahasaapp/constant.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PracticePage extends StatefulWidget {
  @override
  _PracticePageState createState() => _PracticePageState();
}

class _PracticePageState extends State<PracticePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          'Practice',
          style: TextStyle(
            fontSize: 30.0,
            fontFamily: 'Lato',
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: new Text(
              'Please select category to practice.',
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

          // S E C T I O N  1 //  // S E C T I O N  1 //   // S E C T I O N  1 //
          Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.circular(20),
                        shape: BoxShape.rectangle),
                    child: Text('Section 1: Sound',
                        style: kTextStylePracticeSection)),
                Container(
                  height: 20,
                ),
                RawMaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Practice1Intro()),
                    );
                  },
                  elevation: 10.0,
                  fillColor: Colors.white,
                  child: Icon(
                    MdiIcons.soundcloud,
                    size: 75.0,
                  ),
                  padding: EdgeInsets.all(25.0),
                  shape: CircleBorder(
                      side: BorderSide(width: 5, color: Colors.black26)),
                  highlightColor: Colors.blue,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Pronunciation',
                  style: kTextStylePracticeIcon,
                ),
                SizedBox(
                  height: 50,
                )
              ],
            ),
          ),

          // S E C T I O N   2 // // S E C T I O N   2 //  // S E C T I O N   2 //
          Center(
            child: Column(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.circular(20),
                        shape: BoxShape.rectangle),
                    child: Text('Section 2: Grammar',
                        style: kTextStylePracticeSection)),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        // C A R D  2 //
                        RawMaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Practice2Intro()),
                            );
                          },
                          elevation: 10.0,
                          fillColor: Colors.white,
                          child: Icon(
                            Icons.group,
                            size: 75.0,
                          ),
                          padding: EdgeInsets.all(25.0),
                          shape: CircleBorder(
                              side:
                                  BorderSide(width: 5, color: Colors.black26)),
                          highlightColor: Colors.blue,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Pronouns',
                          style: kTextStylePracticeIcon,
                        ),
                      ],
                    ),
                    //
                    SizedBox(
                      width: 50,
                    ),

                    // CARD 3 //
                    Column(
                      children: <Widget>[
                        RawMaterialButton(
                          onPressed: () {},
                          elevation: 10.0,
                          fillColor: Colors.white,
                          child: Icon(
                            MdiIcons.starFourPoints,
                            size: 75.0,
                          ),
                          padding: EdgeInsets.all(25.0),
                          shape: CircleBorder(
                              side:
                                  BorderSide(width: 5, color: Colors.black26)),
                          highlightColor: Colors.blue,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Adjectives',
                          style: kTextStylePracticeIcon,
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(
                  height: 30,
                ),

                // C A R D  4 // C A R D  4 // C A R D  4 // C A R D  4 //
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        RawMaterialButton(
                          onPressed: () {},
                          elevation: 10.0,
                          fillColor: Colors.white,
                          child: Icon(
                            Icons.work,
                            size: 75.0,
                          ),
                          padding: EdgeInsets.all(25.0),
                          shape: CircleBorder(
                              side:
                                  BorderSide(width: 5, color: Colors.black26)),
                          highlightColor: Colors.blue,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Verbs',
                          style: kTextStylePracticeIcon,
                        ),
                      ],
                    ),
                    //
                    SizedBox(
                      width: 50,
                    ),

                    // C A R D  5 // C A R D  5 // C A R D  5 // C A R D  5 //
                    Column(
                      children: <Widget>[
                        RawMaterialButton(
                          onPressed: () {},
                          elevation: 10.0,
                          fillColor: Colors.white,
                          child: Icon(
                            MdiIcons.link,
                            size: 75.0,
                          ),
                          padding: EdgeInsets.all(25.0),
                          shape: CircleBorder(
                              side:
                                  BorderSide(width: 5, color: Colors.black26)),
                          highlightColor: Colors.blue,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Conjunction',
                          style: kTextStylePracticeIcon,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),

                //
              ],
            ),
          ),

          // S E C T I O N 3 //  S E C T  I O N  3 //  S E C T  I O N  3//
          Center(
            child: Column(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.circular(20),
                        shape: BoxShape.rectangle),
                    child: Text('Section 3: Vocabulary',
                        style: kTextStylePracticeSection)),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        // C A R D  6 // // C A R D  6 //  // C A R D  6 //  // C A R D  6 //
                        RawMaterialButton(
                          onPressed: () {},
                          elevation: 10.0,
                          fillColor: Colors.white,
                          child: Icon(
                            Icons.category,
                            size: 75.0,
                          ),
                          padding: EdgeInsets.all(25.0),
                          shape: CircleBorder(
                              side:
                                  BorderSide(width: 5, color: Colors.black26)),
                          highlightColor: Colors.blue,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 120,
                          child: Text(
                            'Colours and Shapes',
                            style: kTextStylePracticeIcon,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    //
                    SizedBox(
                      width: 50,
                    ),

                    // C A R D  7 // // C A R D  7 // // C A R D  7 // // C A R D  7 //
                    Column(
                      children: <Widget>[
                        RawMaterialButton(
                          onPressed: () {},
                          elevation: 10.0,
                          fillColor: Colors.white,
                          child: Icon(
                            Icons.fastfood,
                            size: 75.0,
                          ),
                          padding: EdgeInsets.all(25.0),
                          shape: CircleBorder(
                              side:
                                  BorderSide(width: 5, color: Colors.black26)),
                          highlightColor: Colors.blue,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 120,
                          child: Text(
                            'Foods and Beverages',
                            style: kTextStylePracticeIcon,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),

                // C A R D  8 // C A R D  8 // C A R D  8 // C A R D  8 //
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        RawMaterialButton(
                          onPressed: () {},
                          elevation: 10.0,
                          fillColor: Colors.white,
                          child: Icon(
                            MdiIcons.cow,
                            size: 75.0,
                          ),
                          padding: EdgeInsets.all(25.0),
                          shape: CircleBorder(
                              side:
                                  BorderSide(width: 5, color: Colors.black26)),
                          highlightColor: Colors.blue,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Animals',
                          style: kTextStylePracticeIcon,
                        ),
                      ],
                    ),
                    //
                    SizedBox(
                      width: 50,
                    ),
                    Column(
                      children: <Widget>[
                        // C A R D  9 // C A R D  9 // C A R D  9 // C A R D  9 //
                        RawMaterialButton(
                          onPressed: () {},
                          elevation: 10.0,
                          fillColor: Colors.white,
                          child: Icon(
                            MdiIcons.accountHardHat,
                            size: 75.0,
                          ),
                          padding: EdgeInsets.all(25.0),
                          shape: CircleBorder(
                              side:
                                  BorderSide(width: 5, color: Colors.black26)),
                          highlightColor: Colors.blue,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Occupation',
                          style: kTextStylePracticeIcon,
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(
                  height: 30,
                ),

                Column(
                  children: <Widget>[
                    // C A R D  9 // C A R D  9 // C A R D  9 // C A R D  9 //
                    RawMaterialButton(
                      onPressed: () {},
                      elevation: 10.0,
                      fillColor: Colors.white,
                      child: Icon(
                        MdiIcons.officeBuilding,
                        size: 75.0,
                      ),
                      padding: EdgeInsets.all(25.0),
                      shape: CircleBorder(
                          side: BorderSide(width: 5, color: Colors.black26)),
                      highlightColor: Colors.blue,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Places',
                      style: kTextStylePracticeIcon,
                    ),
                  ],
                ),

                SizedBox(
                  height: 40,
                ),

                //
              ],
            ),
          ),
        ],
      ),
    );
  }
}
