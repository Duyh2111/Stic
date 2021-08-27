import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:untitled1/ForgotPassword/ForrgotPassword.dart';
import 'package:untitled1/homePage/Navigation.dart';

class MyHomePage extends StatelessWidget {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  String? validatePassword(String value) {
    if (value.isEmpty) {
      return "* Required";
    } else if (value.length < 6) {
      return "Password should be atleast 6 characters";
    } else if (value.length > 15) {
      return "Password should not be greater than 15 characters";
    } else
      return null;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double contWidth = size.width * 0.90;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: Image.asset("assets/images/Bgr.png").image,
              fit: BoxFit.fill),
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 170),
              child: Text(
                "Đăng nhập",
                style: TextStyle(
                  color: Color(0xFF0f45e7),
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: 40),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Form(
                key: formkey,
                child: Column(
                  children: [
                    Container(
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffF6F6F6)),
                      child: TextFormField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xffE8E8E8), width: 1.0),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              border: const OutlineInputBorder(),
                              labelText: 'Email',
                              hintText:
                                  'Enter valid email id as abc@gmail.com'),
                          validator: MultiValidator([
                            RequiredValidator(errorText: "* Required"),
                            EmailValidator(errorText: "Enter valid email id"),
                          ])),
                    ),
                    SizedBox(height: 15),
                    Container(
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffF6F6F6)),
                      child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xffE8E8E8), width: 1.0),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              border: const OutlineInputBorder(),
                              labelText: 'Password',
                              hintText: 'Enter secure password'),
                          validator: MultiValidator([
                            RequiredValidator(errorText: "* Required"),
                            MinLengthValidator(6,
                                errorText:
                                    "Password should be atleast 6 characters"),
                            MaxLengthValidator(15,
                                errorText:
                                    "Password should not be greater than 15 characters")
                          ])
                          //validatePassword,        //Function to check validation
                          ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 170),
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ForgotPassword()));
                        },
                        child: Text(
                          'Quên mật khẩu?',
                          style:
                              TextStyle(color: Color(0xff625F6E), fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(height: 48),
                    Container(
                      height: 52,
                      width: 223,
                      padding:
                          EdgeInsets.symmetric(horizontal: 32, vertical: 14),
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 2.0, color: const Color(0xFF5479e7)),
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xff6B8AE7),
                      ),
                      child: FlatButton(
                        onPressed: () {
                          if (formkey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Processing Data')),
                            );
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => MainScreen()));
                          } else {
                            print("Not Validated");
                          }
                        },
                        child: Text(
                          'Đăng nhập',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24),
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
            SizedBox(height: 24),
            Container(
              width: 339,
              height: 52,
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
            SizedBox(height: 68),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("Chưa có tài khoản?", style: TextStyle(fontSize: 16)),
              SizedBox(width: 2),
              TextButton(
                  onPressed: () {},
                  child: Text("Đăng ký ngay",
                      style: TextStyle(color: Color(0xff6B8AE7), fontSize: 16)))
            ])
          ],
        ),
      ),
    );
  }
}
