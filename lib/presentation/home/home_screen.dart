import 'package:apmg/presentation/cashbook/cashbook.dart';
import 'package:apmg/presentation/credit_note/credit_note.dart';
import 'package:apmg/presentation/customer_statement/screen_customer_statement.dart';
import 'package:apmg/presentation/home/widgets/menu_icon.dart';
import 'package:apmg/presentation/home/widgets/navigation_drawer.dart';
import 'package:apmg/presentation/invoice/invoice.dart';
import 'package:apmg/presentation/pod/screen_pod.dart';
import 'package:apmg/presentation/showcase/screen_showcase.dart';
import 'package:apmg/presentation/wish_list/screen_wishlist.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
        title: const Text('HOME'),
      ),
      drawer: const NavigationDrawer(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
              left: width * 0.085, right: width * 0.085, top: width * 0.03),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Invoice()),
                      );
                    },
                    child: MenuIcon(
                      screenWidth: width,
                      screenHeight: height,
                      menuIcon: Image.asset('assets/icons/invoice.png'),
                      menuText: 'INVOICE',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ScreenPOD()),
                      );
                    },
                    child: MenuIcon(
                      screenWidth: width,
                      screenHeight: height,
                      menuText: 'POD',
                      menuIcon: Image.asset('assets/icons/pod.png'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MenuIcon(
                    screenWidth: width,
                    screenHeight: height,
                    menuIcon: Image.asset('assets/icons/proforma.png'),
                    menuText: 'PROFORMA',
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ScreenShowCase()),
                      );
                    },
                    child: MenuIcon(
                      screenWidth: width,
                      screenHeight: height,
                      menuText: 'SHOW CASE',
                      menuIcon: Image.asset('assets/icons/diamond.png'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ScreenCustomerStatement()),
                      );
                    },
                    child: MenuIcon(
                      screenWidth: width,
                      screenHeight: height,
                      menuIcon: Image.asset(
                        'assets/icons/customer.png',
                        height: height * 0.07,
                      ),
                      menuText: ' CUSTOMER \n STATEMENT',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ScreenCreditNote()),
                      );
                    },
                    child: MenuIcon(
                      screenWidth: width,
                      screenHeight: height,
                      menuText: 'CREDIT NOTE',
                      menuIcon: Image.asset('assets/icons/credit.png'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CashBook()),
                      );
                    },
                    child: MenuIcon(
                      screenWidth: width,
                      screenHeight: height,
                      menuIcon: Image.asset('assets/icons/cashbook.png'),
                      menuText: 'CASH BOOK',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ScreenWishList()),
                      );
                    },
                    child: MenuIcon(
                      screenWidth: width,
                      screenHeight: height,
                      menuText: 'WISH LIST',
                      menuIcon: Image.asset('assets/icons/cart.png'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
