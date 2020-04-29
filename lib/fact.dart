import 'package:covid19/NavDrawer.dart';
import 'package:flutter/material.dart';

class Fact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        /*actions: <Widget>[
          IconButton(icon: Icon(Theme.of(context).brightness==Brightness.dark?Icons.lightbulb_outline:Icons.highlight), onPressed: (){
            DynamicTheme.of(context).setBrightness(Theme.of(context).brightness==Brightness.dark?Brightness.dark:Brightness.light);
          })
        ],*/
        elevation: 0.0,
        centerTitle: true,
        iconTheme: new IconThemeData(),
        //backgroundColor: Colors.white,
        title: Align(
          alignment: Alignment.bottomCenter,
          child: Text(
            'Myth Busters',
            style: TextStyle(
                //color: Colors.black87,
                fontSize: 38.0,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 8.0, 0.0, 0.0),
        child: Column(children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.fromLTRB(16, 20, 0, 0),
              child: Text(
                "Facts",
                style: TextStyle(
                    //color: Colors.black87,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins'),
              ),
            ),
          ),
          Flexible(
            flex: 5,
            //child: SingleChildScrollView(
            //scrollDirection: Axis.vertical,
            //physics: BouncingScrollPhysics(),
            child: //Row(children: <Widget>[
                // Column(
            // children: <Widget>[]
            GridView.count(crossAxisCount: 2, children: <Widget>[
              //]),
              //]),
              new Container(
                child: Center(
                  child: SizedBox(
                    width: 220.0,
                    height: 200.0,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
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
                                            12.0, 16.0, 12.0, 16.0),
                                        child: Text(
                                          "Catching the new coronavirus DOES NOT mean you'll have it for life.",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18.0,
                                              //fontWeight: FontWeight.bold,
                                              fontFamily: 'Poppins'),
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
                    width: 220.0,
                    height: 200.0,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
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
                                  colors: [Colors.red[900], Colors.red])),
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
                                            12.0, 24.0, 12.0, 24.0),
                                        child: Text(
                                          "Cold weather and snow CANNOT kill the CoronaVirus.",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18.0,
                                              //fontWeight: FontWeight.bold,
                                              fontFamily: 'Poppins'),
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
                    width: 220.0,
                    height: 200.0,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
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
                                            12.0, 16.0, 12.0, 16.0),
                                        child: Text(
                                          "Coronavirus CAN be transmitted in areas with hot and humid climates.",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18.0,
                                              //fontWeight: FontWeight.bold,
                                              fontFamily: 'Poppins'),
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
                    width: 220.0,
                    height: 200.0,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
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
                                            12.0, 24.0, 12.0, 24.0),
                                        child: Text(
                                          "Hand dryers are NOT effective in killing the coronavirus.",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18.0,
                                              //fontWeight: FontWeight.bold,
                                              fontFamily: 'Poppins'),
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
                    width: 220.0,
                    height: 200.0,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
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
                                  colors: [Colors.red[900], Colors.red])),
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
                                            12.0, 16.0, 12.0, 16.0),
                                        child: Text(
                                          "UV light SHOULD NOT be used for sterilization and can cause skin irritation.",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18.0,
                                              //fontWeight: FontWeight.bold,
                                              fontFamily: 'Poppins'),
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
                    width: 220.0,
                    height: 200.0,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
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
                                            12.0, 24.0, 12.0, 24.0),
                                        child: Text(
                                          "Taking a hot bath DOES NOT prevent the coronavirus.",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18.0,
                                              //fontWeight: FontWeight.bold,
                                              fontFamily: 'Poppins'),
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
                    width: 220.0,
                    height: 200.0,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
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
                                            12.0, 16.0, 12.0, 16.0),
                                        child: Text(
                                          "There's NO evidence that pets like dogs or cats can transmit it.",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18.0,
                                              //fontWeight: FontWeight.bold,
                                              fontFamily: 'Poppins'),
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
                    width: 220.0,
                    height: 200.0,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
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
                                  colors: [Colors.red[900], Colors.red])),
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
                                            12.0, 24.0, 12.0, 24.0),
                                        child: Text(
                                          "Antibiotics DO NOT work against viruses, only bacteria.",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18.0,
                                              //fontWeight: FontWeight.bold,
                                              fontFamily: 'Poppins'),
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
                    width: 220.0,
                    height: 200.0,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
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
                                            12.0, 16.0, 12.0, 16.0),
                                        child: Text(
                                          "Spraying alcohol or chlorine on your body WILL NOT kill already entered viruses.",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18.0,
                                              //fontWeight: FontWeight.bold,
                                              fontFamily: 'Poppins'),
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
                    width: 220.0,
                    height: 200.0,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
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
                                            12.0, 24.0, 12.0, 24.0),
                                        child: Text(
                                          "Thermal scanners CANNOT detect the coronavirus.",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18.0,
                                              //fontWeight: FontWeight.bold,
                                              fontFamily: 'Poppins'),
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
                    width: 220.0,
                    height: 200.0,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
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
                                  colors: [Colors.red[900], Colors.red])),
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
                                            12.0, 16.0, 12.0, 16.0),
                                        child: Text(
                                          "There's NO medicine recommended to prevent/treat CoronaVirus.",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18.0,
                                              //fontWeight: FontWeight.bold,
                                              fontFamily: 'Poppins'),
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
                    width: 220.0,
                    height: 200.0,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
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
                                            12.0, 24.0, 12.0, 24.0),
                                        child: Text(
                                          "It CANNOT be transmitted through mosquito bites.",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18.0,
                                              //fontWeight: FontWeight.bold,
                                              fontFamily: 'Poppins'),
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
            // ),
          ),
        ]),
      ),
    );
  }
}
