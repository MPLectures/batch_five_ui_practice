import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {

  String? hintText;
  IconData? suffixIcon;
  TextEditingController? controller;
  final FormFieldValidator<String>? validator;

  MyTextField({
    required this.hintText,
    this.suffixIcon,
    this.validator,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 43,
      child: TextFormField(
        validator: validator,
        controller: controller,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          suffixIcon: Icon(suffixIcon),
          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
          hintText: hintText,
          filled: true,
          fillColor: Color(0xffF2F2F2),
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(25)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(25)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(25)),
        ),
      ),
    );
  }
}
