import 'package:apmg/presentation/home/home.dart';
import 'package:apmg/presentation/login/widgets/rounded_button.dart';
import 'package:apmg/presentation/login/widgets/rounded_input_field.dart';
import 'package:apmg/core/constants.dart';
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
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              "assets/images/back.jpg",
              height: height,
              width: width,
              fit: BoxFit.cover,
            ),
            Container(
              padding: EdgeInsets.only(
                  top: height * 0.52, left: width * 0.09, right: width * 0.09),
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
                  SizedBox(height: width * 0.07),
                  RoundedButton(
                      text: 'Login',
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Home()),
                        );
                      })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
