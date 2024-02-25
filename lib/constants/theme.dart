import 'package:flutter/material.dart';

class AppTheme {
  static const loco =  Color(0xFF366A6A);
  static const white = Color(0xFFFFFFFF);
  static const black = Color(0xFF000000);
  static const light = Color(0x87FFFFFF);

  static ThemeData lightTheme = ThemeData(
      primaryColor: loco,
      textTheme: const TextTheme(
        bodyLarge: TextStyle(
          fontSize: 36.0,
          fontWeight: FontWeight.bold,
          color: loco,
          fontFamily: 'Clash',
        ),
        bodyMedium: TextStyle(
          fontSize: 24.0,
          color: loco,
          fontFamily: 'Clash',
        ),
        bodySmall: TextStyle(
          fontSize: 18.0,
          color:loco,
          fontFamily: 'Clash',
        ),
      ),
      scaffoldBackgroundColor: white,
  );
  static ThemeData darkTheme = ThemeData(
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        fontSize: 36.0,
        fontWeight: FontWeight.bold,
        color: loco,
        fontFamily: 'Clash',
      ),
      bodyMedium: TextStyle(
        fontSize: 24.0,
        color: loco,
        fontFamily: 'Clash',
      ),
      bodySmall: TextStyle(
        fontSize: 18.0,
        color:loco,
        fontFamily: 'Clash',
      ),
    ),
  );

}