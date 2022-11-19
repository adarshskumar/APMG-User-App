import 'package:apmg/core/constants.dart';
import 'package:apmg/presentation/home/widgets/navigation_drawer.dart';
import 'package:apmg/presentation/invoice/invoice.dart';
import 'package:apmg/presentation/showcase/widgets/search_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ScreenWishList extends StatelessWidget {
  const ScreenWishList({super.key});

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
        title: const Text('Wishlist'),
      ),
      drawer: const NavigationDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: dark70,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.7),
        selectedIconTheme: IconThemeData(color: Colors.white),
        unselectedIconTheme: IconThemeData(color: Colors.white),
        currentIndex: indexNotifier.value,
        //height: height * 0.075,
        //activeColor: Colors.white.withOpacity(0.01),
        items: const [
          BottomNavigationBarItem(
              backgroundColor: dark70,
              icon: Icon(
                FontAwesomeIcons.solidUser,
                color: Colors.white,
              ),
              label: 'Customer'),
          BottomNavigationBarItem(
              backgroundColor: dark70,
              icon: Icon(
                FontAwesomeIcons.plusCircle,
                color: Colors.white,
              ),
              label: 'Item'),
          BottomNavigationBarItem(
              backgroundColor: dark70,
              icon: Icon(
                FontAwesomeIcons.moneyBill,
                color: Colors.white,
              ),
              label: 'Billing'),
          BottomNavigationBarItem(
              backgroundColor: dark70,
              icon: Icon(
                FontAwesomeIcons.shippingFast,
                color: Colors.white,
              ),
              label: 'Wishlist'),
          BottomNavigationBarItem(
              backgroundColor: dark70,
              icon: Icon(
                FontAwesomeIcons.receipt,
                color: Colors.white,
              ),
              label: 'Invoice'),
        ],
        onTap: (int index) {
          indexNotifier.value = index;
        },
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
          ],
        ),
      )),
    );
  }
}
