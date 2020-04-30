import 'dart:async';

import 'package:covid19/home.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());
Map<int, Color> color = {
  50: Color.fromRGBO(136, 14, 79, .1),
  100: Color.fromRGBO(136, 14, 79, .2),
  200: Color.fromRGBO(136, 14, 79, .3),
  300: Color.fromRGBO(136, 14, 79, .4),
  400: Color.fromRGBO(136, 14, 79, .5),
  500: Color.fromRGBO(136, 14, 79, .6),
  600: Color.fromRGBO(136, 14, 79, .7),
  700: Color.fromRGBO(136, 14, 79, .8),
  800: Color.fromRGBO(136, 14, 79, .9),
  900: Color.fromRGBO(136, 14, 79, 1),
};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    MaterialColor colorCustom = MaterialColor(0xFFFFFFFF, color);
    return DynamicTheme(
      data: (brightness) {
        return ThemeData(
          //primaryColor: Colors.white,
          //accentColor: Colors.white,
          primarySwatch: colorCustom,
          brightness: brightness == Brightness.light
              ? Brightness.dark
              : Brightness.light,
          scaffoldBackgroundColor: brightness == Brightness.light ? Colors
              .blueGrey[2000] : Colors.white,
        );
      },
      themedWidgetBuilder: (context, theme) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Covid Care",
            theme: theme,
            home: SplashScreenPage()
        );
      },

    );
  }
}
// First screen --- Splash Screen Page
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

class HomePage extends StatefulWidget {

  @override
  HomePageState createState() => new HomePageState();
}
