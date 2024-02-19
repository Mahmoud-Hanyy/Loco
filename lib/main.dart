import 'package:flutter/material.dart';
import 'package:loco/modules/navigation/navigation.dart';

import 'modules/cart/cart.dart';
import 'modules/product_details/product_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          ProductDetails.routename: (context) => ProductDetails(),
          Cart.routename: (context) => Cart(),
        },
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