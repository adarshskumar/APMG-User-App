import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../core/constants.dart';
class ScreenItem extends StatelessWidget {
  const ScreenItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
            padding:
            EdgeInsets.only(left: width * 0.05, right: width * 0.05),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      fillColor: dark30.withOpacity(0.4),
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide.none),
//                  labelText: 'Select a Customer',
                      hintText: 'Add an Item',
                      prefixIcon: Icon(
                        FontAwesomeIcons.plusCircle,
                        color: black.withOpacity(0.5),
                      )),
                )
              ],
            ),
          )),
    );
  }
}
