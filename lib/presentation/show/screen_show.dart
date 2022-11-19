import 'package:apmg/core/constants.dart';
import 'package:apmg/presentation/credit_note/widgets/half_rounded_button.dart';
import 'package:apmg/presentation/home/widgets/navigation_drawer.dart';
import 'package:apmg/presentation/showcase/widgets/search_field.dart';
import 'package:flutter/material.dart';

class ScreenShow extends StatelessWidget {
  const ScreenShow({super.key});

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
        title: const Text('Show'),
      ),
      drawer: const NavigationDrawer(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.08, vertical: width * 0.06),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    fillColor: dark30.withOpacity(0.2),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                    hintText: 'Show',
                    prefixIcon: Icon(
                      Icons.arrow_drop_down_circle_outlined,
                      color: black.withOpacity(0.5),
                    )),
              ),
              SizedBox(
                height: height * 0.06,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HalfRoundedButton(
                      bgColor: dark30.withOpacity(0.3),
                      text: 'Cancel',
                      textColor: Colors.black,
                      press: () {}),
                  HalfRoundedButton(
                      bgColor: primaryYellow,
                      text: 'Save Settings',
                      textColor: Colors.white,
                      press: () {}),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
