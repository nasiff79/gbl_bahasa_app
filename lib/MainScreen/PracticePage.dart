import 'package:flutter/material.dart';

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
      body: new Center(
        child: new Text('Practice page'),
      ),
    );
  }
}
