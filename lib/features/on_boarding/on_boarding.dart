import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../../core/utils/assets.dart';
import '../../core/utils/colors.dart';
import '../../core/utils/styles.dart';
import '../../core/widgets/start_button.dart';
import 'on_boarding1.dart';

class OnBoarding extends StatelessWidget {
  static const String routeName="onBoarding";
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('Welcome in Loco',
              textAlign: TextAlign.center,
              style: Styles.textOfLabel
          ),
          Image.asset(Assets.shopping),
          Text('Loco ?',
            style:Styles.textStyle24.copyWith(
              fontWeight: FontWeight.bold,
            ),),
          const SizedBox(height: 15,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(' loco is the place where the local brands are gathered together so you can find them easily',
              style: Styles.textStyle16
            ),
          ),
          const SizedBox(height: 40,),
          StartButton(
            onPressed: () {
              Navigator.push(
                  context, PageTransition(
                  child: const OnBoarding1(),
                  type: PageTransitionType.rightToLeft
              )
              );
            },
            textOfButton: 'Continue',
          ),
        ],
      ),
    );
  }
}