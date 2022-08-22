import 'package:flutter/material.dart';
import 'package:doctroid_app/loginPage/loginPage.dart';
import 'package:doctroid_app/startPage.dart';
import 'dart:async';
import 'package:shimmer/shimmer.dart';

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    _mockCheckSession().then((status) {
      if (status) {
        _navigateToHome();
      } else {
        _navigateToLogin();
      }
    });
  }

  Future<bool> _mockCheckSession() async {
    await Future.delayed(Duration(milliseconds: 5000), () {});
    return true;
  }

  void _navigateToHome() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => startPage()));
  }

  void _navigateToLogin() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(alignment: Alignment.center, children: <Widget>[
          Opacity(opacity: 0.8, child: Image.asset('assets/images/bgd.png')),
          Shimmer.fromColors(
              baseColor: Colors.green[900],
              highlightColor: Colors.lightGreen,
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Doctroid',
                  style: TextStyle(
                      fontSize: 90.0,
                      fontFamily: 'Pacifico',
                      shadows: <Shadow>[
                        Shadow(
                            blurRadius: 18.0,
                            color: Colors.black87,
                            offset: Offset.fromDirection(120, 12))
                      ]),
                ),
              ))
        ]),
      ),
    );
  }
}
