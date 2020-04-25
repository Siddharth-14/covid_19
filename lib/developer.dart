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
                fontSize: 38.0,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8.0,8.0,0.0,0.0),
        child: Column(children: <Widget>[
            Flexible(
              flex: 5,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: <Widget>[
                  new Container(
                    child: Center(
                      child: SizedBox(
                        width: 390.0,
                        height: 260.0,
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
                                                12.0, 8.0, 0.0, 0.0),
                                            child: Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                "Siddharth Goradia",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 24.0,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'Poppins'),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets
                                                .fromLTRB(
                                                12.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              "UI/UX Designer,  App Developer",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.w100,
                                                  fontFamily: 'Poppins'),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets
                                                .fromLTRB(
                                                12.0, 12.0, 0.0, 0.0),
                                            child: Text(
                                              "Github:",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Poppins'),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets
                                                .fromLTRB(
                                                12.0, 0.0, 0.0, 8.0),
                                            child: Text(
                                              "https://github.com/Siddharth-14",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 17.0,
                                                fontFamily: 'Poppins',
                                                decoration: TextDecoration
                                                    .underline,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets
                                                .fromLTRB(
                                                12.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              "Linkedin:",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Poppins'),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets
                                                .fromLTRB(
                                                12.0, 0.0, 0.0, 8.0),
                                            child: Text(
                                              "https://www.linkedin.com/in/siddharth-goradia-831979155/",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 17.0,
                                                  fontFamily: 'Poppins',
                                                  decoration: TextDecoration
                                                      .underline
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
            Flexible(
           flex: 5,
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
                        width: 390.0,
                        height: 260.0,
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
                                                12.0, 8.0, 0.0, 0.0),
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
                                          Padding(
                                            padding: const EdgeInsets
                                                .fromLTRB(
                                                12.0, 0.0, 0.0, 8.0),
                                            child: Text(
                                              "UI/UX Designer,  App Developer",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.w100,
                                                  fontFamily: 'Poppins'),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets
                                                .fromLTRB(
                                                12.0, 12.0, 0.0, 0.0),
                                            child: Text(
                                              "Github:",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Poppins'
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets
                                                .fromLTRB(
                                                12.0, 0.0, 0.0, 8.0),
                                            child: Text(
                                              "https://github.com/ipsitagoel",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 17.0,
                                                fontFamily: 'Poppins',
                                                decoration: TextDecoration
                                                    .underline,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets
                                                .fromLTRB(
                                                12.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              "Linkedin:",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Poppins'
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets
                                                .fromLTRB(
                                                12.0, 0.0, 0.0, 8.0),
                                            child: Text(
                                              "https://www.linkedin.com/in/ipsita-goel-a611a91a0",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 17.0,
                                                  fontFamily: 'Poppins',
                                                  decoration: TextDecoration
                                                      .underline
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
      ),
    );
  }
}
