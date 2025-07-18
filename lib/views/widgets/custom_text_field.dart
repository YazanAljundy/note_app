import 'package:flutter/material.dart';
import 'package:tone_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText, this.maxLine = 1});
  final String hintText;
  final int maxLine;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLine,
      cursorColor: kprimaryColor,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: kprimaryColor),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kprimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
