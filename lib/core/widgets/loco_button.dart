import 'package:flutter/material.dart';
import 'package:loco/core/utils/styles.dart';

import '../utils/colors.dart';

//ignore: must_be_immutable
class LocoButton extends StatelessWidget {
 LocoButton({super.key,
    required this.textOfButton,
    required this.onPressed,
    this.style});

  String textOfButton;
  Function onPressed;
  TextStyle ? style ;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: black.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      height: 50,
      width: 200,
      child: MaterialButton(
          onPressed: () {
            onPressed();
          },
          color: Theme.of(context).colorScheme.primary,
          textColor: Theme.of(context).colorScheme.background,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(textOfButton,
            style: Styles.textStyle20.copyWith(
              color: Theme.of(context).colorScheme.background,
            ),
          )
      ),
    );
  }
}