import 'package:apmg/components/rounded_button.dart';
import 'package:apmg/components/rounded_input_field.dart';
import 'package:apmg/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: null,
      body: Stack(
        children: [
          Image.asset(
            "assets/images/back.jpg",
            height: height,
            width: width,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 100,
          ),
          Container(
            padding: EdgeInsets.only(
                top: height * 0.55, left: width * 0.07, right: width * 0.07),
            child: Column(
              children: [
                const Text(
                  'Login',
                  style: TextStyle(
                      fontSize: 27,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                      color: placeHolderColor,
                      decoration: TextDecoration.none),
                ),
                SizedBox(
                  height: width * 0.06,
                ),
                RoundedInputField(
                  hintText: 'Username',
                  onChanged: (value) {},
                ),
                RoundedInputField(
                  hintText: 'Password',
                  onChanged: (value) {},
                  icon: Icons.remove_red_eye_outlined,
                ),
                SizedBox(
                  height: width * 0.06,
                ),
                RoundedButton(text: 'Login', press: () {})
              ],
            ),
          ),
        ],
      ),
    );
  }
}
