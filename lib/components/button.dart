import 'package:flutter/material.dart';
import '../../constants/theme.dart' as Colors;

//ignore: must_be_immutable
class LocoButton extends StatelessWidget {
  LocoButton({super.key, required this.buttonText,required this.onPressed});
  String buttonText;
  Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.AppTheme.black.withOpacity(0.1),
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
          color: Colors.AppTheme.loco,
          textColor:Colors.AppTheme.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(buttonText)
      ),
    );
  }
}

//ignore: must_be_immutable
class ProfileButton extends StatelessWidget {
  ProfileButton({super.key,required this.buttonText,required this.onPressed});

  String buttonText;
  Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.AppTheme.black.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      height: 50,
      width: 350,
      child: MaterialButton(
          onPressed: () {
            onPressed();
          },
          color: Colors.AppTheme.loco,
          textColor:Colors.AppTheme.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(buttonText)
      ),
    );
  }
}