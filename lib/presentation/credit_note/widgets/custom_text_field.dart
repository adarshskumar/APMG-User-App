import 'package:apmg/core/constants.dart';
import 'package:apmg/presentation/credit_note/widgets/text_field_container.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData? icon;
  final ValueChanged onChanged;
  const CustomTextField({
    required this.hintText,
    required this.onChanged,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(bottom: size.width * 0.045),
      child: TextFieldContainer(
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
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Poppins',
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
