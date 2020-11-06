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
      body: ListView(
        children: <Widget>[
          Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                // Container(
                //   padding: EdgeInsets.all(kMainPadding),
                //   child: new Text(
                //     'About This App',
                //     style: TextStyle(
                //       fontSize: 28.0,
                //       fontFamily: 'Lato',
                //       fontWeight: FontWeight.bold,
                //     ),
                //   ),
                // ),
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
                  height: 10,
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
                  height: 10,
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
                      Container(
                        padding: EdgeInsets.only(left: 35),
                        child: Image.asset(
                          'assets/LogoUUM.png',
                          height: 70,
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                      child: new Text(
                        'IPIZ',
                        style: TextStyle(
                            letterSpacing: 1.2,
                            fontSize: 40.0,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(64, 0, 64, 16),
                      child: new Text(
                        'Institut Pengurusan Zakat UUM',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Image.asset(
                      'assets/LogoIchmi.png',
                      height: 70,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),

                Container(
                  padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                  child: new Text(
                    'SMMTC',
                    style: TextStyle(
                        letterSpacing: 1.2,
                        fontSize: 40.0,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(64, 0, 64, 16),
                  child: new Text(
                    'Pusat Pengajian Teknologi Multimedia & Komunikasi',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
