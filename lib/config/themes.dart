import 'package:flutter/material.dart';
import 'package:test_flutter/config/colors.dart';

/// all themes in this app
ThemeData themeData() {
  return ThemeData(
    fontFamily: 'Baloo2 Regular',
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.bold,
        color: textColor,
      ),
      headline2: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: textColor,
      ),
      headline3: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: textColor,
      ),
      headline4: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: textColor,
      ),
      headline5: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: textColor,
      ),
      headline6: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: textColor,
      ),
      bodyText1: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: textColor,
      ),
      bodyText2: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.normal,
        color: textColor,
      ),
    ),
  );
}
