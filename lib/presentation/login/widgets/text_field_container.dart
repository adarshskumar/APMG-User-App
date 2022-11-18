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
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      height: size.height * 0.065,
      decoration: BoxDecoration(
        border: Border.all(color: textFieldBgColor),
        color: dark30.withOpacity(0.25),
        borderRadius: BorderRadius.circular(30),
        boxShadow: const [
          // BoxShadow(
          //   offset: Offset(-10, 10),
          //   color: Colors.black,
          //   blurRadius: 10.0,
          // ),
          // BoxShadow(blurRadius: 8.0),
          // BoxShadow(offset: Offset(-16, 16)),
        ],
      ),
      child: child,
    );
  }
}
