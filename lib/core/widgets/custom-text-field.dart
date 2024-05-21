import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loco/core/utils/styles.dart';
import '../utils/colors.dart';

class CustomTextFormField extends StatelessWidget {
  String label;
  TextEditingController controller;
  String? Function(String?) validator;
  bool isPassword;
  CustomTextFormField({required this.label,
    required this.controller,
    required this.validator,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextFormField(
        controller: controller,
        validator: validator,
        obscureText: isPassword ,
        decoration:  InputDecoration(
          hintText: label,
          hintStyle: Styles.textStyle16,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: loco),),
          prefixIcon: Icon(Icons.person,color: loco,),
        ),
      ),
    );
  }
}
