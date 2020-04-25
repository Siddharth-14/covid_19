import 'dart:async';
import 'dart:convert';

import 'package:covid19/main.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'NavDrawer.dart';

class HomePageState extends State<HomePage> {
  Map<String, dynamic> con;

  Future<String> getData() async {
    var response = await http.get(
        Uri.encodeFull("https://api.covid19india.org/data.json"),
        headers: {"Accept": "application/json"});

    this.setState(() {
      con = json.decode(response.body);
    });

    return "Success";
  }

  @override
  void initState() {
    super.initState();
    this.getData();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getData(),
        builder: (ctx, snapshot) {
            return Scaffold(
              drawer: NavDrawer(),
              appBar: AppBar(
                elevation: 0.0,
                centerTitle: true,
                iconTheme: new IconThemeData(color: Colors.black87),
                backgroundColor: Colors.white,
                title: Align(
                  alignment: Alignment.bottomRight,
                  child: Text('Home',
                    style:
                    TextStyle(
                        color: Colors.black87,
                        fontSize: 38.0,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              body: Padding(
                padding: const EdgeInsets.fromLTRB(8.0,8.0,0.0,0.0),
                child: Column(children: <Widget>[
                  Flexible(
                    flex: 2,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: <Widget>[
                        new Container(
                          child: Center(
                            child: SizedBox(
                              width: 180.0,
                              height: 110.0,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: new Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  elevation: 5,
                                  color: Colors.yellow,
                                  child: Container(
                                    decoration: BoxDecoration(
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
                                                      0.0, 18.0, 0.0, 8.0),
                                                  child: Align(
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      con["statewise"][0]["confirmed"],
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 36.0,
                                                          fontWeight: FontWeight
                                                              .bold),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .fromLTRB(
                                                      0.0, 0.0, 8.0, 0.0),
                                                  child: Align(
                                                    alignment: Alignment
                                                        .bottomRight,
                                                    child: Text(
                                                      "Total Confirmed",
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 18.0,
                                                          fontWeight: FontWeight
                                                              .normal),
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
                              width: 180.0,
                              height: 110.0,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: new Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  elevation: 5,
                                  color: Colors.red,
                                  child: Container(
                                    decoration: BoxDecoration(
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
                                                      0.0, 18.0, 0.0, 8.0),
                                                  child: Align(
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      con["statewise"][0]["deaths"],
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 36.0,
                                                          fontWeight: FontWeight
                                                              .bold),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .fromLTRB(
                                                      0.0, 0.0, 8.0, 0.0),
                                                  child: Align(
                                                    alignment: Alignment
                                                        .bottomRight,
                                                    child: Text(
                                                      "Total Deaths",
                                                      style: TextStyle(
                                                          fontSize: 18.0,
                                                          fontWeight: FontWeight
                                                              .normal,
                                                          color: Colors.white
                                                      ),
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
                            width: 180.0,
                            height: 110.0,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: new Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                elevation: 5,
                                color: Colors.green,
                                child: Container(
                                  decoration: BoxDecoration(
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
                                                    0.0, 18.0, 0.0, 8.0),
                                                child: Align(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    con["statewise"][0]["recovered"],
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 36.0,
                                                        fontWeight: FontWeight
                                                            .bold),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets
                                                    .fromLTRB(
                                                    0.0, 0.0, 8.0, 0.0),
                                                child: Align(
                                                  alignment: Alignment
                                                      .bottomRight,
                                                  child: Text(
                                                    "Total Recovered",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 18.0,
                                                        fontWeight: FontWeight
                                                            .normal),
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
                  ),
                  Flexible(
                    flex: 8,
                    child: Container(
                      child: new ListView.separated(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            height: 10,
                          );
                        },
                        shrinkWrap: true,
                        itemCount: con["statewise"] == null ? 0 : con["statewise"]
                            .length - 1,
                        itemBuilder: (context, position) {
                          position++;
                          return Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            elevation: 5,
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              12.0, 12.0, 12.0, 2.0),
                                          child: Text(
                                            con["statewise"][position]["state"],
                                            style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Poppins'),
                                          ),
                                        ),
                                        Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets
                                                    .fromLTRB(
                                                    12.0, 6.0, 12.0, 2.0),
                                                child: Text(
                                                  "Total Confirmed:",
                                                  style: TextStyle(
                                                      fontSize: 16.0),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets
                                                    .fromLTRB(
                                                    12.0, 3.0, 6.0, 3.0),
                                                child: Text(
                                                  con["statewise"][position]["confirmed"],
                                                  style: TextStyle(
                                                      fontSize: 16.0),
                                                ),
                                              ),
                                            ]),
                                        Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets
                                                    .fromLTRB(
                                                    12.0, 6.0, 12.0, 2.0),
                                                child: Text(
                                                  "Total Recovered:",
                                                  style: TextStyle(
                                                      fontSize: 16.0),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets
                                                    .fromLTRB(
                                                    12.0, 6.0, 12.0, 2.0),
                                                child: Text(
                                                  con["statewise"][position]["recovered"],
                                                  style: TextStyle(
                                                      fontSize: 16.0),
                                                ),
                                              ),
                                            ]),
                                        Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets
                                                    .fromLTRB(
                                                    12.0, 6.0, 12.0, 2.0),
                                                child: Text(
                                                  "Total Deaths:",
                                                  style: TextStyle(
                                                      fontSize: 16.0),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets
                                                    .fromLTRB(
                                                    12.0, 3.0, 6.0, 3.0),
                                                child: Text(
                                                  con["statewise"][position]["deaths"],
                                                  style: TextStyle(
                                                      fontSize: 16.0),
                                                ),
                                              ),
                                            ]),
                                      ],
                                    ),
                                  ],
                                ),
                                Divider(
                                  height: 2.0,
                                  color: Colors.grey,
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ]),
              ),
            );
        }
    );
  }
}
