import 'package:covid19/NavDrawer.dart';
import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
          centerTitle: true,
          elevation: 0.0,
          iconTheme: new IconThemeData(color: Colors.black87),
          backgroundColor: Colors.white,
          title: Text(
            'Info',
            style: TextStyle(
                color: Colors.black87,
                fontSize: 30.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: new Center(
            child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          }, //code this later
          child: Text('Press here'),
        )));
  }
}
