import 'package:apmg/core/constants.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  final String hintText;
  final String prefixIcon;
  final Icon? suffixIcon;
  const SearchField(
      {Key? key,
      required this.hintText,
      required this.prefixIcon,
      this.suffixIcon})
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
        // boxShadow: const [
        //   BoxShadow(
        //     color: Colors.grey,
        //     offset: Offset(0.5, 1),
        //     blurRadius: 0.5,
        //   ),
        // ],
      ),
      child: TextField(
        onChanged: (value) => print(value),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: width * 0.042),
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          hintText: hintText,
          hintStyle: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 15,
              color: borderColor,
              fontWeight: FontWeight.w300),
          prefixIcon: Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.01),
            child: Image.asset(
              prefixIcon,
            ),
          ),
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
