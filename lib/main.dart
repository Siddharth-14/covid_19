import 'package:covid19/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(new MaterialApp(
    home: new HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  Widget build(BuildContext context) {
    return  MaterialApp(
          title: 'Covid-19',
          debugShowCheckedModeBanner: false,
          theme: new ThemeData(
              primarySwatch: Colors.blue,
              primaryColor: Colors.black,
              primaryIconTheme: IconThemeData(color: Colors.black),
              primaryTextTheme: TextTheme(
                  title: TextStyle(color: Colors.black, fontFamily: "Poppins")),
              textTheme: TextTheme(title: TextStyle(color: Colors.black))),
        );
}
    @override
    HomePageState createState() => new HomePageState();
}
