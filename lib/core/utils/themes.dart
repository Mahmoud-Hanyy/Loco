import 'package:flutter/material.dart';

import 'colors.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    background: white,
    primary : loco,
    secondary: black,
  ),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    background: Colors.black12,
    primary : white,
    secondary: loco,
  ),
);