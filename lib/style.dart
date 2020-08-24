import 'package:flutter/material.dart';

const LargeTextSize = 22.0;
const MediumTextSize = 16.0;
const SmallTextSize = 12.0;

const String FontNameDefault = 'Montserrat-Regular';

const Color TextColorDark = Colors.black;
const Color TextColorLight = Colors. white;
const Color TextColorAccent = Colors.red;
const Color TextColorFaint = Color.fromRGBO(125, 125, 125, 1.0);

const DefaultPaddingHorizontal = 12.0;

const AppBarTextStyle = TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    fontSize: 18.0,
    color: Colors.black,
);

const TitleTextStyle = TextStyle(
    fontFamily: FontNameDefault,
    fontWeight: FontWeight.w400,
    fontSize: LargeTextSize,
    color: TextColorDark,
);

const Body1TextStyle = TextStyle(
    fontFamily: FontNameDefault,
    fontWeight: FontWeight.w400,
    fontSize: SmallTextSize,
    color: Colors.black
);

const SubtitleTextStyle = TextStyle(
    fontFamily: FontNameDefault,
    fontWeight: FontWeight.w400,
    fontSize: MediumTextSize,
    color: TextColorAccent,
);

const CaptionTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w400,
  fontSize: SmallTextSize,
  color: TextColorDark,
);