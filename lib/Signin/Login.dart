import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled1/ForgotPassword/ForrgotPassword.dart';
import 'package:untitled1/Signup/Signup.dart';
import 'package:http/http.dart' as http;
import 'package:untitled1/homePage/homePage.dart';



class Login extends StatefulWidget {
  static const String id = "Login";
  

  @override
  State<Login> createState() => _LoginState();
  
}

class _LoginState extends State<Login> {
  
  final _globalkey = GlobalKey<FormState>();
  var email;
  var password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: Image.asset("assets/images/Background.jpg").image,
              fit: BoxFit.fill),
        ),
        child: Center(
          child: Center(
            child: Column(
              children: [
                AppBar(
                  leading: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  backgroundColor: Colors.transparent,
                  elevation: 0.0,
                  title: Text(
                    "Đăng nhập",
                    style: TextStyle(
                      color: Color(0xFF0f45e7),
                      fontSize: 18,
                    ),
                  ),
                ),
                Container(
                  width: 350,
                  margin: const EdgeInsets.only(top: 130.0, bottom: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffF6F6F6)),
                  child: TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xffe8e8e8), width: 1.0),
                        ),
                        hintText: "Email",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 16)),
                        //obscureText: true,
                        onChanged: (value){
                          email = value;
                        }
                  ),
                ),
                Container(
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffF6F6F6)),
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: "Password",
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xffe8e8e8), width: 1.0),
                        ),
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 16)),
                        onChanged: (value){
                         password = value;
                        }
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgotPassword()));
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 20, left: 220),
                    child: Text(
                      "Quên mật khẩu?",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff625F6E),
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: Container(
                    height: 50,
                    width: 400,
                    child: FlatButton(
                      color: Colors.blue,
                      onPressed:  ()  async  {
                      signin(email,password);
                      WidgetsFlutterBinding.ensureInitialized();
                      SharedPreferences prefs = await SharedPreferences.getInstance();
                      String? token = prefs.getString("token");
                      if(token != null){
                        Navigator.pushNamed(context, MyHomePage.id);
                      }
                      },
                    child: Text ("Signin", style: TextStyle(color: Colors.white))),
                    ),
                  ),
                Row(children: <Widget>[
                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 15.0, right: 10.0),
                        child: Divider(color: Color(0XFF625F6E))),
                  ),
                  Text(
                    "Hoặc",
                    style: TextStyle(
                      color: Color(0XFF625F6E),
                      fontSize: 16,
                    ),
                  ),
                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 15.0, right: 10.0),
                        child: Divider(color: Color(0XFF625F6E))),
                  ),
                ]),
                Container(
                  width: 339,
                  height: 52,
                  margin: const EdgeInsets.only(top: 35, bottom: 70),
                  padding: EdgeInsets.symmetric(horizontal: 58, vertical: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xfff6f6f6),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        // spreadRadius: 4,
                        blurRadius: 4,
                        offset: Offset(2, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      "Đăng nhập với Google",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0XFF625F6E),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                     Navigator.push(
                       context, MaterialPageRoute(
                         builder: (context) => Signup()));
                  },
                  child: Container(
                    // margin: const EdgeInsets.only(top: 20, left: 220),
                    child: Text(
                      "Đăng ký tài khoản mới",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xffdfe1e7),
                          decoration: TextDecoration.underline),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  signin ( email, password) async{
    final response = await http.post(
      Uri.parse('http://ttdl-nodejs-api.herokuapp.com/api/auth/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{  
        'email': email,
        'password': password
      }),
    );
    print(response.body);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var parse = jsonDecode(response.body);
    print (parse["token"]);
    await prefs.setString('token', parse["token"]);
    //if (response.statusCode == 201) {
    //} else {
    //  throw Exception('Failed to create album.');
    //}
  }
}
