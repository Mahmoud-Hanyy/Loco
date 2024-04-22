import 'package:flutter/material.dart';
import 'package:loco/core/utils/colors.dart';
import '../../core/utils/assets.dart';
import '../../core/utils/styles.dart';
import '../../core/widgets/loco_button.dart';
import '../navigation/navigation.dart';
import '../register/register.dart';

class LogIn extends StatelessWidget {
  static const String routeName = 'login';

  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery
        .of(context)
        .size
        .height * 0.45;
    var width = MediaQuery
        .of(context)
        .size
        .width * 0.9;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(Assets.signIn,
              height: height,
              width: width,
            ),
            Text('Welcome back !',
                style: Styles.textStyle24.copyWith(
                  fontWeight: FontWeight.bold,
                )
            ),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Email address',
                  hintStyle: Styles.textStyle16,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: loco),),
                  prefixIcon: Icon(Icons.email, color: loco,),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Password',
                  hintStyle: Styles.textStyle16,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: loco),),
                  prefixIcon: Icon(Icons.lock, color: loco,),
                  suffixIcon: Icon(Icons.visibility_off, color: loco,),
                ),
              ),
            ),
            const SizedBox(height: 15,),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Forget your password?',
                  style: Styles.textStyle16,
                  textAlign: TextAlign.right,),
              ],
            ),
            const SizedBox(height: 15,),
            LocoButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => const NavigationPage())
                );
              }, textOfButton: 'Log In', style: Styles.textOfButton,),
            const SizedBox(height: 15,),
            const Text('or login with',
              style: Styles.textStyle16,
            ),
            const SizedBox(height: 10,),
            Image.asset('lib/resources/images/google.jpg',
              height: 50,
              width: 50,
            ),
            const SizedBox(height: 10,),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, RegisterScreen.routeName);
              },
              child: Text("Don't have an account ? Register",
                style: Styles.textStyle16.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}