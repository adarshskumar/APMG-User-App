import 'package:apmg/core/constants.dart';
import 'package:apmg/presentation/credit_note/widgets/half_rounded_button.dart';
import 'package:apmg/presentation/home/widgets/navigation_drawer.dart';
import 'package:apmg/presentation/login/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CashBook extends StatelessWidget {
  const CashBook({super.key});

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
        title: const Text('Cash Book'),
      ),
      drawer: const NavigationDrawer(),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.08, vertical: width * 0.06),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                fillColor: dark30.withOpacity(0.2),
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
                hintText: "Vendor/Customer Name",
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            TextField(
              decoration: InputDecoration(
                fillColor: dark30.withOpacity(0.2),
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
                hintText: "Email Address",
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            TextField(
              decoration: InputDecoration(
                fillColor: dark30.withOpacity(0.2),
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
                hintText: "Date",
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            TextField(
              decoration: InputDecoration(
                  fillColor: dark30.withOpacity(0.2),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none),
                  hintText: "Mode",
                  suffixIcon: Icon(FontAwesomeIcons.circleChevronDown)),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            TextField(
              decoration: InputDecoration(
                  fillColor: dark30.withOpacity(0.2),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none),
                  hintText: "Type",
                  suffixIcon: Icon(FontAwesomeIcons.circleChevronDown)),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            TextField(
              decoration: InputDecoration(
                fillColor: dark30.withOpacity(0.2),
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
                hintText: "Amount",
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            TextField(
              decoration: InputDecoration(
                fillColor: dark30.withOpacity(0.2),
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
                hintText: "Description",
              ),
            ),
            SizedBox(
              height: height * 0.06,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HalfRoundedButton(
                    bgColor: dark30.withOpacity(0.3),
                    text: 'Cancel',
                    textColor: Colors.black,
                    press: () {}),
                HalfRoundedButton(
                    bgColor: primaryYellow,
                    text: 'Next',
                    textColor: Colors.white,
                    press: () {}),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
