import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:loco/features/profile/profiles/history_of_payment.dart';
import 'package:loco/features/profile/profiles/settings.dart';
import '../../core/utils/styles.dart';
import '../../core/widgets/profile_button.dart';

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
          backgroundColor: Theme.of(context).colorScheme.surface,
          elevation: 0,
        ),
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: SingleChildScrollView(
          child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  Text('Mahmoud Hany',
                  style: Styles.textStyle24.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Theme.of(context).colorScheme.primary,
                  )),
                  Text('mahmoudhany374@gmail.com',
                      style: Styles.textStyle16.copyWith(
                        fontWeight: FontWeight.normal,
                        color: Theme.of(context).colorScheme.primary,
                      )),
                  const SizedBox(height: 100),
                  Column(
                    children: [
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
            ],
          )),
        ));
  }
}
