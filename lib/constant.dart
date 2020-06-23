import 'dart:ui';

import 'package:flutter/cupertino.dart';

const kMainBackgroundColour = Color(0xFFF0F1FF);

const double kMainPadding = 16;

// Color
const kFontColorSecondary = Color(0xFF7B7E8E);
const kColorCorrect = Color(0xFFB8F28B);
const kColorWrong = Color(0xFFFFC1C2);

const kColorBitterSweet = Color(0xFFED6161);
const kColorBitterSweet2 = Color(0xFFF0423F);
const kColorAppleGreen = Color(0xFF79C131);
const kColorAppleGreen2 = Color(0xFF4D9F38);

const kColorMainPractice = Color(0xffFF6647);

//Color Gradient
var kColorAppBarPractice = Container(
  decoration: BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.bottomCenter,
      end: Alignment.center,
      colors: [const Color(0xffffa06f), const Color(0xffff4b2a)],
      stops: [0.0, 1.0],
    ),
  ),
);

// Text Style //
const kTextStylePracticeIcon = TextStyle(
  fontFamily: 'Lato',
  fontSize: 20,
  color: const Color(0xff8e8e7b),
  fontWeight: FontWeight.w700,
);

const kTextStylePracticeSection = TextStyle(
  fontSize: 28.0,
  fontFamily: 'Lato',
  fontWeight: FontWeight.bold,
);
