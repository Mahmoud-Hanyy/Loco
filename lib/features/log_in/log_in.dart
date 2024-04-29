import 'package:flutter/material.dart';
import 'package:loco/core/utils/colors.dart';
import 'package:loco/features/navigation/navigation.dart';
import '../../core/utils/assets.dart';
import '../../core/utils/styles.dart';
import '../../core/widgets/start_button.dart';
import '../register/register.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LogIn extends StatelessWidget {
  static const String routeName = 'login';

  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 0.4;
    var width = MediaQuery.of(context).size.width * 0.9;
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30,),
            Image.asset(Assets.signIn,
              height: height,
              width: width,
            ),
            const SizedBox(height: 15,),
            Text(AppLocalizations.of(context)!.welcome_back,
                style: Styles.textStyle24.copyWith(
                  fontWeight: FontWeight.bold,
                )
            ),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextFormField(
                decoration:  InputDecoration(
                  hintText: AppLocalizations.of(context)!.email_address,
                  hintStyle: Styles.textStyle16,
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: loco),
                  ),
                  prefixIcon: const Icon(Icons.email, color: loco,),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextFormField(
                decoration:  InputDecoration(
                  hintText:AppLocalizations.of(context)!.password ,
                  hintStyle: Styles.textStyle16,
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: loco),),
                  prefixIcon: const Icon(Icons.lock, color: loco,),
                  suffixIcon: const Icon(Icons.visibility_off, color: loco,),
                ),
              ),
            ),
            const SizedBox(height: 15,),
             Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(AppLocalizations.of(context)!.forget_your_password,

                  style: Styles.textStyle16,
                  textAlign: TextAlign.right,),
              ],
            ),
            const SizedBox(height: 15,),
            StartButton(
              onPressed: () {
                Navigator.pushNamed(context, NavigationPage.routeName);
              },
              textOfButton: AppLocalizations.of(context)!.log_in,
            ),
            const SizedBox(height: 15,),
             Text(AppLocalizations.of(context)!.or_login_with,
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
              child: Text(AppLocalizations.of(context)!.dont_have_an_account_register,
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