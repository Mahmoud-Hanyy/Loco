import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../utils/styles.dart';

//ignore: must_be_immutable
class StartButton extends StatelessWidget {
  StartButton({super.key,
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
          color: loco,
          textColor: white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(textOfButton,
            style: Styles.textStyle20.copyWith(
                color: white
            ),
          )
      ),
    );
  }
}