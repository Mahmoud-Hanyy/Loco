import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../../core/utils/assets.dart';
import '../../core/utils/colors.dart';
import '../../core/utils/styles.dart';
import '../../core/widgets/start_button.dart';
import 'on_boarding1.dart';

class OnBoarding extends StatelessWidget {
  static const String routeName = "onBoarding";
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text('Welcome in Loco',
                  textAlign: TextAlign.center, style: Styles.textOfLabel),
              const SizedBox(
                height: 15,
              ),
              Image.asset(
                Assets.shopping,
                width: MediaQuery.of(context).size.width * 0.8,
              ),
              Text(
                'Loco ?',
                style: Styles.textStyle24.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                    ' loco is the place where the local brands are gathered together so you can find them easily',
                    style: Styles.textStyle16),
              ),
              const SizedBox(
                height: 40,
              ),
              StartButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: const OnBoarding1(),
                          type: PageTransitionType.rightToLeft));
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
