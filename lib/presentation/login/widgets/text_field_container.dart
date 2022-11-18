import 'package:apmg/constants.dart';
import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.9,
      height: size.height * 0.065,
      decoration: BoxDecoration(
        border: Border.all(color: textFieldBgColor),
        color: dark30,
        borderRadius: BorderRadius.circular(30),
      ),
      child: child,
    );
  }
}
