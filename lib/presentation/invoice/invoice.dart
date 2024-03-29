import 'package:apmg/presentation/home/widgets/navigation_drawer.dart';
import 'package:apmg/presentation/invoice/widgets/invoice_customer.dart';
import 'package:apmg/presentation/invoice/widgets/invoice_billing.dart';
import 'package:apmg/presentation/invoice/widgets/invoice_invoicescreen.dart';
import 'package:apmg/presentation/invoice/widgets/invoice_item.dart';
import 'package:apmg/presentation/invoice/widgets/invoice_shipping.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../core/constants.dart';
import '../proforma/widgets/proforma_account.dart';

ValueNotifier<int> indexNotifier = ValueNotifier(0);

//code
class Invoice extends StatefulWidget {
  const Invoice({Key? key}) : super(key: key);
  final pages = const[
    ScreenCustomer(),
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
