import 'package:flutter/material.dart';
import 'package:doctroid_app/Dashboard/mapLocator/mapView.dart';
import 'package:doctroid_app/Dashboard/patientsDetail/medicalRecords.dart';
import 'package:doctroid_app/Dashboard/patientsDetail/patientsDetail.dart';

import 'package:doctroid_app/loginPage/SignupPage.dart';
import 'package:doctroid_app/loginPage/loginPage.dart';
import 'package:doctroid_app/loginPage/splash.dart';

import 'package:doctroid_app/profilePage/profile.dart';
import 'package:doctroid_app/profilePage/profilep.dart';
import 'package:doctroid_app/startPage.dart';
import 'package:doctroid_app/loginPage/HomePage.dart';
import 'package:doctroid_app/loginPage/HomePaged.dart';

import 'Dashboard/doctorsDashboard.dart';
import 'Dashboard/patientDashboard.dart';
import 'Dashboard/patientsDetail/viewDetails.dart';
import 'loginPage/HomePage.dart';
import 'loginPage/doctorsLogin.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of our application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Doctroid',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/startPage': (context) => startPage(),
        '/patientDashboard': (context) => patientDashboardPage(),
        '/mapPage': (context) => mapPage(),
        '/viewDetails': (context) => viewDetails(),
        '/detailsForm': (context) => detailsForm(),
        '/profile': (context) => profilePage(),
        '/profilep': (context) => profilepPage(),
        '/records': (context) => medicalRecords(),
        '/splashPage': (context) => SplashScreen(),
        '/HomePage': (context) => HomePage(),
        '/HomePaged': (context) => HomePaged(),
        '/login': (context) => LoginPage(),
        '/register': (context) => SignupPage(),
        '/doctorsLogin': (context) => doctorsLogin(),
        '/doctorsDashboard': (context) => doctorsDashboardPage(),
      },
    );
  }
}
