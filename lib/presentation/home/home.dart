import 'package:apmg/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
        leading: Padding(
          padding: EdgeInsets.only(left: width * 0.055),
          child: IconButton(
            icon: Image.asset(
              'assets/icons/menu_icon.png',
            ),
            onPressed: () {},
          ),
        ),
        title: const Text(
          "Home",
          style: TextStyle(fontSize: 22, color: black),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: width * 0.35,
                  height: height * 0.18,
                  child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      color: dark70,
                      elevation: 10,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.receipt,
                              color: Colors.white.withOpacity(0.8),
                              size: height * 0.1,
                            ),
                            const Text(
                              "Invoice",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  width: width * 0.35,
                  height: height * 0.18,
                  child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      color: dark70,
                      elevation: 10,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.book,
                              color: Colors.white.withOpacity(0.8),
                              size: height * 0.1,
                            ),
                            const Text(
                              "POD",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      )),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: width * 0.35,
                  height: height * 0.18,
                  child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      color: dark70,
                      elevation: 10,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.mailBulk,
                              color: Colors.white.withOpacity(0.8),
                              size: height * 0.1,
                            ),
                            const Text(
                              "Proforma",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  width: width * 0.35,
                  height: height * 0.18,
                  child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      color: dark70,
                      elevation: 10,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.gem,
                              color: Colors.white.withOpacity(0.8),
                              size: height * 0.1,
                            ),
                            const Text(
                              "ShowCase",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      )),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: width * 0.35,
                  height: height * 0.18,
                  child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      color: dark70,
                      elevation: 10,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.solidUser,
                              color: Colors.white.withOpacity(0.8),
                              size: height * 0.1,
                            ),
                            const Text(
                              "Customer",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  width: width * 0.35,
                  height: height * 0.18,
                  child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      color: dark70,
                      elevation: 10,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.creditCard,
                              color: Colors.white.withOpacity(0.8),
                              size: height * 0.1,
                            ),
                            const Text(
                              "Credit Note",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      )),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: width * 0.35,
                  height: height * 0.18,
                  child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      color: dark70,
                      elevation: 10,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.moneyBill,
                              color: Colors.white.withOpacity(0.8),
                              size: height * 0.1,
                            ),
                            const Text(
                              "Cash Book",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  width: width * 0.35,
                  height: height * 0.18,
                  child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      color: dark70,
                      elevation: 10,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.shoppingCart,
                              color: Colors.white.withOpacity(0.8),
                              size: height * 0.1,
                            ),
                            const Text(
                              "WishList",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
