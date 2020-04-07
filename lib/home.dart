import 'package:flutter/material.dart';
import 'package:covid19/main.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class HomePageState extends State<HomePage> {
  List data;
  List brief;

  Future<String> getData() async {
    var response = await http.get(
        Uri.encodeFull("https://api.covid19api.com/summary"),
        headers: {"Accept": "application/json"});

    this.setState(() {
      var con = json.decode(response.body);
      data = con["Countries"];
    });

    print(brief);

    return "Success!";
  }

  Future<String> getBrief() async {
    var response = await http.get(
        Uri.encodeFull("https://api.covid19api.com/summary"),
        headers: {"Accept": "application/json"});

    this.setState(() {
      var con = json.decode(response.body);
      brief = con["Global"];
    });

    print(brief);

    return "Success!";
  }

  @override
  void initState() {
    super.initState();
    this.getData();
    this.getBrief();
  }

  @override
  Widget build(BuildContext context) {
    return new SafeArea(
      child: Scaffold(
        body: new Column(children: <Widget>[
          Flexible(
            flex: 2,
            child: Container(
              child: new ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: brief == null ? 0 : brief.length,
                itemBuilder: (context, position) {
                  return Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    elevation: 5,
                    child: Column(
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      12.0, 12.0, 12.0, 6.0),
                                  child: Text(
                                    brief[position]["TotalConfirmed"].toString(),
                                    style: TextStyle(
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      12.0, 6.0, 12.0, 12.0),
                                  child: Text(
                                    data[position]["TotalDeaths"].toString(),
                                    style: TextStyle(fontSize: 18.0),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
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
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      12.0, 6.0, 12.0, 12.0),
                                  child: Text(
                                    data[position]["TotalDeaths"].toString(),
                                    style: TextStyle(fontSize: 18.0),
                                  ),
                                ),
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
}