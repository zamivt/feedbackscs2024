import 'package:flutter/material.dart';

import 'color_scheme.dart';
import 'widgetstheme/text_theme.dart';

ThemeData lightMode = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    textTheme: TtextTheme.lightTextTheme,
    appBarTheme: const AppBarTheme(
      actionsIconTheme: IconThemeData(color: Colors.amber),
      color: Color(0xff37517e),
      titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontFamily: 'Comfortaa'),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff37517e),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            textStyle: const TextStyle(color: Colors.white))),
    colorScheme: lightColorScheme);

ThemeData darkMode = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(
      actionsIconTheme: IconThemeData(color: Colors.white),
      color: Color(0xff37517e),
      titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontFamily: 'Comfortaa'),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff37517e),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            textStyle: const TextStyle(color: Colors.white))),
    textTheme: TtextTheme.darkTextTheme,
    colorScheme: darkColorScheme);
