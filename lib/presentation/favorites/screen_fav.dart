import 'package:apmg/presentation/login/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class ScreenFav extends StatelessWidget {
  const ScreenFav({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        title: const Text('Favorites'),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.08, vertical: width * 0.06),
        child: Column(
          children: [
            Image.asset(
              'assets/images/fav_body.png',
              width: width * 0.75,
            ),
            Text(
              'No favorites yet',
              style: TextStyle(
                  fontSize: 26,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: height * 0.025,
            ),
            Text(
              '   Hit the button down \nbelow to Create an order',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: height * 0.025,
            ),
            RoundedButton(text: 'Start Ordering', press: () {})
          ],
        ),
      )),
    );
  }
}
