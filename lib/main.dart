import 'package:covid19/home.dart';
import 'package:covid19/screens/breathe_screen.dart';
import 'package:covid19/screens/settings_screen.dart';
import 'package:covid19/state/settings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(new MaterialApp(
    home: new HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
    Widget build(BuildContext context) {
    return ChangeNotifierProvider<Settings>(
      builder: (context) => Settings(),
      child: MaterialApp(
        title: 'Covid-19',
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(
            primarySwatch: Colors.blue,
            primaryColor: Colors.black,
            primaryIconTheme: IconThemeData(color: Colors.black),
            primaryTextTheme: TextTheme(
                title: TextStyle(color: Colors.black, fontFamily: "Poppins")),
            textTheme: TextTheme(title: TextStyle(color: Colors.black))),
        initialRoute: SettingsScreen.id,
        routes: {
          SettingsScreen.id: (context) => SettingsScreen(),
          BreatheScreen.id: (context) => BreatheScreen(),
        },
      ),
      );
}
    @override
    HomePageState createState() => new HomePageState();
}
