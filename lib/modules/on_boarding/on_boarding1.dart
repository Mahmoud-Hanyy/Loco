import 'package:flutter/material.dart';
import 'package:loco/modules/on_boarding/on_boarding2.dart';
import '../../components/button.dart';
import '../../constants/theme.dart' as Colors;

class OnBoarding1 extends StatelessWidget {
  static const String routeName="onBoarding1";

  const OnBoarding1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.AppTheme.white,
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('lib/resources/images/marketing.png',
          ),
          Text('Are you an owner ?',textAlign: TextAlign.left,style: Theme.of(context).textTheme.bodyLarge),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text('if you are the brand owner himself,you are in the right place because Loco will help you promote your brand instead of paying a lot of money for ads you can subscribe with us with much less cost and better spread .',
                style: Theme.of(context).textTheme.bodySmall),
          ),
          const SizedBox(height: 40,),
          LocoButton(
            onPressed: () {
              Navigator.pushNamed(context, OnBoarding2.routeName);
            },
            buttonText: 'Continue',
          )
        ],
      ),);

  }
}