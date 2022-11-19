import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../core/constants.dart';

ValueNotifier<bool> email = ValueNotifier(false);
ValueNotifier<bool> fax = ValueNotifier(false);

class ScreenInvoice extends StatelessWidget {
  const ScreenInvoice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
          padding: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
          child: Column(children: [
            TextField(
              decoration: InputDecoration(
                  fillColor: dark30.withOpacity(0.4),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide.none),
                  hintText: "ShipVia",
                  suffixIcon: Icon(FontAwesomeIcons.shippingFast)),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            TextField(
              decoration: InputDecoration(
                  fillColor: dark30.withOpacity(0.4),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide.none),
                  hintText: "Shipping Location",
                  suffixIcon: Icon(FontAwesomeIcons.locationPin)),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            TextField(
              decoration: InputDecoration(
                  fillColor: dark30.withOpacity(0.4),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide.none),
                  hintText: "Terms Days",
                  suffixIcon: Icon(FontAwesomeIcons.calendarDays)),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            TextField(
              decoration: InputDecoration(
                fillColor: dark30.withOpacity(0.4),
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none),
                hintText: "Tracking ID",
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            const Divider(color: black),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: const [
                Text(
                  "Total Pieces",
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
                  "Discount",
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
                  "Misc. Charge",
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
                  "Shipping Charge",
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
                  "Sub Total",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.01,
            ),
            const Divider(
              color: black,
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              children: const [
                Text(
                  "Net Invoice Amount",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.005,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ValueListenableBuilder(
                    valueListenable: email,
                    builder: (context, value, child) => Checkbox(
                          activeColor: dark30,
                          value: email.value,
                          onChanged: (emailValue) {
                            email.value = emailValue!;
                          },
                        )),
                const Text(
                  "email",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: width * 0.46,
                ),
                ValueListenableBuilder(
                  valueListenable: fax,
                  builder: (context, value, child) => Checkbox(
                    activeColor: dark30,
                    value: fax.value,
                    onChanged: (faxValue) {
                      fax.value = faxValue!;
                    },
                  ),
                ),
                const Text(
                  "fax",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ],
            )
          ])),
    );
  }
}
