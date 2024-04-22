import 'package:flutter/material.dart';
import 'package:loco/core/utils/colors.dart';
import '../utils/styles.dart';

class ProfileButton extends StatelessWidget {
  const ProfileButton({super.key,
    required this.text,
    required this.icon,
    required this.onTap
  });
  final String text ;
  final IconData icon ;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap;
      },
      child: Row(
        children: [
          Icon(icon, color: loco,),
          const SizedBox(width: 10),
          Text(text,
            style: Styles.textStyle20.copyWith(
                fontWeight: FontWeight.bold
            ),
          ),
          const Spacer(),
          const Icon(Icons.arrow_forward_ios_outlined,
            color: loco,),
        ],
      ),
    );
  }
}
