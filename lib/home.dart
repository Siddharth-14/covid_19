import 'dart:async';
import 'dart:convert';

import 'package:covid19/main.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'NavDrawer.dart';

class HomePageState extends State<HomePage> {
  List<dynamic> data;
  Map<String, dynamic> brief;

  Future<String> getData() async {
    var response = await http.get(
        Uri.encodeFull("https://api.covid19api.com/summary"),
        headers: {"Accept": "application/json"});

    this.setState(() {
      Map<String, dynamic> con = json.decode(response.body);
      data = con["Countries"];
      brief = con["Global"];
    });
    return "Success!";
  }

  @override
  void initState() {
    super.initState();
    this.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        centerTitle: true,
        iconTheme: new IconThemeData(color: Colors.black87),
        backgroundColor: Colors.white,
        title: Text('Home',
          style:
          TextStyle(
              color: Colors.black87,
              fontSize: 30.0,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Column(children: <Widget>[
          Flexible(
            flex: 2,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: <Widget>[
                new Container(
                  child: new Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    elevation: 5,
                    color: Colors.yellow,
                    child: Column(
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      6.0, 6.0, 6.0, 3.0),
                                  child: Text(
                                    "Total Confirmed: ",
                                    style: TextStyle(
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      6.0, 6.0, 6.0, 3.0),
                                  child: Text(
                                    brief["TotalConfirmed"].toString(),
                                    style: TextStyle(
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold),
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
                new Container(
                  child: new Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    elevation: 5,
                    color: Colors.red,
                    child: Column(
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      6.0, 6.0, 6.0, 3.0),
                                  child: Text(
                                    "Total Deaths: ",
                                    style: TextStyle(
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      6.0, 6.0, 6.0, 3.0),
                                  child: Text(
                                    brief["TotalDeaths"].toString(),
                                    style: TextStyle(
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold),
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
                new Container(
                  child: new Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    elevation: 5,
                    color: Colors.green,
                    child: Column(
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      6.0, 6.0, 6.0, 3.0),
                                  child: Text(
                                    "Total Recovered: ",
                                    style: TextStyle(
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      6.0, 6.0, 6.0, 3.0),
                                  child: Text(
                                    brief["TotalRecovered"].toString(),
                                    style: TextStyle(
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold),
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
              ]),
            ),
          ),
          Flexible(
            flex: 8,
            child: Container(
              child: new ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: data == null ? 0 : data.length,
                itemBuilder: (context, position) {
                  return Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    elevation: 5,
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      12.0, 12.0, 12.0, 6.0),
                                  child: Text(
                                    data[position]["Country"],
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
                                        padding: const EdgeInsets.fromLTRB(
                                            12.0, 6.0, 12.0, 12.0),
                                        child: Text(
                                          "Total Confirmed:",
                                          style: TextStyle(fontSize: 16.0),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            12.0, 3.0, 6.0, 3.0),
                                        child: Text(
                                          data[position]["TotalConfirmed"]
                                              .toString(),
                                          style: TextStyle(fontSize: 16.0),
                                        ),
                                      ),
                                    ]),
                                Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            12.0, 6.0, 12.0, 12.0),
                                        child: Text(
                                          "Total Recovered:",
                                          style: TextStyle(fontSize: 16.0),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            12.0, 6.0, 12.0, 12.0),
                                        child: Text(
                                          data[position]["TotalRecovered"]
                                              .toString(),
                                          style: TextStyle(fontSize: 16.0),
                                        ),
                                      ),
                                    ]),
                                Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            12.0, 6.0, 12.0, 12.0),
                                        child: Text(
                                          "Total Deaths:",
                                          style: TextStyle(fontSize: 16.0),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            12.0, 3.0, 6.0, 3.0),
                                        child: Text(
                                          data[position]["TotalDeaths"]
                                              .toString(),
                                          style: TextStyle(fontSize: 16.0),
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
    );
  }
}
