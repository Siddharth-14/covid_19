import 'package:flutter/material.dart';

import 'NavDrawer.dart';

class Donation extends StatelessWidget {
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
                                              8.0, 16.0, 0.0, 0.0),
                                          child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              "Website:",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Poppins'),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              8.0, 0.0, 0.0, 8.0),
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "pmindia.gov.in",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14.0,
                                                  decoration: TextDecoration
                                                      .underline,
                                                  fontFamily: 'Poppins'),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              12.0, 12.0, 0.0, 8.0),
                                          child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              "Visit the website pmindia.gov.in and donate to PM CARES Fund using following details: \n\nName of the Account:   PM CARES \nAccount Number:   2121PM20202 \nIFSC Code:   SBIN0000691 \nSWIFT Code:   SBININBB104 \nName of Bank & Branch:   State Bank of India, New Delhi Main Branch \nUPI ID:   pmcares@sbi",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14.0,
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
                                              "Prime Minister's National Relief Fund",
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
                                              8.0, 16.0, 0.0, 0.0),
                                          child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              "Website:",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Poppins'),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              8.0, 0.0, 0.0, 8.0),
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "https://pmnrf.gov.in/en/",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14.0,
                                                  decoration: TextDecoration
                                                      .underline,
                                                  fontFamily: 'Poppins'),
                                            ),
                                          ),
                                        ),
                                      ],
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