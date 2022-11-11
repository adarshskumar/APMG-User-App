import 'package:apmg/screens/login_screen.dart';
import 'package:apmg/screens/splash_screen.dart';
import 'package:apmg/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'APMG',
      theme: theme(),
      home: LoginScreen(),
    );
  }
}
