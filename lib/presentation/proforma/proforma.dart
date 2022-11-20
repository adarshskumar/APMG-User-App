import 'package:apmg/presentation/home/widgets/navigation_drawer.dart';
import 'package:apmg/presentation/proforma/widgets/proforma_account.dart';
import 'package:apmg/presentation/proforma/widgets/proforma_billing.dart';
import 'package:apmg/presentation/proforma/widgets/proforma_invoice.dart';
import 'package:apmg/presentation/proforma/widgets/proforma_item.dart';
import 'package:apmg/presentation/proforma/widgets/proforma_shipping.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../core/constants.dart';

ValueNotifier<int> indexNotifier = ValueNotifier(0);

//code
class Proforma extends StatefulWidget {
  const Proforma({Key? key}) : super(key: key);
  final pages = const [
    ProformaCustomer(),
    ProformaItem(),
    ProformaBilling(),
    ProformaShipping(),
    ProformaInvoice(),
  ];
  @override
  State<Proforma> createState() => _ProformaState();
}

class _ProformaState extends State<Proforma> {
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
              "Proforma",
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
            selectedIconTheme:const IconThemeData(color: Colors.white),
            unselectedIconTheme:const IconThemeData(color: Colors.white),
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
