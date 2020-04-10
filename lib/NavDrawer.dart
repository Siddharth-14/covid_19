import 'package:covid19/contact.dart';
import 'package:covid19/info.dart';
import 'package:covid19/main.dart';
import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'COVID-19',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () => {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new HomePage()))
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('Info'),
            onTap: () => {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new Info()))
            },
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text('Guidelines'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.contacts),
            title: Text('Contact'),
            onTap: () => {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new Contact()))
            },
          ),
        ],
      ),
    );
  }
}
