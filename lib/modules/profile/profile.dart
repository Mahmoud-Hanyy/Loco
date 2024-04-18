import 'package:flutter/material.dart';

import '../../constants/theme.dart' as Colors ;

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
              const Text('Profile',
                  style: TextStyle(
                      color: Colors.AppTheme.loco,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                  ),
              ),
              const SizedBox(height: 30),
              Image(
                image: const AssetImage("lib/resources/images/icon.png"),
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.width * 0.4,
              ),
              const SizedBox(height: 10),
              const Text('Mike Arteta',
                style: TextStyle(
                  color: Colors.AppTheme.loco,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: const Row(
                        children: [
                          Icon(Icons.person, color: Colors.AppTheme.loco,),
                          SizedBox(width: 10),
                          Text('Personal Information',
                            style: TextStyle(
                              color: Colors.AppTheme.loco,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios_outlined,
                            color: Colors.AppTheme.loco,),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                    InkWell(
                      onTap: () {},
                      child: const Row(
                        children: [
                          Icon(Icons.history_outlined, color: Colors.AppTheme.loco,),
                          SizedBox(width: 10),
                          Text('History of Payment',
                            style: TextStyle(
                              color: Colors.AppTheme.loco,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios_outlined,
                            color: Colors.AppTheme.loco,),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                    InkWell(
                      onTap: () {},
                      child: const Row(
                        children: [
                          Icon(Icons.settings_outlined, color: Colors.AppTheme.loco,),
                          SizedBox(width: 10),
                          Text('Settings',
                            style: TextStyle(
                              color: Colors.AppTheme.loco,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios_outlined,
                            color: Colors.AppTheme.loco,),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                    InkWell(
                      onTap: () {},
                      child: const Row(
                        children: [
                          Icon(Icons.sell_outlined, color: Colors.AppTheme.loco,),
                          SizedBox(width: 10),
                          Text('Become a Seller',
                            style: TextStyle(
                              color: Colors.AppTheme.loco,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios_outlined,
                            color: Colors.AppTheme.loco,),
                        ],
                      ),
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
