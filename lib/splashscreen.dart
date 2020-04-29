import 'dart:async';

import 'package:flutter/material.dart';

import 'main.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 6);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) {
          return HomePage();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Image.asset(
              "asset/icon.png",
              width: 200.0,
              height: 100.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets
                .fromLTRB(8.0, 18.0, 0.0, 8.0),
            child: Text(
              "COVID Care",
              style: TextStyle(
                  color: Color(0xFFE6505D),
                  fontSize: 18.0,
                  //fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins'),
            ),
          ),
        ],
      ),
    );
  }
}


