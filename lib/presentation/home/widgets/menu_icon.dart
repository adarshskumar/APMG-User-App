import 'package:apmg/core/constants.dart';
import 'package:flutter/material.dart';

class MenuIcon extends StatelessWidget {
  const MenuIcon({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
    required this.menuIcon,
    required this.menuText,
  }) : super(key: key);

  final double? screenWidth;
  final double? screenHeight;
  final Image menuIcon;
  final String menuText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: screenWidth! * 0.03),
      child: SizedBox(
        width: screenWidth! * 0.38,
        height: screenHeight! * 0.2,
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: primaryYellow,
            elevation: 10,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: screenHeight! * 0.03),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  menuIcon,
                  Text(
                    menuText,
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
