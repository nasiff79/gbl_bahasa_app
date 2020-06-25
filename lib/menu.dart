import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gblbahasaapp/MainScreen/AboutUsPage.dart';
import 'package:gblbahasaapp/MainScreen/LearnPage.dart';
import 'package:gblbahasaapp/MainScreen/PracticePage.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    LearnPage(),
    PracticePage(),
    AboutUsPage(),
  ];

  void onTapBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _children[_currentIndex],
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.8),
                blurRadius: 5,
                // changes position of shadow
              ),
            ],
          ),
          child: BottomNavigationBar(
            onTap: onTapBar,
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.blue,
            currentIndex: _currentIndex,
            selectedLabelStyle: TextStyle(color: Colors.grey),
            items: [
              BottomNavigationBarItem(
                  icon: new Icon(
                    Icons.widgets,
                  ),
                  title: new Text(
                    'Learn',
                  ),
                  backgroundColor: Colors.blue),
              BottomNavigationBarItem(
                  icon: new Icon(
                    FontAwesomeIcons.gamepad,
                  ),
                  title: new Text('Practice'),
                  backgroundColor: Colors.deepOrangeAccent),
              BottomNavigationBarItem(
                  icon: new Icon(
                    Icons.stars,
                  ),
                  title: new Text('About Us'),
                  backgroundColor: Colors.green),
            ],
          ),
        ),
      ),
    );
  }
}
