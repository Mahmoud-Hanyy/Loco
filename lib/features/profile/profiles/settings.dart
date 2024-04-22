import 'package:flutter/material.dart';
import '../../../core/utils/colors.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});
  static const String routeName="Settings";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('Theme',
                style: TextStyle(
                color: loco,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      )
    );
  }
}
