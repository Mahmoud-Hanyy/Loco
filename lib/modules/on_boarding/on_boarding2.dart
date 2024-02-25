import 'package:flutter/material.dart';
import 'package:loco/modules/log_in/log_in.dart';
import '../../components/button.dart';

//ignore: must_be_immutable
class OnBoarding2 extends StatelessWidget {
  static const String routeName='onBoarding2';

  const OnBoarding2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('lib/resources/images/contact.png',
            height: 348,
            width: 350,
          ),
          Text('Benefits ?',style: Theme.of(context).textTheme.bodyLarge),
          const SizedBox(height:10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text("if you asked yourself what are the benefits from subscribing with Loco , your products will be shown to much more people now and don't worry about the shipment or the orders because we provide an orders page that controls your sells with time and location . Don't forget that the app is under Periodic maintenance .",
                style:Theme.of(context).textTheme.bodySmall),
          ),
          const SizedBox(height: 40,),
          LocoButton(
            onPressed: () {
              Navigator.pushNamed(context, LogIn.routeName);
            },
            buttonText: 'Start Now',
          )
        ],
      ),
    );
  }
}
