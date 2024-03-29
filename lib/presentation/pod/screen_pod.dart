import 'package:apmg/core/constants.dart';
import 'package:apmg/presentation/credit_note/widgets/half_rounded_button.dart';
import 'package:apmg/presentation/home/widgets/navigation_drawer.dart';
import 'package:apmg/presentation/pod/widgets/invoice_field.dart';
import 'package:flutter/material.dart';

class ScreenPOD extends StatelessWidget {
  const ScreenPOD({super.key});

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
        title: const Text('POD'),
      ),
      drawer: const NavigationDrawer(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.08, vertical: width * 0.06),
          child: Column(
            children: [
              const InvoiceField(
                hintText: 'Invoice',
                suffixIcon: Icon(
                  Icons.close,
                  color: textFieldPlaceholderColor,
                ),
              ),
              SizedBox(
                height: height * 0.06,
              ),
              const InvoiceField(
                hintText: 'Draw your signature',
              ),
              SizedBox(
                height: height * 0.06,
              ),
              Padding(
                padding: EdgeInsets.only(left: width * 0.5),
                child: HalfRoundedButton(
                  text: 'Clear',
                  press: () {},
                  textColor: Colors.black,
                  bgColor: dark30.withOpacity(0.3),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
