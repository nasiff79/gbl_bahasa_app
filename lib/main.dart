import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'menu.dart';

void main() {
  runApp(MaterialApp(
    title: 'Learn Bahasa Malaysia',
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      title: Text.rich(
        TextSpan(
          children: <TextSpan>[
            TextSpan(
                text: ' Learn Bahasa Malaysia\n ',
                style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0)),
            TextSpan(
                text: 'Game Based Learning App',
                style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0)),
          ],
        ),
        textAlign: TextAlign.center,
      ),
      seconds: 1,
      navigateAfterSeconds: MenuScreen(),
      image: new Image.asset('assets/malaysia.png'),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 150.0,
      onClick: () => print("Flutter Egypt"),
      loaderColor: Colors.grey,
    );
  }
}
