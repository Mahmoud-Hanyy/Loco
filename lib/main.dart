import 'package:flutter/material.dart';
import 'package:loco/modules/cart/add_to_cart.dart';
import 'package:loco/modules/log_in/log_in.dart';
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
          'onBoarding': (context) => const OnBoarding(),
          'onBoarding1': (context) => const OnBoarding1(),
          'onBoarding2':(context)=>const OnBoarding2(),
          'login' :(context)=>const LogIn(),
          'registerScreen':(context)=>const RegisterScreen(),
          ProductDetails.routename: (context) => const ProductDetails(),
          AddToCart.routename: (context) => AddToCart(),
        } ,
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme:AppTheme.darkTheme ,
    );
  }
}