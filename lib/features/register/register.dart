import 'package:flutter/material.dart';
import '../../core/utils/assets.dart';
import '../../core/utils/colors.dart';
import '../../core/utils/styles.dart';
import '../../core/widgets/start_button.dart';
import '../log_in/log_in.dart';
import '../navigation/navigation.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RegisterScreen extends StatelessWidget {
  static const String routeName = 'registerScreen';

  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 0.45;
    var width = MediaQuery.of(context).size.width * 0.85;
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 200,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(12)),
                child: Stack(
                  children: [
                    Positioned(
                        top: -150,
                        right: -150,
                        child: Container(
                          height: height,
                          width: width,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(Assets.blob))),
                        ))
                  ],
                )),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(AppLocalizations.of(context)!.register,
                    style: Styles.textOfLabel
                        .copyWith(fontWeight: FontWeight.bold))),
            const SizedBox(
              height: 5,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                    AppLocalizations.of(context)!
                        .register_to_enjoy_our_features,
                    style: Styles.textStyle20)),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: AppLocalizations.of(context)!.first_name,
                  hintStyle: Styles.textStyle16,
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: loco),
                  ),
                  prefixIcon: const Icon(
                    Icons.person,
                    color: loco,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: AppLocalizations.of(context)!.last_name,
                  hintStyle: Styles.textStyle16,
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: loco),
                  ),
                  prefixIcon: const Icon(
                    Icons.person,
                    color: loco,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: AppLocalizations.of(context)!.email_address,
                  hintStyle: Styles.textStyle16,
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: loco),
                  ),
                  prefixIcon: const Icon(
                    Icons.email,
                    color: loco,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: AppLocalizations.of(context)!.password,
                  hintStyle: Styles.textStyle16,
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: loco),
                  ),
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: loco,
                  ),
                  suffixIcon: const Icon(
                    Icons.visibility_off,
                    color: loco,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: AppLocalizations.of(context)!.confirm_password,
                  hintStyle: Styles.textStyle16,
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: loco),
                  ),
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: loco,
                  ),
                  suffixIcon: const Icon(
                    Icons.visibility_off,
                    color: loco,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: StartButton(
                onPressed: () {
                  Navigator.pushNamed(context, NavigationPage.routeName);
                },
                textOfButton: AppLocalizations.of(context)!.register,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, LogIn.routeName);
                    },
                    child: Text(
                        AppLocalizations.of(context)!
                            .already_have_an_account_Login,
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
