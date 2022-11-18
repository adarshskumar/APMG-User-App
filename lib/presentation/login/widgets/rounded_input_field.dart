import 'package:apmg/presentation/login/widgets/text_field_container.dart';
import 'package:apmg/core/constants.dart';
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
        style: const TextStyle(color: placeHolderColor),
        onChanged: onChanged,
        decoration: InputDecoration(
          suffixIcon: Icon(
            size: 18,
            icon,
            color: placeHolderColor,
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
              color: placeHolderColor, fontSize: 16, fontFamily: 'Poppins'),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
