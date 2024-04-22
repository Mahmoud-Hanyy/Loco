import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../../core/utils/assets.dart';
import '../../core/utils/colors.dart';
import '../../core/utils/styles.dart';
import '../../core/widgets/loco_button.dart';
import 'on_boarding2.dart';

class OnBoarding1 extends StatelessWidget {
  static const String routeName="onBoarding1";

  const OnBoarding1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(Assets.marketing),
          Text('Are you an owner ?',textAlign: TextAlign.left,
              style: Styles.textStyle24.copyWith(
                fontWeight: FontWeight.bold,
              )),
          const SizedBox(height: 20,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Text('if you are the brand owner himself,you are in the right place because loco will help you promote your brand instead of paying a lot of money for ads you can subscribe with us with much less cost and better spread .',
                style: Styles.textStyle16),
          ),
          const SizedBox(height: 40,),
          LocoButton(
            onPressed: () {
              Navigator.push(
                  context, PageTransition(
                  child: const OnBoarding2(),
                  type: PageTransitionType.rightToLeft
              )
              );
            }, textOfButton: 'Continue',style: Styles.textOfButton,

          )
        ],
      ),
    );
  }
}