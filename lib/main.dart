import 'package:flutter/material.dart';
import 'Register/Signup.dart';
import 'homePage/hpage.dart';
import 'Signin/Login.dart';
import './userProfile/userFrofile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Montserrat',
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),

    );
  }
}

