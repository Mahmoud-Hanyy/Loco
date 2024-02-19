import 'package:flutter/material.dart';
import '../../constants/colors.dart' as Colors;

//ignore: must_be_immutable
class Components extends StatelessWidget {
  Components({super.key, required this.buttonText});
  String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.Colors.black.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      height: 40,
      width: 200,
      child: MaterialButton(
          onPressed: () {
          },
          color: Colors.Colors.loco,
          textColor:Colors.Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(buttonText)
      ),
    );
  }
}
