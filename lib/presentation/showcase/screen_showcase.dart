import 'package:apmg/core/constants.dart';
import 'package:apmg/presentation/showcase/widgets/search_field.dart';
import 'package:flutter/material.dart';

class ScreenShowCase extends StatelessWidget {
  const ScreenShowCase({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: width * 0.055),
          child: IconButton(
            icon: Image.asset(
              'assets/icons/menu_icon.png',
            ),
            onPressed: () {},
          ),
        ),
        title: const Text('Showcase'),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.08, vertical: width * 0.06),
        child: Column(
          children: [
            SearchField(
              prefixIcon: 'assets/icons/Search.png',
              hintText: 'Select a customer',
            ),
            SizedBox(
              height: height * 0.06,
            ),
            SearchField(
              prefixIcon: 'assets/icons/qrcode.png',
              hintText: 'Item/Job',
              suffixIcon: Icon(Icons.add_circle_outline),
            ),
          ],
        ),
      )),
    );
  }
}
