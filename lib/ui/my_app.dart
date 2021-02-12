import 'package:flutter/material.dart';
import 'package:neighbourhood_watch/ui/auth/forget_password.dart';
import 'package:neighbourhood_watch/ui/auth/signup_person.dart';
import 'package:neighbourhood_watch/ui/views/alerts.dart';
import 'package:neighbourhood_watch/ui/views/emergency.dart';
import 'package:neighbourhood_watch/ui/views/homepage.dart';
import 'package:neighbourhood_watch/ui/views/property.dart';
import 'auth/sign_in.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Color.fromRGBO(198, 57, 93, 1),
      theme: ThemeData(
        primaryColor: Color.fromRGBO(198, 57, 93, 1),
      ),
      debugShowCheckedModeBanner: false, 
      home: SignIn(),
      routes: {
        'SignIn': (BuildContext context) => SignIn(),
        'SignUpPerson': (BuildContext context) => SignUpPerson(),
        'ForgetPassword': (BuildContext context) => ForgetPassword(),
        'Homepage': (BuildContext context) => HomePage(),
        'Property': (BuildContext context) => Property(),
        'Alerts': (BuildContext context) => Alerts(),
        'Emergency': (BuildContext context) => Emergency(),
      },
    );
  }
}