import 'package:covid19/NavDrawer.dart';
import 'package:flutter/material.dart';

class Developer extends StatelessWidget {
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
            'Developers',
            style: TextStyle(
                color: Colors.black87,
                fontSize: 44.0,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Column(children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            padding: EdgeInsets.fromLTRB(16, 20, 0, 0),
            child: Text(
              "Brought To You By:",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins'),
            ),
          ),
        ),
        Flexible(
          flex: 2,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: <Widget>[
              new Container(
                child: Center(
                  child: SizedBox(
                    width: 350.0,
                    height: 210.0,
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
                                  colors: [Colors.amber[900], Colors.amber])),
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
                                            "Siddharth Rajesh Goradia",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 24.0,
                                                fontWeight: FontWeight.bold,
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
        ),
        /*  Column(
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
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    fontFamily: 'Poppins'
    ),
    ),
    ),
    ),
    ]),*/
        Flexible(
          flex: 2,
          child: SingleChildScrollView(
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
                    width: 350.0,
                    height: 210.0,
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
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "Ipsita Goel",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 24.0,
                                                fontWeight: FontWeight.bold,
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
        ),
      ]),
    );
  }
}
