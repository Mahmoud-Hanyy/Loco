import 'package:flutter/material.dart';

import 'colors.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    surface: white,
    primary: loco,
    secondary: light,
  ),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    surface: Colors.black,
    primary: white,
    secondary: Colors.black38,
  ),
);
