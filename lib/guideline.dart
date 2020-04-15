import 'package:flutter/material.dart';

import 'NavDrawer.dart';

class Guideline extends StatelessWidget {
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
          child: Text('Guidelines',
            style:
            TextStyle(
                color: Colors.black87,
                fontSize: 48.0,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
      body: Column(
          children: <Widget>[
            new Flexible(
              flex: 3,
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(16, 20, 0, 0),
                      child: Text(
                        "Symptoms",
                        style:
                        TextStyle(
                            color: Colors.black87,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins'
                        ),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: <Widget>[
                      new Container(
                        child: Center(
                          child: SizedBox(
                            width: 200.0,
                            height: 120.0,
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
                                        mainAxisAlignment: MainAxisAlignment
                                            .spaceBetween,
                                        children: <Widget>[
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment
                                                .start,
                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets
                                                    .fromLTRB(
                                                    8.0, 18.0, 0.0, 8.0),
                                                child: Align(
                                                  alignment: Alignment
                                                      .centerLeft,
                                                  child: Text(
                                                    "Fever &\nTiredness",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 18.0,
                                                        fontWeight: FontWeight
                                                            .bold,
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
                        child: Center(
                          child: SizedBox(
                            width: 200.0,
                            height: 120.0,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: new Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                elevation: 5,
                                color: Colors.red,
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      gradient: LinearGradient(
                                          begin: Alignment.topRight,
                                          end: Alignment.bottomLeft,
                                          colors: [
                                            Colors.red[900],
                                            Colors.red
                                          ])),
                                  child: Column(
                                    children: <Widget>[
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment
                                            .spaceBetween,
                                        children: <Widget>[
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment
                                                .start,
                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets
                                                    .fromLTRB(
                                                    12.0, 18.0, 0.0, 8.0),
                                                child: Align(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    "Continuous Cough",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 18.0,
                                                        fontWeight: FontWeight
                                                            .bold,
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
                          width: 200.0,
                          height: 120.0,
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
                                        colors: [
                                          Colors.green[900],
                                          Colors.green
                                        ])),
                                child: Column(
                                  children: <Widget>[
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment
                                          .spaceBetween,
                                      children: <Widget>[
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start,
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets
                                                  .fromLTRB(
                                                  12.0, 18.0, 0.0, 8.0),
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  "Breathing Difficulties",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18.0,
                                                      fontWeight: FontWeight
                                                          .bold,
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
            new Flexible(
              flex: 4,
              child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                        child: Text(
                          "Directions",
                          style:
                          TextStyle(
                              color: Colors.black87,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins'
                          ),
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: //Row(children: <Widget>[
                      // Column(
                      // children: <Widget>[
                      Row(children: <Widget>[

                        //]),
                        //]),
                        new Container(
                          child: Center(
                            child: SizedBox(
                              width: 300.0,
                              height: 200.0,
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
                                            colors: [
                                              Colors.green[900],
                                              Colors.green
                                            ])),
                                    child: Column(
                                      children: <Widget>[
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment
                                              .spaceBetween,
                                          children: <Widget>[
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment
                                                  .start,
                                              children: <Widget>[
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .fromLTRB(
                                                      12.0, 18.0, 0.0, 0.0),
                                                  child: Align(
                                                    alignment: Alignment
                                                        .topLeft,
                                                    child: Text(
                                                      "Wash Hands",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 24.0,
                                                          fontWeight: FontWeight
                                                              .bold,
                                                          fontFamily: 'Poppins'),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .fromLTRB(
                                                      12.0, 2.0, 12.0, 2.0),
                                                  child: Text(
                                                    "For about 20 seconds with soap & hot water or use a sanitizer.",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 18.0,
                                                        fontFamily: 'Poppins-Medium'),
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
                          child: Center(
                            child: SizedBox(
                              width: 300.0,
                              height: 200.0,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: new Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  elevation: 5,
                                  color: Colors.red,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        gradient: LinearGradient(
                                            begin: Alignment.topRight,
                                            end: Alignment.bottomLeft,
                                            colors: [
                                              Colors.red[900],
                                              Colors.red
                                            ])),
                                    child: Column(
                                      children: <Widget>[
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment
                                              .spaceBetween,
                                          children: <Widget>[
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment
                                                  .start,
                                              children: <Widget>[
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .fromLTRB(
                                                      12.0, 18.0, 0.0, 0.0),
                                                  child: Align(
                                                    alignment: Alignment
                                                        .topLeft,
                                                    child: Text(
                                                      "Use Tissue",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 24.0,
                                                          fontWeight: FontWeight
                                                              .bold,
                                                          fontFamily: 'Poppins'),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .fromLTRB(
                                                      12.0, 6.0, 12.0, 2.0),
                                                  child: Text(
                                                    "Use a tissue for coughs and sneezes. If not, use your sleeve.",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 18.0,
                                                        fontFamily: 'Poppins-Medium'),
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
                            width: 300.0,
                            height: 200.0,
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
                                        mainAxisAlignment: MainAxisAlignment
                                            .spaceBetween,
                                        children: <Widget>[
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment
                                                .start,
                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets
                                                    .fromLTRB(
                                                    12.0, 18.0, 0.0, 0.0),
                                                child: Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Text(
                                                    "Avoid Touching",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 24.0,
                                                        fontWeight: FontWeight
                                                            .bold,
                                                        fontFamily: 'Poppins'),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets
                                                    .fromLTRB(
                                                    12.0, 6.0, 12.0, 2.0),
                                                child: Text(
                                                  "Avoid touching your eyes, nose and mouth with unashed hands.",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18.0,
                                                      fontFamily: 'Poppins-Medium'),
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
                  ]),),
            new Flexible(
              flex: 3,
              child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(16, 20, 0, 0),
                        child: Text(
                          "Prevention",
                          style:
                          TextStyle(
                              color: Colors.black87,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins'
                          ),
                        ),
                      ),
                    ),
                    /*Column(crossAxisAlignment: CrossAxisAlignment
            .start,
            children: <Widget>[
              Text('Directions',
          style:
          TextStyle(
              color: Colors.black87,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins'
          ),
        ),
            ]),*/
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: <Widget>[
                        new Container(
                          child: Center(
                            child: SizedBox(
                              width: 150.0,
                              height: 120.0,
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
                                          mainAxisAlignment: MainAxisAlignment
                                              .spaceBetween,
                                          children: <Widget>[
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment
                                                  .start,
                                              children: <Widget>[
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .fromLTRB(
                                                      12.0, 18.0, 0.0, 8.0),
                                                  child: Align(
                                                    alignment: Alignment
                                                        .topLeft,
                                                    child: Text(
                                                      "Stay At \nHome",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 15.0,
                                                          fontWeight: FontWeight
                                                              .bold,
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
                          child: Center(
                            child: SizedBox(
                              width: 150.0,
                              height: 120.0,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: new Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  elevation: 5,
                                  color: Colors.red,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        gradient: LinearGradient(
                                            begin: Alignment.topRight,
                                            end: Alignment.bottomLeft,
                                            colors: [
                                              Colors.red[900],
                                              Colors.red
                                            ])),
                                    child: Column(
                                      children: <Widget>[
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment
                                              .spaceBetween,
                                          children: <Widget>[
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment
                                                  .start,
                                              children: <Widget>[
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .fromLTRB(
                                                      12.0, 12.0, 0.0, 8.0),
                                                  child: Align(
                                                    alignment: Alignment
                                                        .topLeft,
                                                    child: Text(
                                                      "Avoid \nPublic Gatherings",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 14.0,
                                                          fontWeight: FontWeight
                                                              .bold,
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
                          child: Center(
                            child: SizedBox(
                              width: 150.0,
                              height: 120.0,
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
                                            colors: [
                                              Colors.green[900],
                                              Colors.green
                                            ])),
                                    child: Column(
                                      children: <Widget>[
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment
                                              .spaceBetween,
                                          children: <Widget>[
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment
                                                  .start,
                                              children: <Widget>[
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .fromLTRB(
                                                      12.0, 18.0, 0.0, 8.0),
                                                  child: Align(
                                                    alignment: Alignment
                                                        .topLeft,
                                                    child: Text(
                                                      "Self \nIsolation",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 15.0,
                                                          fontWeight: FontWeight
                                                              .bold,
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
                          child: Center(
                            child: SizedBox(
                              width: 150.0,
                              height: 120.0,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: new Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  elevation: 5,
                                  color: Colors.yellow,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'asset/1-wash.png'),
                                            fit: BoxFit.cover
                                        ),
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
                                          mainAxisAlignment: MainAxisAlignment
                                              .spaceBetween,
                                          children: <Widget>[
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment
                                                  .start,
                                              children: <Widget>[
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .fromLTRB(
                                                      12.0, 18.0, 0.0, 8.0),
                                                  child: Align(
                                                    alignment: Alignment
                                                        .topLeft,
                                                    child: Text(
                                                      "Keep In \nTouch",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 15.0,
                                                          fontWeight: FontWeight
                                                              .bold,
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
                      ]),
                    ),
                  ]),),
            new Flexible(
                flex: 1,
                child: new Container())
          ]),
    );
  }
}


