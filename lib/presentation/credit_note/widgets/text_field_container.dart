import 'package:apmg/core/constants.dart';
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
      padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.05, vertical: size.width * 0.004),
      decoration: BoxDecoration(
        border: Border.all(color: dark30.withOpacity(0.4)),
        color: dark30.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
