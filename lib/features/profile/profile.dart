import 'package:flutter/material.dart';
import 'package:loco/features/profile/profiles/history_of_payment.dart';
import 'package:loco/features/profile/profiles/personal_info.dart';
import 'package:loco/features/profile/profiles/settings.dart';
import '../../core/utils/assets.dart';
import '../../core/utils/styles.dart';
import '../../core/widgets/profile_button.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});
  static const String routename = 'Profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(AppLocalizations.of(context)!.profile,
              style: Styles.textOfLabel.copyWith(
                color: Theme.of(context).colorScheme.primary,
              )),
          centerTitle: true,
          toolbarHeight: 70,
          backgroundColor: Theme.of(context).colorScheme.background,
          elevation: 0,
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Center(
            child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Image.asset(Assets.icon, scale: 1.7),
            const SizedBox(height: 20),
            Text('Mike Arte',
                style: Styles.textStyle24.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                )),
            const SizedBox(height: 40),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Column(
                children: [
                  ProfileButton(
                      text: AppLocalizations.of(context)!.personal_information,
                      icon: Icons.person,
                      onTap: () {
                        Navigator.pushNamed(
                            context, PersonalInformation.routename);
                      }),
                  const SizedBox(height: 40),
                  ProfileButton(
                      text: AppLocalizations.of(context)!.history_of_payment,
                      icon: Icons.history_outlined,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HistoryOfPayment(),
                            ));
                      }),
                  const SizedBox(height: 40),
                  ProfileButton(
                      text: AppLocalizations.of(context)!.settings,
                      icon: Icons.settings_outlined,
                      onTap: () {
                        Navigator.pushNamed(context, Settings.routeName);
                      }),
                  const SizedBox(height: 40),
                  ProfileButton(
                      text: AppLocalizations.of(context)!.become_a_seller,
                      icon: Icons.sell_outlined,
                      onTap: () {}),
                ],
              ),
            ),
          ],
        )));
  }
}
