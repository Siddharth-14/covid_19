import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'NavDrawer.dart';

class Donation extends StatelessWidget {
  Future<void> _launched;
  String _launchUrl = '/www.pmindia.gov.in/en/?query';

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'header_key': 'header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        iconTheme: new IconThemeData(color: Colors.black87),
        backgroundColor: Colors.white,
        title: Align(
          alignment: Alignment.bottomRight,
          child: Text(
            'Donations',
            style: TextStyle(
                color: Colors.black87,
                fontSize: 48.0,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Column(children: <Widget>[
        new Flexible(
          flex: 3,
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.fromLTRB(16, 20, 0, 0),
                  child: Text(
                    "Fund Details",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins'),
                  ),
                ),
              ),
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                child: Column(children: <Widget>[
                  new Container(
                    child: Center(
                      child: SizedBox(
                        width: 390.0,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              8.0, 18.0, 0.0, 8.0),
                                          child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              "Prime Minister’s Citizen Assistance and Relief in Emergency Situations Fund (PM CARES Fund)",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Poppins'),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              8.0, 16.0, 0.0, 12.0),
                                          child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              "Website:",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Poppins'),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                RaisedButton(
                                  onPressed: () {
                                    _launchInBrowser(_launchUrl);
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          10.0)),
                                  padding: const EdgeInsets.all(0.0),
                                  child: Ink(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment.topRight,
                                          end: Alignment.bottomLeft,
                                          colors: [
                                            Colors.amber[900],
                                            Colors.amber
                                          ]),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                    ),
                                    child: Container(
                                      constraints: const BoxConstraints(
                                          minWidth: 10.0, minHeight: 50.0),
                                      alignment: Alignment.center,
                                      child: const Text('pmindia.gov.in',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          8.0, 18.0, 0.0, 8.0),
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "Visit the website pmindia.gov.in and donate to PM CARES Fund using following details:",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.0,
                                              fontFamily: 'Poppins'),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          8.0, 18.0, 0.0, 8.0),
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "Name of the Account:    PM CARES \nAccount Number:    2121PM20202 \nIFSC Code:    SBIN0000691 \nSWIFT Code:    SBININBB104 \nName of Bank & Branch:    State Bank of India, New Delhi Main Branch \nUPI ID:    pmcares@sbi",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Poppins'),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}