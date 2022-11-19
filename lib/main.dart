import 'package:apmg/presentation/credit_note/credit_note.dart';
import 'package:apmg/presentation/customer_statement/screen_customer_statement.dart';
import 'package:apmg/presentation/home/home.dart';
import 'package:apmg/presentation/home/menu_dashboard.dart';
import 'package:apmg/presentation/pod/screen_pod.dart';
import 'package:apmg/presentation/showcase/product_showcase.dart';
import 'package:apmg/presentation/showcase/screen_showcase.dart';
import 'package:apmg/presentation/invoice/invoice.dart';
import 'package:apmg/presentation/login/login_screen.dart';
import 'package:apmg/presentation/login/splash_screen.dart';
import 'package:apmg/core/theme.dart';
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
      home: Invoice(),
    );
  }
}
