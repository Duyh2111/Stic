import 'package:flutter/material.dart';
import 'package:untitled1/ForgotPassword/ForrgotPassword.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double contWidth = size.width * 0.90;
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
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xffe8e8e8), width: 1.0),
                        ),
                        hintText: "Email",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 16)),
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
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xffe8e8e8), width: 1.0),
                        ),
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 16)),
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
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context, MaterialPageRoute(builder: (
                    //     context) => HomeScreen()));
                  },
                  child: Container(
                    width: 223,
                    height: 52,
                    margin: const EdgeInsets.only(top: 50, bottom: 35),
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xff6B8AE7),
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
                        "Đăng nhập",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
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
                    // Navigator.push(
                    //   context, MaterialPageRoute(
                    //     builder: (context) => Forgotpassword()));
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
}
