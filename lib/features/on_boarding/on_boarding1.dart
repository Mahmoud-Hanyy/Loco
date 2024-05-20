import 'package:flutter/material.dart';
import 'package:loco/features/on_boarding/on_boarding2.dart';

import '../../core/utils/assets.dart';
import '../../core/utils/colors.dart';
import '../../core/utils/styles.dart';
import '../../core/widgets/start_button.dart';

class OnBoarding1 extends StatelessWidget {
  static const String routeName = "onBoarding1";

  const OnBoarding1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Assets.marketing,
                width: MediaQuery.of(context).size.width * 0.8,
              ),
              Text('Are you an owner ?',
                  textAlign: TextAlign.left,
                  style: Styles.textStyle24.copyWith(
                    fontWeight: FontWeight.bold,
                  )),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                    'if you are the brand owner himself,you are in the right place because loco will help you promote your brand instead of paying a lot of money for ads you can subscribe with us with much less cost and better spread .',
                    style: Styles.textStyle16),
              ),
              const SizedBox(
                height: 40,
              ),
              StartButton(
                onPressed: () {
                  Navigator.pushNamed(context, OnBoarding2.routeName);
                },
                textOfButton: 'Continue',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
