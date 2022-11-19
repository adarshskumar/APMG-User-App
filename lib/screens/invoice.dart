import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../core/constants.dart';

class Invoice extends StatefulWidget {
  const Invoice({Key? key}) : super(key: key);

  @override
  State<Invoice> createState() => _InvoiceState();
}

class _InvoiceState extends State<Invoice> {
  dynamic screennumber = 0;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: backgroundColor,
      primary: true,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        title: const Text(
          "Invoice",
          style: TextStyle(fontSize: 22, color: black),
        ),
        centerTitle: true,
      ),
      drawer: const Drawer(),
      bottomNavigationBar: ConvexAppBar(
        color: Colors.white,
        backgroundColor: dark30,
        height: height * 0.075,
        activeColor: Colors.white.withOpacity(0.01),
        items: const [
          TabItem(
              icon: Icon(
                FontAwesomeIcons.user,
                color: Colors.white,
              ),
              title: 'Account'),
          TabItem(
              icon: Icon(
                FontAwesomeIcons.plusCircle,
                color: Colors.white,
              ),
              title: 'Item'),
          TabItem(
              icon: Icon(
                FontAwesomeIcons.moneyBill,
                color: Colors.white,
              ),
              title: 'Billing'),
          TabItem(
              icon: Icon(
                FontAwesomeIcons.shippingFast,
                color: Colors.white,
              ),
              title: 'Shipping'),
          TabItem(
              icon: Icon(
                FontAwesomeIcons.receipt,
                color: Colors.white,
              ),
              title: 'Invoice'),
        ],
        onTap: (int i) {
          setState(() {
            screennumber = i;
          });
        },
      ),
      body: screennumber == 0
          ? SingleChildScrollView(
              child: Container(
              padding: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        fillColor: dark30.withOpacity(0.2),
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none),
                        hintText: 'Select a Customer',
                        prefixIcon: Icon(
                          FontAwesomeIcons.search,
                          color: black.withOpacity(0.5),
                        )),
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
                        hintText: 'Choose a brand',
                        prefixIcon: Icon(
                          FontAwesomeIcons.list,
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
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w300),
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
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w300),
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
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w300),
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
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ],
              ),
            ))
          : screennumber == 1
              ? SingleChildScrollView(
                  child: Container(
                  padding:
                      EdgeInsets.only(left: width * 0.05, right: width * 0.05),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            fillColor: dark30.withOpacity(0.4),
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide.none),
//                  labelText: 'Select a Customer',
                            hintText: 'Add an Item',
                            prefixIcon: Icon(
                              FontAwesomeIcons.plusCircle,
                              color: black.withOpacity(0.5),
                            )),
                      )
                    ],
                  ),
                ))
              : screennumber == 2
                  ? SingleChildScrollView(
                      padding: EdgeInsets.only(
                          left: width * 0.05, right: width * 0.05),
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              fillColor: dark30.withOpacity(0.4),
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
                              fillColor: dark30.withOpacity(0.4),
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
                              fillColor: dark30.withOpacity(0.4),
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
                              fillColor: dark30.withOpacity(0.4),
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
                              fillColor: dark30.withOpacity(0.4),
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
                              fillColor: dark30.withOpacity(0.4),
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
                              fillColor: dark30.withOpacity(0.4),
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
                              fillColor: dark30.withOpacity(0.4),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide.none),
                              hintText: "Phone",
                            ),
                          )
                        ],
                      ),
                    )
                  : screennumber == 3
                      ? SingleChildScrollView(
                          padding: EdgeInsets.only(
                              left: width * 0.05, right: width * 0.05),
                          child: Column(
                            children: [
                              TextField(
                                decoration: InputDecoration(
                                  fillColor: dark30.withOpacity(0.4),
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
                                  fillColor: dark30.withOpacity(0.4),
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
                                  fillColor: dark30.withOpacity(0.4),
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
                                  fillColor: dark30.withOpacity(0.4),
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
                                  fillColor: dark30.withOpacity(0.4),
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
                                  fillColor: dark30.withOpacity(0.4),
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
                                  fillColor: dark30.withOpacity(0.4),
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
                                  fillColor: dark30.withOpacity(0.4),
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide.none),
                                  hintText: "Phone",
                                ),
                              )
                            ],
                          ),
                        )
                      : SingleChildScrollView(
                          padding: EdgeInsets.only(
                              left: width * 0.05, right: width * 0.05),
                          child: Column(children: [
                            TextField(
                              decoration: InputDecoration(
                                  fillColor: dark30.withOpacity(0.4),
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide.none),
                                  hintText: "ShipVia",
                                  suffixIcon:
                                      Icon(FontAwesomeIcons.shippingFast)),
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
                                  suffixIcon:
                                      Icon(FontAwesomeIcons.locationPin)),
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
                                  suffixIcon:
                                      Icon(FontAwesomeIcons.calendarDays)),
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
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300),
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
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300),
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
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300),
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
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            const Divider(
                              color: black,
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Row(
                              children: const [
                                Text(
                                  "Net Invoice Amount",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "email",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "fax",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            )
                          ])),
    );
  }
}
