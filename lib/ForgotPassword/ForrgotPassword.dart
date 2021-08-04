import 'package:flutter/material.dart';
import 'ResetPassword.dart';

class ForgotPassword extends StatelessWidget {
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
                  "Quên mật khẩu",
                  style: TextStyle(
                    color: Color(0xFF0f45e7),
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Text(
                  "Vui lòng nhập email của bạn\n vào bên dưới",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff625F6E),
                  ),
                ),
              ),
              Container(
                width: 350,
                margin: const EdgeInsets.only(top: 70.0, bottom: 70.0),
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
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ResetPassword()));
                },
                child: Container(
                  width: 223,
                  height: 52,
                  margin: const EdgeInsets.only(top: 30),
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  decoration: BoxDecoration(
                    border:
                        Border.all(width: 2.0, color: const Color(0xFF5479e7)),
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xff6B8AE7),
                  ),
                  child: Center(
                    child: Text(
                      "Tiếp theo",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
