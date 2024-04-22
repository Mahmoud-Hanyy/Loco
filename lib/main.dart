import 'package:flutter/material.dart';
import 'core/utils/themes.dart';
import 'features/cart/add_to_cart.dart';
import 'features/categories/categories.dart';
import 'features/log_in/log_in.dart';
import 'features/on_boarding/on_boarding.dart';
import 'features/on_boarding/on_boarding1.dart';
import 'features/on_boarding/on_boarding2.dart';
import 'features/product_details/product_details.dart';
import 'features/profile/profiles/settings.dart';
import 'features/register/register.dart';

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
      initialRoute:'onBoarding',
        routes: {
          OnBoarding.routeName: (context) => const OnBoarding(),
          OnBoarding1.routeName: (context) => const OnBoarding1(),
          OnBoarding2.routeName:(context)=>const OnBoarding2(),
          LogIn.routeName :(context)=>const LogIn(),
          RegisterScreen.routeName:(context)=>const RegisterScreen(),
          ProductDetails.routename: (context) => const ProductDetails(),
          AddToCart.routename: (context) => AddToCart(),
          Settings.routeName:(context)=>const Settings(),
          Categories.routeName:(context)=>const Categories(),
        },
      theme: lightMode,
    );
  }
}