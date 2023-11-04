import 'dart:math';

import 'package:flutter/material.dart';

class TextsStyles {
  static const TextStyle topHeaderTextStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 7);

  static const TextStyle h1 =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w900, letterSpacing: 1.1);

  static const TextStyle h2 =
      TextStyle(fontSize: 34, fontWeight: FontWeight.w500);

  static const TextStyle h3 =
      TextStyle(fontSize: 24, fontWeight: FontWeight.w400);

  static const TextStyle h4 =
  TextStyle(fontSize: 6.5, fontWeight: FontWeight.w500, letterSpacing: 1);

  static const TextStyle h5 =
  TextStyle(fontSize: 5, fontWeight: FontWeight.w900, letterSpacing: -.4, color: Color(0xff1876D2));

  static const TextStyle h6 =
  TextStyle(fontSize: 7, fontWeight: FontWeight.w900, letterSpacing: 1.1);


  static const TextStyle desc = TextStyle(
      fontSize: 10.6,
      height: 1.4,
      fontWeight: FontWeight.w500,);

  static const TextStyle subTitle = TextStyle(
      fontSize: 12.3, fontWeight: FontWeight.w900, letterSpacing: 1.1);

  static double textScaleFactor(BuildContext context, {double maxTextScaleFactor = 2}) {
    final width = MediaQuery.of(context).size.width;
    double val = (width / 1400) * maxTextScaleFactor;
    return max(1, min(val, maxTextScaleFactor));
  }
}

