import 'package:flutter/material.dart';

class AppTema {
  static const Color primary = Colors.green;
  static final ThemeData temaligth = ThemeData.light().copyWith(
      primaryColor: Colors.indigo,
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 5,
      ),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primary)));
  static final ThemeData temadark = ThemeData.dark().copyWith(
    primaryColor: Colors.indigo,
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 5,
    ),
    scaffoldBackgroundColor: Colors.black,
  );
}
