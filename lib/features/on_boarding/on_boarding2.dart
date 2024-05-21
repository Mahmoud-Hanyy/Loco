import 'package:flutter/material.dart';
import '../../core/utils/assets.dart';
import '../../core/utils/colors.dart';
import '../../core/utils/styles.dart';
import '../../core/widgets/start_button.dart';
import '../log_in/log_in.dart';

//ignore: must_be_immutable
class OnBoarding2 extends StatelessWidget {
  static const String routeName = 'onBoarding2';

  const OnBoarding2({super.key});
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
                Assets.contact,
                width: MediaQuery.of(context).size.width * 0.8,
              ),
              Text(
                'Benefits ?',
                style: Styles.textStyle24.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                    "if you asked yourself what are the benefits from subscribing with loco , your products will be shown to much more people now and don't worry about the shipment or the orders because we provide an orders page that controls your sells with time and location . Don't forget that the app is under Periodic maintenance .",
                    style: Styles.textStyle16,
                    textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              StartButton(
                onPressed: () {
                  Navigator.pushNamed(context, LogIn.routeName);
                },
                textOfButton: 'Start Now ',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
