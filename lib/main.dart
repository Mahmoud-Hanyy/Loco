import 'package:flutter/material.dart';
import 'package:loco/modules/navigation/navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavigationPage(),
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyText2: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontFamily: 'Clash',
          ),
        )
      )
    );
  }
}