import 'package:flutter/material.dart';
import 'package:ol10/presentation/color_pallette.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final Color color;
  final String? hintText;

  const CustomTextField(
      {super.key,
      required this.controller,
      this.color = ol10Magenta,
      this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: color,
      decoration: InputDecoration(
          hintText: hintText,
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: color))),
    );
  }
}
