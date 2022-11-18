import 'package:apmg/core/constants.dart';
import 'package:flutter/material.dart';

class HalfRoundedButton extends StatelessWidget {
  final String text;
  final Color? color, textColor, bgColor;
  final void Function() press;
  final double rad;
  const HalfRoundedButton(
      {Key? key,
      required this.text,
      this.textColor = Colors.white,
      this.color,
      required this.press,
      this.rad = 10,
      this.bgColor = primaryYellow})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: size.width * 0.38,
      height: height * 0.065,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(rad),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: TextButton(
          style: TextButton.styleFrom(backgroundColor: color),
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
