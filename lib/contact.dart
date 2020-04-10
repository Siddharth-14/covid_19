import 'package:covid19/NavDrawer.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:url_launcher/url_launcher.dart';

class CallService {
  void call(String number) => launch("tel:$number");
}

GetIt locator = GetIt();

void set() {
  locator.registerSingleton(CallService());
}

class Contact extends StatelessWidget {
  final CallService _service = locator<CallService>();
  List<String> state = [
    "Andhra Pradesh",
    "Arunachal Pradesh",
    "Assam",
    "Bihar",
    "Chhattisgarh",
    "Goa",
    "Gujarat",
    "Haryana",
    "Himachal Pradesh",
    "Jharkhand",
    "Karnataka",
    "Kerala",
    "Madhya Pradesh",
    "Maharashtra",
    "Manipur",
    "Meghalaya",
    "Mizoram",
    "Nagaland",
    "Odisha",
    "Punjab",
    "Rajasthan",
    "Sikkim",
    "Tamil Nadu",
    "Telangana",
    "Tripura",
    "Uttarakhand",
    "Uttar Pradesh",
    "West Bengal"
  ];
  List<int> number = [
    0866 - 2410978,
    9436055743,
    6913347770,
    104,
    104,
    104,
    104,
    8558893911,
    104,
    104,
    104,
    0471 - 2552056,
    104,
    020 - 26127394,
    3852411668,
    108,
    102,
    7005539653,
    9439994859,
    104,
    0141 - 2225624,
    104,
    044 - 29510500,
    104,
    0381 - 2315879,
    104,
    18001805145,
    1800313444222,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        iconTheme: new IconThemeData(color: Colors.black87),
        backgroundColor: Colors.white,
        title: Text(
          'Contact',
          style: TextStyle(
              color: Colors.black87,
              fontSize: 30.0,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: new Container(
        child: new ListView.separated(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 10,
            );
          },
          shrinkWrap: true,
          itemCount: state == null ? 0 : state.length,
          itemBuilder: (context, position) {
            return Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              elevation: 5,
              child: new InkWell(
                onTap: () {
                  print("Tapped");
                  _service.call(number[position].toString());
                },
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
                                  12.0, 12.0, 12.0, 2.0),
                              child: Text(
                                state[position],
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
                                        12.0, 6.0, 12.0, 2.0),
                                    child: Text(
                                      "Number:",
                                      style: TextStyle(fontSize: 16.0),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        12.0, 3.0, 6.0, 3.0),
                                    child: Text(
                                      number[position].toString(),
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
              ),
            );
          },
        ),
      ),
    );
  }
}
