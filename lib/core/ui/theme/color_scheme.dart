import 'package:flutter/material.dart';

final lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  //нижнее и верхнее меню
  primary: Color(0xff356392),
  onPrimary: Colors.grey.shade300,
  //активное меню
  onSurface: Color(0xffFFFA07A),
  // header
  primaryContainer: Color.fromARGB(255, 55, 56, 57),
  onPrimaryContainer: Color(0xffd8dccd),
  //main backColor
  background: Color(0xffB0C4DE),
  onBackground: Colors.white,
  surfaceTint: Color(0xffFFFA07A),
  //first block
  secondary: Color(0xffd1e4b6),
  onSecondary: Color(0xff37517e),
  //second block
  tertiary: Color(0xffFED6A2),
  onTertiary: Color(0xff37517e),

  //error
  error: Colors.blue, onError: Colors.white,
  //Card
  surface: Color(0xffC0C2C4),
);

final darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  //нижнее и верхнее меню
  primary: Color(0xff356392),
  onPrimary: Colors.white,

  //активное меню
  onSurface: Color(0xffFFD600),

  //main backColor
  background: Color(0xff043f5d),
  onBackground: Colors.white,

  surfaceTint: Color(0xff2),
  //first block
  secondary: Color(0xff003153),
  onSecondary: Color(0xffA2ADD0),
  //second block
  tertiary: Color(0xff1A4780),
  onTertiary: Color(0xff37517e),

  //error
  error: Colors.blue, onError: Colors.white,
  //Card
  surface: Color(0xffC0C2C4),
);
