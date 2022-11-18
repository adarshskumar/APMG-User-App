import 'package:apmg/components/text_field_container.dart';
import 'package:apmg/constants.dart';
import 'package:flutter/material.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData? icon;
  final ValueChanged onChanged;
  const RoundedInputField({
    required this.hintText,
    required this.onChanged,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          suffixIcon: Icon(
            icon,
            color: placeHolderColor,
          ),
          hintText: hintText,
          hintStyle: const TextStyle(color: placeHolderColor, fontSize: 17),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
