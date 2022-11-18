import 'package:apmg/core/constants.dart';
import 'package:flutter/material.dart';

class InvoiceField extends StatelessWidget {
  final String hintText;
  final Icon? suffixIcon;
  const InvoiceField({Key? key, required this.hintText, this.suffixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: height * 0.061,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(width: 1, color: borderColor),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        onChanged: (value) => print(value),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
              vertical: width * 0.042, horizontal: width * 0.06),
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          hintText: hintText,
          hintStyle: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 15,
              color: textFieldPlaceholderColor,
              fontWeight: FontWeight.w300),
          suffixIcon: Padding(
            padding: EdgeInsets.only(right: width * 0.04),
            child: suffixIcon,
          ),
        ),
      ),
    );
  }
}
