import 'package:apmg/core/constants.dart';
import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Color(0xFFEBE7E2),
    fontFamily: 'Poppins',
    visualDensity: VisualDensity.comfortable,
    backgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: black),
    ),
    textTheme: const TextTheme(
      bodyText1: TextStyle(fontFamily: 'Poppins'),
      bodyText2: TextStyle(fontFamily: 'Poppins'),
    ),
  );
}
