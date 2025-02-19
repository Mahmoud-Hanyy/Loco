import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:loco/features/profile/profiles/history_of_payment.dart';
import 'package:loco/features/profile/profiles/settings.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/utils/styles.dart';
import '../../core/widgets/profile_button.dart';
import '../../provider/auth_provider.dart';
import '../log_in/log_in.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  static const String routename = 'Profile';

  @override
  Widget build(BuildContext context) {
    Provider.of<AuthProvidersr>(context);
    final website = Uri.parse("https://fadyfarid.github.io/Loco/#about");
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () async {
                  await GoogleSignIn().signOut();
                  FirebaseAuth.instance.signOut();
                  Navigator.of(context).pushReplacementNamed(LogIn.routeName);
                },
                icon: Icon(
                  Icons.logout_outlined,
                  size: 20,
                  color: Theme.of(context).colorScheme.primary,
                ))
          ],
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
              const SizedBox(
                height: 30,
              ),
              Text(
                'Mahmoud Hany',
                style: Styles.textStyle30.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'mahmoudhany374@gmail.com',
                style: Styles.textStyle18.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: Column(
                  children: [
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
                            onTap: () {
                              launchUrl(
                                website,
                                mode: LaunchMode.inAppBrowserView,
                              );
                            }),
                      ],
                    ),
                  ),
                ],
              )
          ),
        )
    );
  }
}
