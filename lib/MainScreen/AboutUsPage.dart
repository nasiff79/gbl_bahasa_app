import 'package:flutter/material.dart';
import 'package:gblbahasaapp/constant.dart';

class AboutUsPage extends StatefulWidget {
  @override
  _AboutUsPageState createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.center,
              colors: [const Color(0xff9AEDDE), const Color(0xff06CCA0)],
              stops: [0.0, 1.0],
            ),
          ),
        ),
        title: new Text(
          'About Us',
          style: TextStyle(
            fontSize: 30.0,
            fontFamily: 'Lato',
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: new Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(kMainPadding),
              child: new Text(
                'About This App',
                style: TextStyle(
                  fontSize: 28.0,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 0,
            ),
            // Developed by
            Container(
              padding: EdgeInsets.all(kMainPadding),
              child: new Text(
                'Developed By:',
                style: TextStyle(
                    fontSize: 22.0,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            // Name
            Container(
              padding: EdgeInsets.fromLTRB(16, 8, 16, 16),
              child: new Text(
                'Muhammad Nasiff bin Hashardi',
                style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    color: kFontColorSecondary),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            // Artwork
            Container(
              padding: EdgeInsets.all(kMainPadding),
              child: new Text(
                ' Illustration created by:',
                style: TextStyle(
                    fontSize: 22.0,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            // Name
            Container(
              padding: EdgeInsets.fromLTRB(16, 8, 16, 16),
              child: new Text(
                ' Freepik.com',
                style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    color: kFontColorSecondary),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            // Collaboration
            Container(
              padding: EdgeInsets.all(kMainPadding),
              child: new Text(
                'Project under by:',
                style: TextStyle(
                    fontSize: 22.0,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(children: <Widget>[
                  SizedBox(
                    width: 70,
                  ),
                  Image.asset(
                    'assets/IPIZ.png',
                    height: 100,
                  ),
                ]),
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'assets/LogoUUM.png',
                  height: 100,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
