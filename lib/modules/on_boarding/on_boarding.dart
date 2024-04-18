import 'package:flutter/material.dart';
import '../../components/button.dart';
import 'on_boarding1.dart';

class OnBoarding extends StatelessWidget {
  static const String routeName="onBoarding";
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Welcome in Loco',
              textAlign: TextAlign.center,style:Theme.of(context).textTheme.bodyLarge ),
          Image.asset('lib/resources/images/shopping.png',
          ),
          Text('Loco ?',
            style:Theme.of(context).textTheme.bodyLarge,),
          const SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(' Loco is the place where the local brands are gathered together so you can find them easily',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          const SizedBox(height: 40,),
          LocoButton(
              onPressed: () {
                Navigator.pushNamed(context, OnBoarding1.routeName);
              },
              buttonText: 'Continue',
            ),
        ],
      ),
    );
  }
}