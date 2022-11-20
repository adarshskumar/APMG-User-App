import 'package:apmg/presentation/showcase/widgets/search_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../core/constants.dart';

class ScreenCustomer extends StatelessWidget {
  const ScreenCustomer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
        child: Column(
          children: [
            SearchField(
              prefixIcon: 'assets/icons/Search.png',
              hintText: 'Select a customer',
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
                  hintText: 'Choose a brand',
                  prefixIcon: Icon(
                    Icons.arrow_drop_down_circle_outlined,
                    color: black.withOpacity(0.5),
                  )),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            const Text(
              "Results",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: const [
                Text(
                  "Credit Limit",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: const [
                Text(
                  "Total Due",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: const [
                Text(
                  "Total Paid",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: const [
                Text(
                  "APMG Cred",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: const [
                Text(
                  "Brand Discount",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
