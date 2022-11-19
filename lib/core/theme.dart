import 'package:apmg/core/constants.dart';
import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: backgroundColor,
    fontFamily: 'Poppins',
    visualDensity: VisualDensity.comfortable,
    backgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
      backgroundColor: backgroundColor,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 26,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w500),
      iconTheme: IconThemeData(color: black),
    ),
    textTheme: const TextTheme(
      bodyText1: TextStyle(fontFamily: 'Poppins'),
      bodyText2: TextStyle(fontFamily: 'Poppins'),
    ),
  );
}
