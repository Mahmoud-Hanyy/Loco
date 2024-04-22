import 'package:flutter/material.dart';
import 'package:loco/features/profile/profiles/history_of_payment.dart';
import 'package:loco/features/profile/profiles/settings.dart';
import '../../core/utils/assets.dart';
import '../../core/utils/styles.dart';
import '../../core/widgets/profile_button.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});
  static const String routename = 'Settings';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
               Text('Profile',
                  style: Styles.textStyle30.copyWith(
                    fontWeight: FontWeight.bold
                  ),
              ),
              const SizedBox(height: 30),
              Image(
                image: const AssetImage(Assets.icon),
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.width * 0.4,
              ),
              const SizedBox(height: 10),
               Text('Mike Arte',
                style: Styles.textStyle24.copyWith(
                  fontWeight: FontWeight.bold
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Settings(),
                              )
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
    );
  }
}
