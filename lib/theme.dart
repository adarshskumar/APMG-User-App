import 'package:apmg/constants.dart';
import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
     fontFamily: "Muli",
    // appBarTheme: appBarTheme(),
    // textTheme: textTheme(),
    // inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.comfortable,
    backgroundColor: Colors.black,
    appBarTheme:const AppBarTheme(
      iconTheme: IconThemeData(
        color: black
      )
    )
  );
}
