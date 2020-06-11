import 'package:flutter/material.dart';
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
          Center(
            child: Column(
              children: <Widget>[
                Text(
                  'Section 1: Sound',
                  style: TextStyle(
                    fontSize: 28.0,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 20,
                ),
                RawMaterialButton(
                  onPressed: () {},
                  elevation: 10.0,
                  fillColor: Colors.white,
                  child: Icon(
                    MdiIcons.soundcloud,
                    size: 75.0,
                  ),
                  padding: EdgeInsets.all(15.0),
                  shape: CircleBorder(
                      side: BorderSide(width: 5, color: Colors.black26)),
                  highlightColor: Colors.blue,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Pronunciation',
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 20,
                    color: const Color(0xff8e8e7b),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
