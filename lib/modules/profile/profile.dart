import 'package:flutter/material.dart';
import 'package:loco/components/button.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 50),
            child: Row(
              children:[
                Image.asset('lib/resources/images/icon.png',
                  height: 100,
                  width: 100,
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Thomas Jefferson',
                      style: Theme.of(context).textTheme.bodyMedium
                    ),
                    const SizedBox(height: 5),
                    const Text('Thomas1@gmail.com',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontFamily: 'Clash'
                        ),
                    ),
                  ],
                ),
              ]
            ),
          ),
          const SizedBox(height: 20),
          ProfileButton(
              buttonText: 'Personal Information',
              onPressed: (){}
          ),
          const SizedBox(height: 20),
          ProfileButton(
              buttonText: 'History of Orders',
              onPressed: (){}
          ),
          const SizedBox(height: 20),
          ProfileButton(
              buttonText: 'Settings',
              onPressed: (){}
          ),
          const SizedBox(height: 20),
          ProfileButton(
              buttonText: 'Become a Brand',
              onPressed: (){}
          ),
        ],
      )
    );
  }
}
