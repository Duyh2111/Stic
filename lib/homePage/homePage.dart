

import 'package:flutter/material.dart ';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled1/Signin/Login.dart';

class MyHomePage extends StatelessWidget {
  static const String id = "Homepage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center, //Custome location button this here
        children:<Widget>[
          Center(child: Text("Webcome to the Homepage")),
          FlatButton.icon(
            onPressed:() async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              prefs.remove('token');
              Navigator.pushNamed(context, Login.id);
            },
            icon: Icon(Icons.login_outlined),
             label: Text("Logout"),)
        ]
      )
    );
  }
}