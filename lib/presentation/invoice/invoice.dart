import 'package:apmg/presentation/invoice/widgets/account.dart';
import 'package:apmg/presentation/invoice/widgets/billing.dart';
import 'package:apmg/presentation/invoice/widgets/invoice.dart';
import 'package:apmg/presentation/invoice/widgets/item.dart';
import 'package:apmg/presentation/invoice/widgets/shipping.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../core/constants.dart';

ValueNotifier<int> indexNotifier = ValueNotifier(0);

class Invoice extends StatefulWidget {
  Invoice({Key? key}) : super(key: key);
  final pages = [
    ScreenAccount(),
    ScreenItem(),
    ScreenBilling(),
    ScreenShipping(),
    ScreenInvoice()
  ];
  @override
  State<Invoice> createState() => _InvoiceState();
}

class _InvoiceState extends State<Invoice> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return ValueListenableBuilder(
      valueListenable: indexNotifier,
      builder: (context, newIndex, _) {
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
          bottomNavigationBar: BottomNavigationBar(
            //initialActiveIndex: indexNotifier.value,
            selectedItemColor: Colors.white,
            unselectedLabelStyle: const TextStyle(
            decorationColor: Colors.white
            ,color: Colors.white),
            selectedLabelStyle: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500),
            //color: Colors.white,
            currentIndex: indexNotifier.value,
            //height: height * 0.075,
            //activeColor: Colors.white.withOpacity(0.01),
            items: const [
              BottomNavigationBarItem(
                  backgroundColor: dark70,
                  icon: Icon(
                    FontAwesomeIcons.user,
                    color: Colors.white,
                  ),
                  label: 'Account'),
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
                  label: 'Shipping'),
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
          body: ValueListenableBuilder(
            valueListenable: indexNotifier,
            builder: (context, index, child) {
              return widget.pages[index];
            },
          ),
        );
      },
    );
  }
}
