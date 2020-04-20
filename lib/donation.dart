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
                        height: 600.0,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: new Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            elevation: 5,
                            color: Colors.yellow,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Colors.amber[900],
                                        Colors.amber
                                      ])),
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
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                "Prime Minister’s Citizen Assistance and Relief in Emergency Situations Fund (PM CARES Fund)",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18.0,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'Poppins'),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                8.0, 18.0, 0.0, 0.0),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                "Website:",
                                                style: TextStyle(
                                                    color: Colors.white,
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
                                                    color: Colors.white,
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
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                "Visit the website pmindia.gov.in and donate to PM CARES Fund using following details: \n\nName of the Account:   PM CARES \nAccount Number:   2121PM20202 \nIFSC Code:   SBIN0000691 \nSWIFT Code:   SBININBB104 \nName of Bank & Branch:   State Bank of India, New Delhi Main Branch \nUPI ID:   pmcares@sbi",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14.0,
                                                    fontFamily: 'Poppins'),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                12.0, 12.0, 0.0, 0.0),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                "Following modes of payments are available on the website pmindia.gov.in: \n\n1)  Debit Cards and Credit Cards \n2)  Internet Banking \n3)  UPI (BHIM, PhonePe, Amazon Pay, Google Pay, PayTM, Mobikwik, etc.) \n4)  RTGS/NEFT",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14.0,
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
                  ),
                  new Container(
                    child: SizedBox(
                      width: 390.0,
                      height: 600.0,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: new Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          elevation: 5,
                          color: Colors.green,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    colors: [Colors.green[900], Colors.green])),
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
                                              12.0, 18.0, 0.0, 8.0),
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "Prime Minister's National Relief Fund",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Poppins'),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              8.0, 18.0, 0.0, 0.0),
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "Website:",
                                              style: TextStyle(
                                                  color: Colors.white,
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
                                                  color: Colors.white,
                                                  fontSize: 14.0,
                                                  decoration:
                                                      TextDecoration.underline,
                                                  fontFamily: 'Poppins'),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              12.0, 12.0, 0.0, 8.0),
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "Contributions towards PMNRF can be made:- \n\n1)  At Prime Minister's Office, South Block, in cash and through postal order, cheque or demand draft drawn in favour of the Prime Minister's National Relief Fund and through BHIM App/UPI (VPA: pmnrf@centralbank) . \n2)  Contributions can also be sent to Prime Minister's Office, South Block, New Delhi via post/money order from any of the Post Offices, without any charges. \n3)  Contributions can also be made online through the collection banks portals and through portal of PMO i.e. pmindia.gov.in. \n4)  Through cash, cheque or demand draft drawn in favour of the Prime Minister's National Relief Fund deposited with any of the branches of the 26 designated Collection Banks of the PMNRF, mentioning donor details in the challan to be provided by the concerned bank/ branch. \n5)  No charges will be levied by the network providers' viz. American Express, Diners Club International, Master Card, NPCI and VISA on the contributions being made through debit / credit cards.",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14.0,
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
