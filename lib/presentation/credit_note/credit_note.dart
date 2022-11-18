import 'package:apmg/core/constants.dart';
import 'package:apmg/presentation/credit_note/widgets/custom_text_field.dart';
import 'package:apmg/presentation/credit_note/widgets/half_rounded_button.dart';
import 'package:apmg/presentation/showcase/widgets/search_field.dart';
import 'package:flutter/material.dart';

class ScreenCreditNote extends StatelessWidget {
  const ScreenCreditNote({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: width * 0.055),
          child: IconButton(
            icon: Image.asset(
              'assets/icons/menu_icon.png',
            ),
            onPressed: () {},
          ),
        ),
        title: const Text('Credit Note'),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.08, vertical: width * 0.06),
          child: Column(
            children: [
              const SearchField(
                prefixIcon: 'assets/icons/Search.png',
                hintText: 'Select a customer',
              ),
              SizedBox(
                height: height * 0.06,
              ),
              CustomTextField(hintText: 'Date', onChanged: (val) {}),
              CustomTextField(hintText: 'Amount', onChanged: (val) {}),
              CustomTextField(hintText: 'Reason', onChanged: (val) {}),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HalfRoundedButton(
                      bgColor: dark30.withOpacity(0.3),
                      text: 'Cancel',
                      textColor: Colors.black,
                      press: () {}),
                  HalfRoundedButton(
                      bgColor: dark30.withOpacity(0.3),
                      text: 'Save & Email',
                      textColor: Colors.black,
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
