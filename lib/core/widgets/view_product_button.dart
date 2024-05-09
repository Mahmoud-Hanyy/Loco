import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../utils/styles.dart';

//ignore:must_be_immutable
class ViewProductButton extends StatelessWidget {
  ViewProductButton(
      {super.key,
        required this.textOfButton,
        required this.onPressed,
        this.style});

  String textOfButton;
  Function onPressed;
  TextStyle? style;

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
      height: 30,
      width: 100,
      child: MaterialButton(
          onPressed: () {
            onPressed();
          },
          color: Theme.of(context).colorScheme.primary,
          textColor: Theme.of(context).colorScheme.background,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            textAlign: TextAlign.center,
            textOfButton,
            style: Styles.textStyle16.copyWith(
              color: Theme.of(context).colorScheme.background,
              fontSize: 11
            ),
          )),
    );
  }
}