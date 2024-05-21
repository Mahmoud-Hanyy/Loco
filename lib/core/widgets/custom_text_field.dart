import 'package:flutter/material.dart';
import 'package:loco/core/utils/styles.dart';

//ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
  String label;
  TextEditingController controller;
  String? Function(String?) validator;
  bool isPassword;
  IconData? icon;

  CustomTextFormField({super.key, required this.label,
    required this.controller,
    required this.validator,
    this.isPassword = false,
    this.icon = Icons.person,
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
          hintStyle: Styles.textStyle16.copyWith(
            color: Theme.of(context).colorScheme.primary
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),),
            prefixIcon: Icon(icon,color: Theme.of(context).colorScheme.primary,),
        ),
      ),
    );
  }
}
