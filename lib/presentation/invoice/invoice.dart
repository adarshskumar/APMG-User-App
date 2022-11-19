import 'package:apmg/presentation/invoice/widgets/account.dart';
import 'package:apmg/presentation/invoice/widgets/billing.dart';
import 'package:apmg/presentation/invoice/widgets/invoice.dart';
import 'package:apmg/presentation/invoice/widgets/item.dart';
import 'package:apmg/presentation/invoice/widgets/shipping.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../core/constants.dart';
ValueNotifier<int> indexNotifier=ValueNotifier(0);
class Invoice extends StatefulWidget {
   Invoice({Key? key}) : super(key: key);
  final pages=[
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
  dynamic screennumber = 0;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return ValueListenableBuilder(valueListenable: indexNotifier, builder: (context, newIndex, _) {
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
          //initialActiveIndex: indexNotifier.value,
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
          onTap: (int index) {
            indexNotifier.value=index;
          },
        ),
        body: ValueListenableBuilder(
          valueListenable: indexNotifier,
          builder: (context, index, child) {
            return widget.pages[index];
          },
        ),
      );
    },);
  }
}
