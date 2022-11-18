import 'package:flutter/material.dart';

class RowText extends StatelessWidget {
  final String firstName;
  final String secondName;
  RowText({
    Key? key,
    required this.height,
    required this.firstName,
    required this.secondName,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: height * 0.02),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            firstName,
            style: TextStyle(
                fontSize: 19,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400),
          ),
          Text(
            secondName,
            style: TextStyle(
                fontSize: 19,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
