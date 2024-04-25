import 'package:flutter/material.dart';
import 'package:loco/features/profile/profiles/history_of_payment.dart';
import 'package:loco/features/profile/profiles/settings.dart';
import '../../core/utils/assets.dart';
import '../../core/utils/styles.dart';
import '../../core/widgets/profile_button.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});
  static const String routename = 'Profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).colorScheme.background,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                 Text('Profile',
                    style: Styles.textStyle30.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                ),
                const SizedBox(height: 30),
                Image.asset(Assets.icon,scale:1.7),
                const SizedBox(height: 20),
                 Text('Mike Arte',
                  style: Styles.textStyle24.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  )
                ),
                const SizedBox(height: 40),
                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                  child: Column(
                    children: [
                      ProfileButton(
                          text: 'Personal information',
                          icon: Icons.person,
                          onTap: (){}
                      ),
                      const SizedBox(height: 40),
                      ProfileButton(
                          text: 'History of payment',
                          icon: Icons.history_outlined,
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HistoryOfPayment(),
                                )
                            );
                          }
                      ),
                      const SizedBox(height: 40),
                      ProfileButton(
                          text: 'Settings',
                          icon: Icons.settings_outlined,
                          onTap: (){
                            Navigator.pushNamed(
                                context,
                                Settings.routeName
                            );
                          }
                      ),
                      const SizedBox(height: 40),
                      ProfileButton(
                          text: 'Become a Seller',
                          icon: Icons.sell_outlined,
                          onTap: (){}
                      ),
                    ],
                  ),
                ),
              ]
            ),
          ),
        ),
      ),
    );
  }
}
