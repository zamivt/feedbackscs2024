import 'package:flutter/material.dart';

class TtextTheme {
  static TextTheme lightTextTheme = TextTheme(
    titleLarge: TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.bold,
        fontFamily: 'Comfortaa'),
    titleMedium: TextStyle(
        color: Color(0xff37517e),
        fontSize: 18,
        fontWeight: FontWeight.bold,
        fontFamily: 'Comfortaa'),
    titleSmall: TextStyle(
      color: Color(0xff37517e),
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    displayLarge: TextStyle(
      color: Color(0xff356392),
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: TextStyle(
      color: Color(0xffd1e4b6),
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    displaySmall: TextStyle(
      color: Color(0xff356392),
      fontSize: 16,
    ),
    bodySmall: TextStyle(
      color: Colors.blueGrey,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    labelLarge: TextStyle(
        color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
    labelMedium: TextStyle(
        color: Color(0xff356392), fontSize: 16, fontWeight: FontWeight.w700),
    bodyLarge: TextStyle(
        color: Color(0xff356392),
        fontFamily: 'Lato',
        fontSize: 16,
        fontWeight: FontWeight.w600),
  );

  static TextTheme darkTextTheme = TextTheme(
    titleLarge: TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.bold,
        fontFamily: 'Comfortaa'),
    titleMedium: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
        fontFamily: 'Comfortaa'),
    titleSmall: TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    displayLarge: TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    displaySmall: TextStyle(
      color: Colors.black,
      fontSize: 16,
    ),
    labelLarge: TextStyle(
        color: Colors.white,
        fontFamily: 'Lato',
        fontSize: 16,
        fontWeight: FontWeight.w600),
    bodyLarge: TextStyle(
        color: Colors.white,
        fontFamily: 'Lato',
        fontSize: 16,
        fontWeight: FontWeight.w600),
  );
}
