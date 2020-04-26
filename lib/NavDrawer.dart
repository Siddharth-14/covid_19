import 'package:covid19/developer.dart';
import 'package:covid19/donation.dart';
import 'package:covid19/fact.dart';
import 'package:covid19/guideline.dart';
import 'package:covid19/main.dart';
import 'package:flutter/material.dart';

import 'contact.dart';


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
                'COVID CARE',
                style: TextStyle(
                  //color: Colors.black,
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
            leading: Icon(Icons.book),
            title: Text('Guidelines'),
            onTap: () =>
            {
            Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new Guideline()))
            },
          ),
          ListTile(
            leading: Icon(Icons.contacts),
            title: Text('Contacts'),
            onTap: () => {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new Contact()))
            },
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Myth Busters'),
            onTap: () =>
            {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new Fact()))
            },
          ),
          ListTile(
            leading: Icon(Icons.sentiment_satisfied),
            title: Text('Donations'),
            onTap: () =>
            {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new Donation()))
            },
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
          Padding(
            padding: const EdgeInsets
                .fromLTRB(0.0, 150.0, 0.0, 8.0),
            child: Align(
            alignment: Alignment.bottomCenter,
            child: Text('Developed by'),
          ),
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
