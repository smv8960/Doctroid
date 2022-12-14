import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:doctroid_app/dialogBox/dialog.dart';

// ignore: camel_case_types
class patientDashboardPage extends StatefulWidget {
  patientDashboardPage({Key key, this.uid}) : super(key: key);
  final String uid;

  @override
  _patientDashboardPageState createState() => _patientDashboardPageState(uid);
}

// ignore: camel_case_types
class _patientDashboardPageState extends State<patientDashboardPage> {
  int _default = 1;

  String uid;

  _patientDashboardPageState(this.uid);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 10,
        automaticallyImplyLeading: false,
        title: Center(child: Text("Patient's Dashboard")),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                  ),
                  child: Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Find Your",
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w400,
                                fontSize: 25),
                          ),
                          Text(
                            "Doctor",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 35),
                          ),
                          SizedBox(height: 30),
                          FlatButton(
                            child: Container(
                              height: 100,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black38,
                                        blurRadius: 10,
                                        offset: Offset(0, 8))
                                  ]),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Image(
                                          image: AssetImage(
                                        "assets/images/doctors.png",
                                      )),
                                    ),
                                  ),
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Column(
                                        children: <Widget>[
                                          Text(
                                            "Check Doctor's near you!",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                            ),
                                          ),
                                          SizedBox(height: 8),
                                          Container(
                                            width: 150,
                                            child: Text(
                                              "Get the location of the Doctors present around you..",
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/mapPage');
                            },
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          FlatButton(
                            child: Container(
                              height: 100,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black38,
                                        blurRadius: 10,
                                        offset: Offset(0, 8))
                                  ]),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Image(
                                          image: AssetImage(
                                        "assets/images/prescription.png",
                                      )),
                                    ),
                                  ),
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Column(
                                        children: <Widget>[
                                          Text(
                                            "Check your prescriptions",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                            ),
                                          ),
                                          SizedBox(height: 8),
                                          Container(
                                            width: 150,
                                            child: Text(
                                              "Get all your prescriptions here.. ",
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/HomePage');
                            },
                          )
                        ],
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      FlatButton(
                        child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black38,
                                      blurRadius: 10,
                                      offset: Offset(0, 8))
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Image(
                                      image: AssetImage(
                                          "assets/images/account.png")),
                                  Column(
                                    children: <Widget>[
                                      Text(
                                        'No Need to Worry about filling Forms!',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Container(
                                        width: 150,
                                        child: Text(
                                          'Setup your account and upload your medical history securely in a "CLICK"',
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )),
                        onPressed: () {
                          Navigator.pushNamed(context, '/viewDetails');
                        },
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      SizedBox(
                        height: 40,
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent, //curve color
        color: Colors.lightGreenAccent[700], //background color
        buttonBackgroundColor: Colors.green[600], //circle color
        height: 60,
        index: 1,

        items: <Widget>[
          Icon(Icons.call, size: 28, color: Colors.white),
          Icon(
            Icons.home,
            size: 28,
            color: Colors.white,
          ),
          Icon(
            Icons.account_circle,
            size: 28,
            color: Colors.white,
          )
        ],

        onTap: (index) {
          setState(() {
            if (index == 0) {
              Dialogs.yesAbortDialog(
                  context, 'Alert', 'Do you want to call any ambulance');
            } else if (index == 1) {
              if (_default == 1) {
                return;
              } else {
                Navigator.pushNamed(context, '/patientsDashboard');
              }
            } else if (index == 2) {
              Navigator.pushNamed(context, '/profilep');
              _default = 1;
            }
          });
        },
      ),
    );
  }
}
