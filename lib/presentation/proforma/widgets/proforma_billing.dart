import 'package:flutter/material.dart';

import '../../../core/constants.dart';
class ProformaBilling extends StatelessWidget {
  const ProformaBilling({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                fillColor: dark30.withOpacity(0.2),
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none),
                hintText: "Company's Name",
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
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none),
                hintText: "Address1",
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
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none),
                hintText: "Address2",
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
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none),
                hintText: "City",
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
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none),
                hintText: "State",
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
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none),
                hintText: "Country",
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
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none),
                hintText: "ZIP",
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
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none),
                hintText: "Phone",
              ),
            )
          ],
        ),
      ),
    );
  }
}
