import 'package:flutter/material.dart';
import '../utils/styles.dart';

class ProfileButton extends StatelessWidget {
  const ProfileButton(
      {super.key, required this.text, required this.icon, required this.onTap});
  final String text;
  final IconData icon;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        onTap();
      },
      height: MediaQuery.of(context).size.height * 0.01,
      child: Row(
        children: [
          Icon(
            icon,
            color: Theme.of(context).colorScheme.primary,
          ),
          const SizedBox(width: 10),
          Text(
            text,
            style: Styles.textStyle20.copyWith(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          const Spacer(),
          Icon(
            Icons.arrow_forward_ios_outlined,
            color: Theme.of(context).colorScheme.primary,
          ),
        ],
      ),
    );
  }
}
