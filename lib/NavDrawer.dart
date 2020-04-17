import 'package:covid19/developer.dart';
import 'package:covid19/guideline.dart';
import 'package:covid19/main.dart';
import 'package:covid19/screens/settings_screen.dart';
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
                    fontFamily: 'Poppins',
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
            leading: Icon(Icons.filter_hdr),
            title: Text('My District'),
            onTap: () =>
            {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new HomePage()))
            },
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text('Guidelines'),
            onTap: () =>
            {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new Guideline()))
            },
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text('Breathing Meditation'),
            onTap: () =>
            {
              Navigator.push(context,
                  new MaterialPageRoute(
                      builder: (context) => new SettingsScreen()))
            },
          ),
          ListTile(
            leading: Icon(Icons.contacts),
            title: Text('Contact'),
            /*onTap: () => {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new Contact()))
            },*/
          ),
          ListTile(
            leading: Icon(Icons.group),
            title: Text('Developers'),
            onTap: () =>
            {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new Developer()))
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text('Developed by'),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text('IEEE CS-VIT'),
          ),
        ],
      ),
    );
  }
}
