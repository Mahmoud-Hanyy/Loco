import 'package:flutter/material.dart';
import 'package:loco/constants/theme.dart' as Colors;

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
                color: Colors.AppTheme.loco,
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
