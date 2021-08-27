import 'package:flutter/material.dart';
import 'ResetPassword.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:untitled1/OtpScreen/OtpScreen.dart';

class ForgotPassword extends StatelessWidget {
    GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double contWidth = size.width * 0.90;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: Image.asset("assets/images/Backgr.png").image,
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
              SizedBox(height: 30),
              Form(
                key: formkey,
                child: Container(
                        width: 350,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffF6F6F6)),
                        child: TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                labelText: 'Email',
                                hintText:
                                    'Enter valid email id as abc@gmail.com'),
                            validator: MultiValidator([
                              RequiredValidator(errorText: "* Required"),
                              EmailValidator(errorText: "Enter valid email id"),
                            ])),
                      ),
              ),
              SizedBox(height: 90),
              Container(
                      height: 52,
                      width: 223,
                      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 14),
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 2.0, color: const Color(0xFF5479e7)),
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xff6B8AE7),
                    ),
                      child: FlatButton(
                        onPressed: () {
                          if (formkey.currentState!.validate()) {
                        
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => VerifyPhone(phoneNumber: '',)));
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
    );
  }
}
