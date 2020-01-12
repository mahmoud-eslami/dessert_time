import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 200,
              height: 200,
              child: Image.asset('assets/images/cookie.png'),
            ),
            SizedBox(
              height: 50,
            ),
            RichText(
              text: TextSpan(
                  style: TextStyle(color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Dessert',
                      style: TextStyle(
                          color: Colors.black38,
                          fontWeight: FontWeight.w900,
                          fontSize: 50),
                    ),
                    TextSpan(
                      text: 'Time',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          fontSize: 15),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
