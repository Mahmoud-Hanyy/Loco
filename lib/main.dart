import 'package:flutter/material.dart';
import 'package:loco/modules/cart/add_to_cart.dart';
import 'package:loco/modules/log_in/log_in.dart';
import 'package:loco/modules/profile/profiles/settings.dart';
import 'constants/theme.dart';
import 'modules/on_boarding/on_boarding.dart';
import 'modules/on_boarding/on_boarding1.dart';
import 'modules/on_boarding/on_boarding2.dart';
import 'modules/product_details/product_details.dart';
import 'modules/register/register.dart';

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
        },
      themeMode: ThemeMode.system,
      theme: AppTheme.darkTheme,
      darkTheme:AppTheme.darkTheme,
    );
  }
}