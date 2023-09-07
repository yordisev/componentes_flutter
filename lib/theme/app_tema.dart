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
          style: TextButton.styleFrom(foregroundColor: primary)),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primary,
        elevation: 5,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: primary,
              shape: const StadiumBorder(),
              elevation: 0)));
  static final ThemeData temadark = ThemeData.dark().copyWith(
    primaryColor: Colors.indigo,
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 5,
    ),
    scaffoldBackgroundColor: Colors.black,
  );
}
