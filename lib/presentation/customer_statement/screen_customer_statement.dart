import 'package:apmg/core/constants.dart';
import 'package:apmg/presentation/home/widgets/navigation_drawer.dart';
import 'package:apmg/presentation/login/widgets/rounded_button.dart';
import 'package:apmg/presentation/showcase/widgets/search_field.dart';
import 'package:flutter/material.dart';

class ScreenCustomerStatement extends StatelessWidget {
  const ScreenCustomerStatement({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: IconButton(
                icon: Image.asset(
                  'assets/icons/menu_icon.png',
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              ),
            );
          },
        ),
        title: const Text('Customer Statement'),
      ),
      drawer: const NavigationDrawer(),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.08, vertical: width * 0.06),
        child: Column(
          children: [
            const SearchField(
              prefixIcon: 'assets/icons/Search.png',
              hintText: 'Select a customer',
            ),
            SizedBox(
              height: height * 0.06,
            ),
            RoundedButton(text: 'View Statement', press: () {}),
            SizedBox(
              height: height * 0.03,
            ),
            RoundedButton(text: 'Email&View', press: () {}),
            SizedBox(
              height: height * 0.03,
            ),
            RoundedButton(
                bgColor: dark30.withOpacity(0.3),
                text: 'Cancel',
                textColor: Colors.black,
                press: () {}),
          ],
        ),
      )),
    );
  }
}
